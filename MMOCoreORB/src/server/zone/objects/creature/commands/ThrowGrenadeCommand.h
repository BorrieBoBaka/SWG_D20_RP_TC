/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef THROWGRENADECOMMAND_H_
#define THROWGRENADECOMMAND_H_

#include "engine/core/TaskManager.h"
#include "server/zone/borrie/BorrieRPG.h"
#include "server/zone/borrie/BorNPC.h"
#include "server/zone/borrie/BorEffect.h"
#include "server/zone/borrie/BorDM.h"
#include "server/zone/borrie/BorUtil.h"
#include "server/zone/borrie/BorDev.h"
#include "server/zone/borrie/BorCombat.h"
#include "server/zone/packets/object/CombatAction.h"

class ThrowGrenadeCommand : public CombatQueueCommand {
public:

	ThrowGrenadeCommand(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		StringTokenizer tokenizer(arguments.toString());
		if (!tokenizer.hasMoreTokens())
			return INVALIDPARAMETERS;

		try {

			uint64 weaponID = tokenizer.getLongToken();
			Reference<WeaponObject*> grenade = server->getZoneServer()->getObject(weaponID).castTo<WeaponObject*>();
			if (grenade == nullptr)
				return INVALIDPARAMETERS;

			if (!grenade->isThrownWeapon())
				return INVALIDPARAMETERS;

			if (!grenade->isASubChildOf(creature))
				return GENERALERROR;

			ManagedReference<TangibleObject*> targetObject = server->getZoneServer()->getObject(target).castTo<TangibleObject*>();
			if (targetObject == nullptr)
				return GENERALERROR;


			/*
			if (!(targetObject->isAttackableBy(creature)))
				return GENERALERROR;
			*/

			SharedObjectTemplate* templateData = TemplateManager::instance()->getTemplate(grenade->getServerObjectCRC());

			if (templateData == nullptr)
				return GENERALERROR;

			SharedWeaponObjectTemplate* grenadeData = cast<SharedWeaponObjectTemplate*>(templateData);

			if (grenadeData == nullptr)
				return GENERALERROR;

			if(!targetObject->isCreatureObject()) 
				return GENERALERROR;

			ManagedReference<CreatureObject*> targetCreature = targetObject->asCreatureObject();

			int range = creature->getWorldPosition().distanceTo(targetCreature->getWorldPosition());

			if(range > 48) {
				creature->sendSystemMessage("The target is too far away.");
				return GENERALERROR;
			}

			//creature->sendSystemMessage("Goodbye Grenade!");

			String animName = getAnimation(creature, targetObject, grenade, 0x01, 0x00);
			uint32 animCRC = animName.hashCode();

			//BorEffect::PlayCombatAnim(creature, server->getZoneServer()->getObject(target, false), false, animName);

			CombatAction* combatAction = new CombatAction(creature, targetObject, animCRC, 0x01, CombatManager::DEFAULTTRAIL, grenade->getObjectID());
			creature->broadcastMessage(combatAction,true);

			BorCombat::ThrowRoleplayGrenade(creature, targetCreature, creature, grenade);

			// We need to give some time for the combat animation to start playing before destroying the tano
			// otherwise our character will play the wrong animations
			Core::getTaskManager()->scheduleTask([grenade] {
					Locker lock(grenade);
					grenade->decreaseUseCount();
				}, "ThrowGrenadeTanoDecrementTask", 100);

			/*
			UnicodeString args = "combatSpam=" + grenadeData->getCombatSpam() + ";";

			int result = doCombatAction(creature, target, args, grenade);

			if (result == SUCCESS) {
				

				
			}

			*/

			return SUCCESS;

		} catch (Exception& e) {

		}

		return GENERALERROR;
	}

	String getAnimation(TangibleObject* attacker, TangibleObject* defender, WeaponObject* weapon, uint8 hitLocation, int damage) const {
		SharedWeaponObjectTemplate* weaponData = cast<SharedWeaponObjectTemplate*>(weapon->getObjectTemplate());

		if (weaponData == nullptr) {
			warning("Null weaponData in ThrowGrenadeCommand::getAnimation");
			return "";
		}

		String type = weaponData->getAnimationType();
		if (type.isEmpty())
			return "throw_grenade";

		int range = attacker->getWorldPosition().distanceTo(defender->getWorldPosition());

		String distance = "";
		if (range < 10) {
			distance = "_near_";
		} else if (range < 20) {
			distance = "_medium_";
		} else {
			distance = "_far_";
		}

		return "throw_grenade" + distance + type;
	}

	float getCommandDuration(CreatureObject *object, const UnicodeString& arguments) const {
		StringTokenizer tokenizer(arguments.toString());
		uint64 weaponID = tokenizer.getLongToken();

		Reference<WeaponObject*> grenade = server->getZoneServer()->getObject(weaponID).castTo<WeaponObject*>();

		if (grenade != nullptr)
			return CombatManager::instance()->calculateWeaponAttackSpeed(object, grenade, speedMultiplier);
		else
			return defaultTime * speedMultiplier;
	}

};

#endif //THROWGRENADECOMMAND_H_
