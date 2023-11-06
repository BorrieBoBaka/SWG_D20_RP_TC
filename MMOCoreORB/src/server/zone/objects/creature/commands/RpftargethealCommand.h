/*
				Copyright <SWGEmu>
			Command written by Borrie BoBaka
		See file COPYING for copying conditions.*/

#ifndef RPFTARGETHEALCOMMAND_H_
#define RPFTARGETHEALCOMMAND_H_

#include "server/zone/borrie/BorUtil.h"

class RpftargethealCommand : public QueueCommand {

public: 
	RpftargethealCommand(const String& name, ZoneProcessServer* server) : QueueCommand(name, server) {
	
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
		String forcePowerName = "TargetHeal";
		StringTokenizer args(arguments.toString());
		int forcePointInput = -1;
		String forcePointInputString;
		if (args.hasMoreTokens()) {
			args.getStringToken(forcePointInputString);
		}
		if(forcePointInputString == "help") {
			BorUtil::CallScreenplayFunction(creature, "BorForce_" + forcePowerName, "showHelp");
			return SUCCESS;
		}
		forcePointInput = Integer::valueOf(forcePointInputString);
		creature->setStoredInt("force_command_fpi", forcePointInput);
		
		BorUtil::CallScreenplayFunction(creature, "BorForce_" + forcePowerName, "execute");
		return SUCCESS;
	}

};

#endif //RPFTARGETHEALCOMMAND_H_