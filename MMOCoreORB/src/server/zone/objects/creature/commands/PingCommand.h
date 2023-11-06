/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef PINGCOMMAND_H_
#define PINGCOMMAND_H_

#include "server/zone/borrie/BorrieRPG.h"

class PingCommand : public QueueCommand {

public:
	PingCommand(const String& name, ZoneProcessServer* server) : QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
        if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (!creature->isPlayerCreature())
			return GENERALERROR;

        ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();

		if (ghost == nullptr)
			return GENERALERROR;

        ManagedReference<SceneObject*> object;
        if (target != 0) {
			object = server->getZoneServer()->getObject(target, false);
        } else {
            object = creature;
        }     

        if(!object->isCreatureObject())
            object = creature;

        ManagedReference<CreatureObject*> targetCreature = object->asCreatureObject();

        
        String myName = creature->getFirstName();
        String targetName = targetCreature->getFirstName();

        auto targetPos = creature->getWorldPosition();
        float x = targetPos.getX();
        float y = targetPos.getY();

        Time currentTime;

        //<Name> pings <Target Name> at position <x>, <y>.
        BorrieRPG::BroadcastMessageToArea(creature, "["+currentTime.getFormattedTime()+"] " + myName + " pings " + targetName + " at position " + String::valueOf(x) + ", " + String::valueOf(y));

		return SUCCESS;
	}

};

#endif 
