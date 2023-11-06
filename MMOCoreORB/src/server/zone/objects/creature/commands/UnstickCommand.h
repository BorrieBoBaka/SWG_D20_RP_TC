/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef UNSTICKCOMMAND_H_
#define UNSTICKCOMMAND_H_

#include "server/zone/borrie/BorrieRPG.h"

class UnstickCommand : public QueueCommand {
public:

	UnstickCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		//if (creature != nullptr)
			//creature->error("used /unstick " + arguments.toString());

		/*
string/en/cmd_err.stf	7	unstick_in_progress	Unstick in progress
string/en/cmd_err.stf	8	unstick_request_complete	Unstick complete
string/en/cmd_err.stf	9	unstick_request_cancelled	Unstick request was cancelled
		 */

		if (!creature->checkCooldownRecovery("unstick")) {
			creature->sendSystemMessage("You can't do this yet. Default cooldown is 10 minutes."); //You are too tired to Burst Run.
			return SUCCESS;
		}

		float duration = 30;
		float cooldown = 600;
		int newCooldown = (int)cooldown;

		creature->updateCooldownTimer("unstick", (newCooldown + duration) * 1000);

		//Send to Eisley. 
		creature->sendSystemMessage("Sending you to a safe location");
		creature->switchZone("rp_tatooine", 1110, 0, -63, 0);

		BorrieRPG::BroadcastMessageToArea(creature, creature->getFirstName() + " used unstick on themselves.");

		return SUCCESS;
	}

};

#endif //UNSTICKCOMMAND_H_

