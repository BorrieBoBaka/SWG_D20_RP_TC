/*
				Copyright <SWGEmu>
			Command written by Borrie BoBaka
		See file COPYING for copying conditions.*/

#ifndef RPFPRECOGCOMMAND_H_
#define RPFPRECOGCOMMAND_H_

#include "server/zone/borrie/BorUtil.h"

class RpfprecogCommand : public QueueCommand {

public: 
	RpfprecogCommand(const String& name, ZoneProcessServer* server) : QueueCommand(name, server) {
	
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
		String forcePowerName = "Precognition";
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

#endif //RPFPRECOGCOMMAND_H_