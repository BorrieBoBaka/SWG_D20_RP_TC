/*
 * VehicleObjectImplementation.cpp
 *
 *  Created on: 10/04/2010
 *      Author: victor
 */

#include "server/zone/objects/creature/VehicleObject.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/Zone.h"
#include "server/zone/objects/player/sui/listbox/SuiListBox.h"
#include "server/zone/managers/structure/StructureManager.h"
#include "server/zone/objects/area/ActiveArea.h"
#include "server/zone/objects/region/CityRegion.h"
#include "server/zone/objects/region/Region.h"
#include "server/zone/objects/creature/sui/RepairVehicleSuiCallback.h"
#include "templates/customization/AssetCustomizationManagerTemplate.h"
//added includes for EiF multipassenger
#include "server/zone/objects/group/GroupObject.h"
#include "templates/creature/VehicleObjectTemplate.h"
#include "server/zone/managers/creature/CreatureManager.h"



void VehicleObjectImplementation::fillObjectMenuResponse(ObjectMenuResponse* menuResponse, CreatureObject* player) {
	//EiF additions for multipassenger vehicles
	//checks to see if the player radialing the vehicle is the owner and, if he isn't, if he could possibly get in
	if (linkedCreature != player) {
		ManagedReference<GroupObject*> group = player->getGroup();
		if (group != nullptr) {
			CreatureObject* vehicleOwner = this->linkedCreature.get();
			if (vehicleOwner != nullptr)
				if (group->hasMember(this->linkedCreature.get()) && hasRidingCreature() && hasOpenSeat()) 
					menuResponse->addRadialMenuItem(205, 1, "@pet/pet_menu:menu_enter_exit");
		}
	}
	//end EiF additions
	if (!player->getPlayerObject()->isPrivileged() && linkedCreature != player)
		return;

	menuResponse->addRadialMenuItem(205, 1, "@pet/pet_menu:menu_enter_exit");
	menuResponse->addRadialMenuItem(61, 3, "");

	if (player->getPlayerObject()->isPrivileged() || (checkInRangeGarage() && !isDisabled()))
		menuResponse->addRadialMenuItem(62, 3, "@pet/pet_menu:menu_repair_vehicle"); //Repair Vehicle
}

void VehicleObjectImplementation::fillAttributeList(AttributeListMessage* alm, CreatureObject* object){

	//alm->insertAttribute("armorrating", "@obj_attr_n:armor_pierce_none"); //None

	//StringBuffer kin;
	//kin << Math::getPrecision(getKinetic(),1) << "%";
	//alm->insertAttribute("cat_armor_special_protection.armor_eff_kinetic", kin.toString());

	//StringBuffer ene;
	//ene << Math::getPrecision(getEnergy(),1) << "%";
	//alm->insertAttribute("cat_armor_effectiveness.armor_eff_energy", ene.toString());

	//StringBuffer bla;
	//bla << Math::getPrecision(getBlast(),1) << "%";
	//alm->insertAttribute("cat_armor_effectiveness.armor_eff_blast", bla.toString());

	//StringBuffer stu;
	//stu << Math::getPrecision(getStun(),1) << "%";
	//alm->insertAttribute("cat_armor_effectiveness.armor_eff_stun", stu.toString());

	//StringBuffer lig;
	//lig << Math::getPrecision(getLightSaber(),1) << "%";
	//alm->insertAttribute("cat_armor_effectiveness.armor_eff_restraint", lig.toString());

	//StringBuffer hea;
	//hea << Math::getPrecision(getHeat(),1) << "%";
	//alm->insertAttribute("cat_armor_effectiveness.armor_eff_elemental_heat", hea.toString());

	//StringBuffer col;
	//col << Math::getPrecision(getCold(),1) << "%";
	//alm->insertAttribute("cat_armor_effectiveness.armor_eff_elemental_cold", col.toString());

	//StringBuffer aci;
	//aci << Math::getPrecision(getAcid(),1) << "%";
	//alm->insertAttribute("cat_armor_effectiveness.armor_eff_elemental_acid", aci.toString());

	//StringBuffer ele;
	//ele << Math::getPrecision(getElectricity(),1) << "%";
	//alm->insertAttribute("cat_armor_effectiveness.armor_eff_elemental_electrical", ele.toString());

	ManagedReference<CreatureObject* > linkedCreature = this->linkedCreature.get();
	if( linkedCreature == nullptr )
		return;

	alm->insertAttribute("@obj_attr_n:owner", linkedCreature->getFirstName());

	//EiF addition - add the passenger capacity to the speeder's examine window
	alm->insertAttribute("@obj_attr_n:riders", getPassengerCapacity() + 1);

}

void VehicleObjectImplementation::notifyInsertToZone(Zone* zone) {
	SceneObjectImplementation::notifyInsertToZone(zone);

	if( this->linkedCreature == nullptr )
		return;

	ManagedReference<CreatureObject* > linkedCreature = this->linkedCreature.get();
	if( linkedCreature == nullptr )
		return;

	// Decay customized paint (if any)
	/*
	if (paintCount > 0){

		// Paint starts to fade when there are 4 calls left
		if (paintCount <= 4){

			// Send player notification of decay
			if( paintCount == 1 ){
				linkedCreature->sendSystemMessage("@pet/pet_menu:customization_gone_veh"); // "Your vehicle's customization has completely faded away."
			}
			else{
				linkedCreature->sendSystemMessage("@pet/pet_menu:customization_fading_veh"); // "Your vehicle's customization is fading away."
			}

			// Fade color to white
			String appearanceFilename = getObjectTemplate()->getAppearanceFilename();
			VectorMap<String, Reference<CustomizationVariable*> > variables;
			AssetCustomizationManagerTemplate::instance()->getCustomizationVariables(appearanceFilename.hashCode(), variables, false);
			for(int i = 0; i< variables.size(); ++i){
				String varkey = variables.elementAt(i).getKey();
				if (varkey.contains("color")){
					setCustomizationVariable(varkey, paintCount-1, true); // Palette values 3,2,1,0 are grey->white
				}
			}
		}
		--paintCount;
	}
	*/

}

bool VehicleObjectImplementation::checkInRangeGarage() {
	Reference<SceneObject*> garage = StructureManager::instance()->getInRangeParkingGarage(_this.getReferenceUnsafeStaticCast());

	if (garage == nullptr)
		return false;

	return true;
}


int VehicleObjectImplementation::handleObjectMenuSelect(CreatureObject* player, byte selectedID) {
	if (selectedID == 61 && linkedCreature == player) {
		unlock();

		try {
			ManagedReference<ControlDevice* > strongRef = controlDevice.get();

			if (strongRef != nullptr)
				strongRef->storeObject(player);
		} catch (Exception& e) {

		} catch (...) {
			wlock(player);

			throw;
		}

		wlock(player);
	} else if (selectedID == 62) {
		repairVehicle(player);
	}

	return 0;
}

void VehicleObjectImplementation::sendMessage(BasePacket* msg) {
	ManagedReference<CreatureObject* > linkedCreature = this->linkedCreature.get();

	if (linkedCreature != nullptr && linkedCreature->getParent().get() == _this.getReferenceUnsafeStaticCast())
		linkedCreature->sendMessage(msg);
	else {
#ifdef LOCKFREE_BCLIENT_BUFFERS
		if (!msg->getReferenceCount())
#endif
			delete msg;
	}
}

void VehicleObjectImplementation::repairVehicle(CreatureObject* player) {
	if (!player->getPlayerObject()->isPrivileged()) {
		//Need to check if they are city banned.

		ManagedReference<ActiveArea*> activeArea = getActiveRegion();

		if (activeArea != nullptr && activeArea->isRegion()) {
			Region* region = cast<Region*>( activeArea.get());

			ManagedReference<CityRegion*> gb = region->getCityRegion().get();

			if (gb == nullptr)
				return;

			if (gb->isBanned(player->getObjectID()))  {
				player->sendSystemMessage("@city/city:garage_banned"); //You are city banned and cannot use this garage.
				return;
			}


		if (getConditionDamage() == 0) {
			player->sendSystemMessage("@pet/pet_menu:undamaged_vehicle"); //The targeted vehicle does not require any repairs at the moment.
			return;
		}

		if (isDisabled()) {
			player->sendSystemMessage("@pet/pet_menu:cannot_repair_disabled"); //You may not repair a disabled vehicle.
			return;
		}

		if (!checkInRangeGarage()) {
			player->sendSystemMessage("@pet/pet_menu:repair_unrecognized_garages"); //Your vehicle does not recognize any local garages. Try again in a garage repair zone.
			return;
			}
		}
	}
	sendRepairConfirmTo(player);
}

void VehicleObjectImplementation::sendRepairConfirmTo(CreatureObject* player) {
	ManagedReference<SuiListBox*> listbox = new SuiListBox(player, SuiWindowType::GARAGE_REPAIR);
    listbox->setCallback(new RepairVehicleSuiCallback(getZoneServer()));
	listbox->setPromptTitle("@pet/pet_menu:confirm_repairs_t"); //Confirm Vehicle Repairs
	listbox->setPromptText("@pet/pet_menu:vehicle_repair_d"); //You have chosen to repair your vehicle. Please review the listed details and confirm your selection.
	listbox->setUsingObject(_this.getReferenceUnsafeStaticCast());
	listbox->setCancelButton(true, "@cancel");

	int repairCost = calculateRepairCost(player);
	int totalFunds = player->getBankCredits();
	int tax = 0;

	ManagedReference<CityRegion*> city = getCityRegion().get();
	if(city != nullptr && city->getGarageTax() > 0){
		repairCost += repairCost * city->getGarageTax() / 100;
	}

	listbox->addMenuItem("@pet/pet_menu:vehicle_prompt " + getDisplayedName()); //Vehicle:
	listbox->addMenuItem("@pet/pet_menu:repair_cost_prompt " + String::valueOf(repairCost)); //Repair Cost:
	listbox->addMenuItem("@pet/pet_menu:total_funds_prompt " + String::valueOf(totalFunds)); //Total Funds Available:

	player->getPlayerObject()->addSuiBox(listbox);
	player->sendMessage(listbox->generateMessage());
}

int VehicleObjectImplementation::calculateRepairCost(CreatureObject* player) {
	if (player->getPlayerObject()->isPrivileged())
		return 0;

	return getConditionDamage() * 4;
}

int VehicleObjectImplementation::inflictDamage(TangibleObject* attacker, int damageType, float damage, bool destroy, bool notifyClient, bool isCombatAction) {
	return TangibleObjectImplementation::inflictDamage(attacker, damageType, damage, destroy, notifyClient, isCombatAction);
}

int VehicleObjectImplementation::inflictDamage(TangibleObject* attacker, int damageType, float damage, bool destroy, const String& xp, bool notifyClient, bool isCombatAction) {
	return TangibleObjectImplementation::inflictDamage(attacker, damageType, damage, destroy, xp, notifyClient, isCombatAction);
}

int VehicleObjectImplementation::healDamage(TangibleObject* healer, int damageType, int damage, bool notifyClient) {
	return TangibleObjectImplementation::healDamage(healer, damageType, damage, notifyClient);
}

int VehicleObjectImplementation::notifyObjectDestructionObservers(TangibleObject* attacker, int condition, bool isCombatAction) {
	unlock();

	ManagedReference<CreatureObject* > linkedCreature = this->linkedCreature.get();

	if (linkedCreature != nullptr) {
		if (!isDisabled())
			linkedCreature->sendSystemMessage("@pet/pet_menu:veh_disabled");

		try {
			if (attacker != _this.getReferenceUnsafeStaticCast()) {
				Locker clocker(linkedCreature, attacker);

				linkedCreature->updateCooldownTimer("mount_dismount", 0);
				linkedCreature->executeObjectControllerAction(STRING_HASHCODE("dismount"));

			} else {
				Locker locker(linkedCreature);

				linkedCreature->updateCooldownTimer("mount_dismount", 0);
				linkedCreature->executeObjectControllerAction(STRING_HASHCODE("dismount"));
			}


		} catch (Exception& e) {
		}
	}

	if (attacker != _this.getReferenceUnsafeStaticCast())
		wlock(attacker);
	else
		wlock();

	return CreatureObjectImplementation::notifyObjectDestructionObservers(attacker, condition, false);
}

bool VehicleObject::isVehicleObject() {
	return true;
}

bool VehicleObjectImplementation::isVehicleObject() {
	return true;
}

//EiF additions for multipassenger
//Get the number of passengers a vehicle can hold
int VehicleObjectImplementation::getPassengerCapacity() {
	ManagedReference<TangibleObject*> vehicle = _this.getReferenceUnsafeStaticCast();

	if (vehicle == nullptr)
		return 10;

	Reference<VehicleObjectTemplate*> vehicleTemplate = cast<VehicleObjectTemplate*>(vehicle->getObjectTemplate());

	if (vehicleTemplate == nullptr)
		return 10;

	return vehicleTemplate->getPassengerCapacity();

}


//Return the string used to generate a seat in the vehicle
String VehicleObjectImplementation::getPassengerSeatName() {
	ManagedReference<TangibleObject*> vehicle = _this.getReferenceUnsafeStaticCast();

	if (vehicle == nullptr)
		return "default";

	Reference<VehicleObjectTemplate*> vehicleTemplate = cast<VehicleObjectTemplate*>(vehicle->getObjectTemplate());

	if (vehicleTemplate == nullptr)
		return "error";

	return vehicleTemplate->getPassengerSeatString();

}

//Check for whether a vehicle has a seat available
bool VehicleObjectImplementation::hasOpenSeat() {
	int passengerSeats = getPassengerCapacity();

	if (passengerSeats == 0)
		return false;

	bool openSeat = false;

	for (int i = 1; i <= passengerSeats; ++i){
		String text = "rider";
		text += String::valueOf(i);
		CreatureObject* seat = this->getSlottedObject(text).castTo<CreatureObject*>();
		if (seat == nullptr) {
			openSeat = true;
		}
	}

	return openSeat;
}

//Get the number of an open seat - used for generating a seat for a player
int VehicleObjectImplementation::getOpenSeat() {
	int passengerSeats = getPassengerCapacity();

	if (passengerSeats == 0)
		return 0;

	for (int i = 1; i <= passengerSeats; ++i){
		String text = "rider";
		text += String::valueOf(i);
		CreatureObject* seat = this->getSlottedObject(text).castTo<CreatureObject*>();
		if (seat == nullptr) {
			return i;
		}
	}

	return 0;
}

//Slot a passenger into a vehicle
bool VehicleObjectImplementation::slotPassenger(CreatureObject* passenger) {
	//Get the relevant info to generate a seat, generate it, and slot it into the vehicle
	int seatNumber = getOpenSeat();
	String seat = "passenger_" + getPassengerSeatName() + "_" + String::valueOf(seatNumber);
	Zone* zone = getZone();
	float x = getWorldPositionX();
	float y = getWorldPositionY();
	float z = getWorldPositionZ();
	CreatureManager* creatureManager = zone->getCreatureManager();
	CreatureObject* seatObject = creatureManager->spawnCreature(seat.hashCode(), 0, x, z, y, 0);
	transferObject(seatObject, 4 + seatNumber, true);
	seatObject->setPosition(x, z, y);
	Locker slocker(seatObject);

	//put the passenger into the seat
	Locker plocker(passenger);
	seatObject->transferObject(passenger, 4, true);
	passenger->setState(CreatureState::RIDINGMOUNT);
	passenger->teleport(x, z, y, 0);
	passenger->setPosition(x, z, y);

	//sync
	synchronizeCloseObjects();
	seatObject->synchronizeCloseObjects();
	passenger->synchronizeCloseObjects();
	return true;
}

bool VehicleObjectImplementation::slotEscort(CreatureObject* passenger) {
	//get everything necessary for the passenger seat
	int seatNumber = getOpenSeat();
	String seat = "passenger_" + getPassengerSeatName() + "_" + String::valueOf(seatNumber);
	Zone* zone = getZone();
	float x = getWorldPositionX();
	float y = getWorldPositionY();
	float z = getWorldPositionZ();
	String name = zone->getZoneName();
	CreatureManager* creatureManager = zone->getCreatureManager();

	//spawn seat and slot it in
	CreatureObject* seatObject = creatureManager->spawnCreature(seat.hashCode(), 0, x, z, y, 0);
	Locker slocker(seatObject);
	Locker plocker(passenger, seatObject);
	seatObject->transferObject(passenger, 4, true);
	seatObject->switchZone(name, x, z, y);
	transferObject(seatObject, 4 + seatNumber, true);

	return true;
}




