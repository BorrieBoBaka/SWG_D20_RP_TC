/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef TOGGLEGRIPCOMMAND_H_
#define TOGGLEGRIPCOMMAND_H_

class ToggleGripCommand : public QueueCommand {

public:
	ToggleGripCommand(const String& name, ZoneProcessServer* server) : QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		return SUCCESS;
	}

};

#endif 
