/*
 * SetArmorValueSuiCallback.h
 *
 *  Created on: June 22, 2023
 *      Author: Borrie BoBaka
 */

#ifndef SETARMORVALUESUICALLBACK_H_
#define SETARMORVALUESUICALLBACK_H_
#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/zone/Zone.h"

class SetArmorValueSuiCallback : public SuiCallback {
	ManagedWeakReference<ZoneServer*> server;
	ManagedWeakReference<SceneObject*> target;

public:
	SetArmorValueSuiCallback(ZoneServer* serv, SceneObject* target) : SuiCallback(serv) {
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

        if(!targetObject->isArmorObject())
            return;

        ManagedReference<ArmorObject*> armor = cast<ArmorObject*>(targetObject.get());

		//Perform Task Code Here
        String data = args->get(0).toString();
        StringTokenizer inputData(data);
        String protectionType;
        int newValue = 0;
        if (inputData.hasMoreTokens()) {
			inputData.getStringToken(protectionType);
            if(inputData.hasMoreTokens()) {
                String newValueString;
                inputData.getStringToken(newValueString);
                newValue = Integer::valueOf(newValueString);
                protectionType = protectionType.toLowerCase();
                if(protectionType == "kinetic") {
                    armor->setStoredString("dm_last_modified", creature->getFirstName());
                    armor->setKinetic(newValue);
                    creature->sendSystemMessage("Set Kinetic protection level to " + String::valueOf(newValue)); 
                } else if(protectionType == "energy") {
                    armor->setStoredString("dm_last_modified", creature->getFirstName());
                    armor->setEnergy(newValue);
                    creature->sendSystemMessage("Set Energy protection level to " + String::valueOf(newValue)); 
                } else if(protectionType == "electricity") {
                    armor->setStoredString("dm_last_modified", creature->getFirstName());
                    armor->setElectricity(newValue);
                    creature->sendSystemMessage("Set Electricity protection level to " + String::valueOf(newValue)); 
                } else if(protectionType == "stun") {
                    armor->setStoredString("dm_last_modified", creature->getFirstName());
                    armor->setStun(newValue);
                    creature->sendSystemMessage("Set Stun protection level to " + String::valueOf(newValue)); 
                } else if(protectionType == "blast") {
                    armor->setStoredString("dm_last_modified", creature->getFirstName());
                    armor->setBlast(newValue);
                    creature->sendSystemMessage("Set Blast protection level to " + String::valueOf(newValue)); 
                } else if(protectionType == "heat") {
                    armor->setStoredString("dm_last_modified", creature->getFirstName());
                    armor->setHeat(newValue);
                    creature->sendSystemMessage("Set Heat protection level to " + String::valueOf(newValue)); 
                } else if(protectionType == "cold") {
                    armor->setStoredString("dm_last_modified", creature->getFirstName());
                    armor->setCold(newValue);
                    creature->sendSystemMessage("Set Cold protection level to " + String::valueOf(newValue)); 
                } else if(protectionType == "acid") {
                    armor->setStoredString("dm_last_modified", creature->getFirstName());
                    armor->setAcid(newValue);
                    creature->sendSystemMessage("Set Acid protection level to " + String::valueOf(newValue)); 
                } else {
                    creature->sendSystemMessage("Invalid protection type: Options are kinetic, energy, electricity, stun, blast, heat, cold, and acid. You input \"" + protectionType + "\"");
                }
            } else {
                creature->sendSystemMessage("You must specify a value for this protection.");
            }
		}
	}
};

#endif /* SETARMORVALUESUICALLBACK_H_ */