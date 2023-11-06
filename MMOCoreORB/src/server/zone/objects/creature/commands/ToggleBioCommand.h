/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef TOGGLEBIOCOMMAND_H_
#define TOGGLEBIOCOMMAND_H_

class ToggleBioCommand : public QueueCommand {

public:
	ToggleBioCommand(const String& name, ZoneProcessServer* server) : QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

        if(creature->isPlayerCreature()) {
            ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();

            ghost->switchBiograpghies();
            creature->sendSystemMessage("You have switched which biography is visible to the public. The other one can only be seen now by Dungeon Masters. This might not immediately update in the UI.");
        }

		return SUCCESS;
	}

};

#endif 
