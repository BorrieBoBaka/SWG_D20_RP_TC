/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef TOGGLEOOCCOMMAND_H_
#define TOGGLEOOCCOMMAND_H_

class ToggleOocCommand : public QueueCommand {

public:
	ToggleOocCommand(const String& name, ZoneProcessServer* server) : QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		return SUCCESS;
	}

};

#endif 
