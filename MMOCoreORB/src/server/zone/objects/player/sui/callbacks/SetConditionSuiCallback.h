/*
 * SetConditionSuiCallback.h
 *
 *  Created on: June 22, 2023
 *      Author: Borrie BoBaka
 */

#ifndef SETCONDITIONSUICALLBACK_H_
#define SETCONDITIONSUICALLBACK_H_
#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/zone/Zone.h"

class SetConditionSuiCallback : public SuiCallback {
	ManagedWeakReference<ZoneServer*> server;
	ManagedWeakReference<SceneObject*> target;

public:
	SetConditionSuiCallback(ZoneServer* serv, SceneObject* target) : SuiCallback(serv) {
		this->server = serv;
		this->target = target;
	}

	void run(CreatureObject* creature, SuiBox* sui, uint32 eventIndex, Vector<UnicodeString>* args) {
		bool cancelPressed = (eventIndex == 1);

		if(cancelPressed || server == nullptr)
			return;

		ManagedReference<SceneObject*> targetObject = target.get();
		if(targetObject == nullptr)
			return;

		ManagedReference<ZoneServer*> zone = this->server.get();
		if (zone == nullptr)
			return;

		PlayerObject* ghost = creature->getPlayerObject();
		if (ghost == nullptr)
			return;

		//Perform Task Code Here
        if(!targetObject->isTangibleObject())
            return;

        ManagedReference<TangibleObject*> tano = targetObject->asTangibleObject();

        int desiredAmount = Integer::valueOf(args->get(0).toString());

        if(desiredAmount < 0)
            return;

        if(desiredAmount >= tano->getMaxCondition()) {
            tano->setConditionDamage(0);
        } else {
            int remainder = tano->getMaxCondition() - desiredAmount;
            tano->setConditionDamage(remainder);
        }

        creature->sendSystemMessage("Condition Set to " + String::valueOf(desiredAmount));

        
	}
};

#endif /* SETCONDITIONSUICALLBACK_H_ */