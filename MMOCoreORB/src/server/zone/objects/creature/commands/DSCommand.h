/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef DSCOMMAND_H_
#define DSCOMMAND_H_

#include "server/zone/borrie/BorrieRPG.h"
#include "server/zone/borrie/BorNPC.h"

class DSCommand : public QueueCommand {

public:
	DSCommand(const String& name, ZoneProcessServer* server) : QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
        StringTokenizer args(arguments.toString());
        if (args.hasMoreTokens()) {
			String speech = arguments.toString();
		    BorNPC::SpeakThroughNPC(creature, server->getZoneServer()->getObject(target, false), true, speech, BorrieRPG::GetChatTypeID("say"));
		} else {
			creature->sendSystemMessage("Speech command requires you to say something!");
		}

		return SUCCESS;
	}

};

#endif 
