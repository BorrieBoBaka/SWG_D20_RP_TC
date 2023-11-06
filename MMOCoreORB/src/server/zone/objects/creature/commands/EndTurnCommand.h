/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef ENDTURNCOMMAND_H_
#define ENDTURNCOMMAND_H_

#include "server/zone/borrie/BorCharacter.h"

class EndTurnCommand : public QueueCommand {

public:
	EndTurnCommand(const String& name, ZoneProcessServer* server) : QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (!creature->isPlayerCreature())
			return GENERALERROR;

		ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();

		if (ghost == nullptr)
			return GENERALERROR;

		int adminLevelCheck = ghost->getAdminLevel();

		ManagedReference<SceneObject*> object;
		if (target != 0) {
			object = server->getZoneServer()->getObject(target, false);
		}

		ManagedReference<CreatureObject*> targetCreature;

		if (adminLevelCheck > 0) {
			if (object != nullptr) {
				if (object->isCreatureObject()) {
					targetCreature = object->asCreatureObject();
				} else {
					targetCreature = creature;
				}
			} else {
				targetCreature = creature;
			}			
		} else {
			targetCreature = creature;
		}

		//Inform the turn has ended
		//Apply state rules. 
		//BorCharacter::RemoveAllStates(targetCreature, false);
		if (targetCreature->hasState(CreatureState::BLINDED)) {
			int duration = targetCreature->getStoredInt("state_blind_duration");
			if(duration > 0) {
				targetCreature->setStoredInt("state_blind_duration", duration - 1);
				if(duration - 1 == 0) {
					creature->clearState(CreatureState::BLINDED);
				}
			} else {
				creature->clearState(CreatureState::BLINDED);
			}			
		}

		if (targetCreature->hasState(CreatureState::STUNNED)) {
			int duration = targetCreature->getStoredInt("state_stunned_duration");
			if(duration > 0) {
				targetCreature->setStoredInt("state_stunned_duration", duration - 1);
				if(duration - 1 == 0) {
					creature->clearState(CreatureState::STUNNED);
				}
			} else {
				creature->clearState(CreatureState::STUNNED);
			}	
		}

		if (targetCreature->hasState(CreatureState::IMMOBILIZED)) {
			int duration = targetCreature->getStoredInt("state_immobilized_duration");
			if(duration > 0) {
				targetCreature->setStoredInt("state_immobilized_duration", duration - 1);
				if(duration - 1 == 0) {
					creature->clearState(CreatureState::IMMOBILIZED);
				}
			} else {
				creature->clearState(CreatureState::IMMOBILIZED);
			}	
		}

		if (targetCreature->hasState(CreatureState::ONFIRE)) {
			int duration = targetCreature->getStoredInt("state_onfire_duration");
			if(duration > 0) {
				targetCreature->setStoredInt("state_onfire_duration", duration - 1);
				int damage = BorDice::Roll(2, 4);
				BorCharacter::ModPool(targetCreature, "health", damage * -1, true);      
				if(duration - 1 == 0) {
					creature->clearState(CreatureState::ONFIRE);
				}
			} else {
				creature->clearState(CreatureState::ONFIRE);
			}	
		}

		if (targetCreature->hasState(CreatureState::BLEEDING)) {
			int duration = targetCreature->getStoredInt("state_bleeding_duration");
			if(duration > 0) {
				targetCreature->setStoredInt("state_bleeding_duration", duration - 1);
				int damage = BorDice::Roll(1, 4);
				BorCharacter::ModPool(targetCreature, "health", damage * -1, true);      
				if(duration - 1 == 0) {
					creature->clearState(CreatureState::BLEEDING);
				}
			} else {
				creature->clearState(CreatureState::BLEEDING);
			}	
		}

		//Reset Deflection
		targetCreature->setStoredInt("deflection_count", 0);

		BorrieRPG::BroadcastMessage(targetCreature, "[[" + targetCreature->getFirstName() + " has ended their turn!]]");
		BorCharacter::ApplyEndTurnStateDamages(targetCreature);

		return SUCCESS;
	}

};

#endif 
