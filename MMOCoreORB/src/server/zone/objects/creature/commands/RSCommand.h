/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef RSCOMMAND_H_
#define RSCOMMAND_H_

#include "server/zone/borrie/BorrieRPG.h"
#include "server/zone/borrie/BorNPC.h"

class RSCommand : public QueueCommand {

public:
	RSCommand(const String& name, ZoneProcessServer* server) : QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
        StringTokenizer args(arguments.toString());
        if (args.hasMoreTokens()) {
			String speech = arguments.toString();
			BorNPC::SpeakThroughNPC(creature, server->getZoneServer()->getObject(target, false), false, speech, BorrieRPG::GetChatTypeID("say"));
		} else {
			creature->sendSystemMessage("Speech command requires you to say something!");
		}

		return SUCCESS;
	}

};

#endif 
