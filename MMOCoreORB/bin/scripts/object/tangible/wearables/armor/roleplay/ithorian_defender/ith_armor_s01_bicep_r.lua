--Armor template file for Borrie BoBaka's SWGEmu RPG System--


object_tangible_wearables_armor_roleplay_ithorian_defender_ith_armor_s01_bicep_r = object_tangible_wearables_armor_ithorian_defender_shared_ith_armor_s01_bicep_r:new {


	templateType = ARMOROBJECT,


	objectMenuComponent  = "ArmorObjectMenuComponent",


	healthEncumbrance = 0,
	armorEncumbrance = 0,
	mindEncumbrance = 0,


	maxCondition = 200,


	rating = MEDIUM,
	rpskill = 10,


	kinetic = 6,
	energy = 6,
	electricity = 4,
	stun = 2,
	blast = 2,
	heat = 4,
	cold = 4,
	acid = 2,
	lightsaber = -1,
	
	rarity = "Epic",


}


ObjectTemplates:addTemplate(object_tangible_wearables_armor_roleplay_ithorian_defender_ith_armor_s01_bicep_r, "object/tangible/wearables/armor/roleplay/ithorian_defender/ith_armor_s01_bicep_r.iff")
