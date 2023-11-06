/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef CHECKFORCESTATUSCOMMAND_H_
#define CHECKFORCESTATUSCOMMAND_H_

#include "server/zone/managers/jedi/JediManager.h"

class CheckForceStatusCommand : public QueueCommand {
public:

	CheckForceStatusCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		//JediManager::instance()->checkForceStatusCommand(creature);

		int forceLevel = creature->getRpForceLevel();

		if(forceLevel == 0) {
			creature->sendSystemMessage("The force does not speak to you.");
		} else if(forceLevel == 1) {
			creature->sendSystemMessage("You are not yet aware of what you are. Seek out places rich in the Force, or another Force user to become aware of your connection.");
		} else if(forceLevel == 2) {
			creature->sendSystemMessage("The Force is with you, but you do not yet know how to use it. Seek out training to become initiated in your abilities.");
		} else if(forceLevel == 3) {
			creature->sendSystemMessage("Your training has begun. Continue to seek out knowledge, and refine your abilities.");
		} else if(forceLevel == 4) {
			creature->sendSystemMessage("Your training is nearly complete. You command the Force with some proficiency. Complete your training.");
		} else if(forceLevel == 5) {
			creature->sendSystemMessage("You are fully trained and highly skilled in the Force. Spread what you know.");
		} else if(forceLevel == 6) {
			creature->sendSystemMessage("You are a Master of the Force.");
		}



		return SUCCESS;
	}

};

#endif //CHECKFORCESTATUSCOMMAND_H_
