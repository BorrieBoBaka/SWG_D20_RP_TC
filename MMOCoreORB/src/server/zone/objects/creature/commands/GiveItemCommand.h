/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef GIVEITEMCOMMAND_H_
#define GIVEITEMCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/creature/PetManager.h"
#include "server/zone/objects/tangible/pharmaceutical/StimPack.h"

#include "server/zone/objects/tangible/attachment/Attachment.h"
#include "server/zone/objects/tangible/wearables/WearableObject.h"
#include "server/zone/objects/tangible/components/vendor/VendorDataComponent.h"
#include "server/zone/objects/tangible/components/droid/DroidStimpackModuleDataComponent.h"
#include "server/zone/objects/tangible/components/droid/DroidTrapModuleDataComponent.h"
#include "server/zone/objects/creature/ai/AiAgent.h"

class GiveItemCommand : public QueueCommand {
public:

	GiveItemCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		StringTokenizer args(arguments.toString());

		ManagedReference<SceneObject*> object = server->getZoneServer()->getObject(target);

		if (!args.hasMoreTokens())
			return GENERALERROR;

		uint64 targetObjectID = 0;

		try {
			targetObjectID = args.getLongToken();
		} catch (Exception& e) {
			error("could not get long token in " + arguments.toString());
			error(e.getMessage());

			return GENERALERROR;
		}

		ManagedReference<SceneObject*> sceno = server->getZoneServer()->getObject(targetObjectID);

		if (object != nullptr) {

			ManagedReference<SceneObject*> objectsParent = object->getParent().get();

			if (objectsParent == nullptr)
				return GENERALERROR;

			if (!objectsParent->checkContainerPermission(creature, ContainerPermissions::MOVEOUT))
				return GENERALERROR;

			if (!object->checkContainerPermission(creature, ContainerPermissions::MOVECONTAINER))
				return GENERALERROR;

			if (object->isAttachment()) {
				Attachment* attachment = cast<Attachment*>( object.get());

				if (sceno->isWearableObject() && sceno->isASubChildOf(creature)) {
					WearableObject* wearable = cast<WearableObject*>( sceno.get());
					wearable->applyAttachment(creature, attachment);
					return SUCCESS;
				}

			} else if (sceno != nullptr) {
				Locker clocker(sceno, creature);

				if (sceno->isVendor() && sceno->isCreatureObject()) {

					if (object->isWearableObject() || object->isWeaponObject()) {

						CreatureObject* vendor = cast<CreatureObject*>(sceno.get());

						CreatureObject* player = cast<CreatureObject*>(creature);
						if (player->getSkillMod("hiring") < 90) {

							UnicodeString message("@player_structure:wear_noway");
							ChatManager* chatMan = server->getChatManager();
							chatMan->broadcastChatMessage(vendor, message, object->getObjectID(), 0, vendor->getMoodID());
							return GENERALERROR;
						}

						DataObjectComponentReference* data = sceno->getDataObjectComponent();
						if(data == nullptr || data->get() == nullptr || !data->get()->isVendorData()) {
							error("Vendor has no data component");
							return GENERALERROR;
						}

						VendorDataComponent* vendorData = cast<VendorDataComponent*>(data->get());
						if(vendorData == nullptr) {
							error("Vendor has invalid data component");
							return GENERALERROR;
						}

						TangibleObject* clothing = cast<TangibleObject*>(object.get());

						if (creature->getObjectID() != vendorData->getOwnerId())
							return GENERALERROR;

						if(vendor == nullptr || vendor->getZone() == nullptr || vendor->getZone()->getCreatureManager() == nullptr)
							return GENERALERROR;

						if(vendor->getZone()->getCreatureManager()->addWearableItem(vendor, clothing))
							return SUCCESS;
						else
							return GENERALERROR;

					}
				} 
				else if( sceno->isPet() && object->getGameObjectType() == SceneObjectType::FOOD){
					Reference<AiAgent*> aiAgent = sceno.castTo<AiAgent*>();
					if( aiAgent != nullptr ){

						Locker crossLocker(aiAgent, creature);

						PetManager* petManager = aiAgent->getZoneServer()->getPetManager();
						if (petManager == nullptr)
							return GENERALERROR;

						petManager->enqueueOwnerOnlyPetCommand(creature, aiAgent, STRING_HASHCODE("petfeed"), String::valueOf( object->getObjectID() ) );

					}

				}
				else if (sceno->isPet() && sceno->isDroidObject() && object->getGameObjectType() == SceneObjectType::STIMPACK) {
					Reference<DroidObject*> droid = sceno.castTo<DroidObject*>();
					if (droid != nullptr) {
						Locker cross(sceno,creature);
						StimPack* medicine = cast<StimPack*>(object.get());
						if(medicine != nullptr) {
							auto module = droid->getModule("stimpack_module").castTo<DroidStimpackModuleDataComponent*>();
							CreatureObject* player = cast<CreatureObject*>(creature);
							if(module != nullptr)
								module->handleInsertStimpack(player,medicine);
							else
								creature->sendSystemMessage("@pet/droid_modules:not_stimpack_droid");
						} else {
							return GENERALERROR;
						}
					}
				}
				else if(sceno->isPet() && sceno->isDroidObject() && object->isTrapObject()) {
					Reference<DroidObject*> droid = sceno.castTo<DroidObject*>();
					if (droid != nullptr) {
						Locker cross(sceno,creature);
						TangibleObject* trap = cast<TangibleObject*>(object.get());
						if(trap != nullptr) {
							auto module = droid->getModule("trap_module").castTo<DroidTrapModuleDataComponent*>();
							CreatureObject* player = cast<CreatureObject*>(creature);
							if(module != nullptr)
								module->handleInsertTrap(player,trap);
						} else {
							return GENERALERROR;
						}
					}
				}
				else if (sceno->isCreatureObject()) {

					if(!creature->getPlayerObject()->hasGodMode()) {
						creature->sendSystemMessage("You don't have permission to do that.");
						return GENERALERROR;
					}

					CreatureObject* vendor = cast<CreatureObject*>(sceno.get());
					TangibleObject* oldClothing = cast<TangibleObject*>(object.get());

					String objectTemplate = oldClothing->getObjectTemplate()->getFullTemplateString();
					objectTemplate = objectTemplate.replaceAll("shared_", "");

					Reference<SharedObjectTemplate*> shot = TemplateManager::instance()->getTemplate(objectTemplate.hashCode());

					ManagedReference<SceneObject*> inventory = creature->getSlottedObject("inventory");
					if (inventory == nullptr || inventory->isContainerFullRecursive()) {
						creature->sendSystemMessage("Your inventory is full, so the item could not be created.");
						return GENERALERROR;
					}

					TangibleObject* clothing = (vendor->getZoneServer()->createObject(shot->getServerObjectCRC(), 1)).castTo<TangibleObject*>();

					if (clothing == nullptr) {
						creature->sendSystemMessage("The object '" + objectTemplate + "' could not be created because the template could not be found.");
						return GENERALERROR;
					}

					Locker locker(clothing);
					clothing->createChildObjects();

					//Copy Customization Values
					CustomizationVariables* itemCustomVars = oldClothing->getCustomizationVariables();
        			int itemVarSize = itemCustomVars->getSize();

        			for(int j = 0;j<itemVarSize; j++) {
        			   	uint8 key = itemCustomVars->elementAt(j).getKey();
					   	int16 value = itemCustomVars->elementAt(j).getValue();
					   	String valueType = CustomizationIdManager::instance()->getCustomizationVariable(key);
						clothing->setCustomizationVariable(valueType, value, true);
        			} 

					bool wasModified = oldClothing->getStoredString("dm_last_modified") != "";

					if(wasModified) {
						if(oldClothing->isWeaponObject()) {
							WeaponObject* wepo = cast<WeaponObject*>(clothing);
							WeaponObject* origWep = cast<WeaponObject*>(oldClothing);
							wepo->setMinDamage(origWep->getMinDamage());
        					wepo->setMaxDamage(origWep->getMaxDamage());
							wepo->setBonusDamage(origWep->getBonusDamage());
        					wepo->setStoredString("dm_last_modified", creature->getFirstName());
						} else if(oldClothing->isArmorObject()) {
							ArmorObject* armo = cast<ArmorObject*>(clothing);
							armo->setStoredString("dm_last_modified", creature->getFirstName());
						}
					}	

					if (inventory->transferObject(clothing, -1, true)) {
						inventory->broadcastObject(clothing, true);
					} else {
						clothing->destroyObjectFromDatabase(true);
						creature->sendSystemMessage("Error transferring object to inventory.");
					}

					if (vendor == nullptr || vendor->getZone() == nullptr || vendor->getZone()->getCreatureManager() == nullptr) {
						creature->sendSystemMessage("Target creature was not the correct type; or the zone it exists in does not exist.");
						return GENERALERROR;
					}


						

					if (vendor->getZone()->getCreatureManager()->addWearableItem(vendor, clothing)) {
						if(clothing->isWeaponObject()) {
							vendor->setWeapon(cast<WeaponObject*>(clothing), true);
						}
						return SUCCESS;
					} else {
						creature->sendSystemMessage("Could not add wearable item.");
						return GENERALERROR;
					}

					//TangibleObjectImplementation::getSlottedObject("default_weapon").castTo<WeaponObject*>();
						

					/* This is important, and we need to designate if an npc is a RP npc
					String err;
					Locker objLocker(object);
					if (sceno->canAddObject(object, -1, err) == 0) {
						sceno->transferObject(object, -1, true);
					} */
				}
			}
		}


		return SUCCESS;
	}

};

#endif //GIVEITEMCOMMAND_H_
