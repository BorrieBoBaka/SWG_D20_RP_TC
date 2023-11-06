/*
 * SetDamageSuiCallback.h
 *
 *  Created on: June 22, 2023
 *      Author: Borrie BoBaka
 */

#ifndef SETDAMAGESUICALLBACK_H_
#define SETDAMAGESUICALLBACK_H_
#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/zone/Zone.h"

class SetDamageSuiCallback : public SuiCallback {
	ManagedWeakReference<ZoneServer*> server;
	ManagedWeakReference<SceneObject*> target;

public:
	SetDamageSuiCallback(ZoneServer* serv, SceneObject* target) : SuiCallback(serv) {
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

        if(!targetObject->isWeaponObject())
            return;

		//Perform Task Code Here
        ManagedReference<WeaponObject*> wepo = targetObject.castTo<WeaponObject*>();

        String input = args->get(0).toString();

        int bonus = 0;

        if(input.contains("+")) {
            StringTokenizer inputSplit(input);
		    inputSplit.setDelimeter("+");
            if (inputSplit.hasMoreTokens()) {
                inputSplit.getStringToken(input);
                if (inputSplit.hasMoreTokens()) {
                    String bonusText;
                    inputSplit.getStringToken(bonusText);
                    bonus = Integer::valueOf(bonusText);
                }
            }
		} 

        StringTokenizer dmgSplit(input);
        int dieCount = 1;
        int dieType = 1;
        dmgSplit.setDelimeter("d");
        if(dmgSplit.hasMoreTokens()) {
            String dieCountString;
            dmgSplit.getStringToken(dieCountString);
            dieCount = Integer::valueOf(dieCountString);
            if(dmgSplit.hasMoreTokens()) {
                String dieTypeString;
                dmgSplit.getStringToken(dieTypeString);
                dieType = Integer::valueOf(dieTypeString);
            }            
        }

        wepo->setMinDamage(dieCount);
        wepo->setMaxDamage(dieType);
        wepo->setStoredString("dm_last_modified", creature->getFirstName());

        if(bonus > 0) {
            wepo->setBonusDamage(bonus);
            creature->sendSystemMessage("Weapon Damage set to " + String::valueOf(dieCount) + "d" + String::valueOf(dieType) + " + " + String::valueOf(bonus));
        } else {
            creature->sendSystemMessage("Weapon Damage set to " + String::valueOf(dieCount) + "d" + String::valueOf(dieType));
        }
	}
};

#endif /* SETDAMAGESUICALLBACK_H_ */