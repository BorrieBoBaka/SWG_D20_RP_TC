
#include "server/zone/objects/tangible/pharmaceutical/StimPack.h"
#include "templates/tangible/StimPackTemplate.h"
#include "server/zone/managers/object/ObjectManager.h"
#include "server/zone/packets/scene/AttributeListMessage.h"
#include "templates/params/creature/CreatureAttribute.h"

bool StimPackImplementation::isPetStimPack() {
	return getObjectNameStringIdName().contains("pet_stimpack");
}

bool StimPackImplementation::isDroidRepairKit() {
	return getObjectNameStringIdName().contains("droid_damage_kit");
}

bool StimPackImplementation::isClassA() {
	return getMedicineClass() == StimPackTemplate::STIM_A;
}

bool StimPackImplementation::isClassB() {
	return getMedicineClass() == StimPackTemplate::STIM_B;
}

bool StimPackImplementation::isClassC() {
	return getMedicineClass() == StimPackTemplate::STIM_C;
}

bool StimPackImplementation::isClassD() {
	return getMedicineClass() == StimPackTemplate::STIM_D;
}

bool StimPackImplementation::isClassE() {
	return getMedicineClass() == StimPackTemplate::STIM_E;
}

StimPack* StimPackImplementation::split(int charges) {

	Locker locker(_this.getReferenceUnsafeStaticCast());
	ObjectManager* objectManager = ObjectManager::instance();
	ManagedReference<StimPack*> protoclone = cast<StimPack*>( objectManager->cloneObject(_this.getReferenceUnsafeStaticCast()));
	if (protoclone != nullptr) {
		Locker cloneLocker(protoclone);

		if(protoclone->hasAntiDecayKit()){
			protoclone->removeAntiDecayKit();
		}

		protoclone->setParent(nullptr);
		protoclone->setUseCount(charges);
		decreaseUseCount(charges);
		return protoclone;
	}
	return nullptr;
}

void StimPackImplementation::initializeTransientMembers() {
	TangibleObjectImplementation::initializeTransientMembers();
	StimPackTemplate* stimPackTemplate = templateObject.castTo<StimPackTemplate*>();

	bool wasModified = getStoredString("dm_last_modified") != "";

	if(!wasModified) {
		dieType = stimPackTemplate->getDieType();
		dieCount = stimPackTemplate->getDieCount();
		dieCheck = stimPackTemplate->getDieCheck();
		bonusHealing = stimPackTemplate->getBonusHealing();
		isRoleplayStimpack = stimPackTemplate->isRoleplayStimpack();
	}
}

void StimPackImplementation::fillAttributeList(AttributeListMessage* msg, CreatureObject* object) {
	PharmaceuticalObjectImplementation::fillAttributeList(msg, object);

	if (!isRangedStimPack() && !isDroidRepairKit()) {
		/*Vector<byte> atts = getAttributes();

		if (atts.contains(CreatureAttribute::HEALTH)) {
			msg->insertAttribute("examine_heal_damage_health", Math::getPrecision(effectiveness, 0));
		}

		if (atts.contains(CreatureAttribute::ACTION)) {
			msg->insertAttribute("examine_heal_damage_action", Math::getPrecision(effectiveness, 0));
		}

		if (atts.contains(CreatureAttribute::MIND)) {
			msg->insertAttribute("examine_heal_damage_mind", Math::getPrecision(effectiveness, 0));
		}

		if (!isPetStimPack()) {
			msg->insertAttribute("healing_ability", medicineUseRequired);
		} */
		StringBuffer dmg;
		dmg << dieCount << "d" << dieType;
		msg->insertAttribute("medrp.die", dmg);
		msg->insertAttribute("medrp.meddc", dieCheck);
		msg->insertAttribute("medrp.bonusheal", bonusHealing);

	} else if (isDroidRepairKit()) {
		//msg->insertAttribute("examine_repair_energy", Math::getPrecision(effectiveness, 0));
		StringBuffer dmg;
		dmg << dieCount << "d" << dieType;
		msg->insertAttribute("drdrp.die", dmg);
		msg->insertAttribute("drdrp.drddc", dieCheck);
		msg->insertAttribute("drdrp.bonusheal", bonusHealing);
	}
}

Vector<uint8> StimPackImplementation::getAttributes() {
	if (templateObject->isStimPackTemplate()) {
		StimPackTemplate* stimPackTemplate = templateObject.castTo<StimPackTemplate*>();

		return stimPackTemplate->getAttributes();
	}

	Vector<uint8> vec;

	return vec;
}
