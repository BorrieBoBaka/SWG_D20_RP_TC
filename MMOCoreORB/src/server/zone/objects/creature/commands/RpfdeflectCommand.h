/*
				Copyright <SWGEmu>
			Command written by Borrie BoBaka
		See file COPYING for copying conditions.*/

#ifndef RPFDEFLECTCOMMAND_H_
#define RPFDEFLECTCOMMAND_H_

#include "server/zone/borrie/BorUtil.h"

class RpfdeflectCommand : public QueueCommand {

public: 
	RpfdeflectCommand(const String& name, ZoneProcessServer* server) : QueueCommand(name, server) {
	
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
		String forcePowerName = "Deflect";
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

#endif //RPFDEFLECTCOMMAND_H_