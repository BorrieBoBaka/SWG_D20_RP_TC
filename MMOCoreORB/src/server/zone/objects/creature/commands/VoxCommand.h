/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef VOXCOMMAND_H_
#define VOXCOMMAND_H_

class VoxCommand : public QueueCommand {

public:
	VoxCommand(const String& name, ZoneProcessServer* server) : QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		return SUCCESS;
	}

};

#endif 
