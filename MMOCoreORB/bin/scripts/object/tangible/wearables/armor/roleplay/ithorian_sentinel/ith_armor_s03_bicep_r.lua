--Armor template file for Borrie BoBaka's SWGEmu RPG System--


object_tangible_wearables_armor_roleplay_ithorian_sentinel_ith_armor_s03_bicep_r = object_tangible_wearables_armor_ithorian_sentinel_shared_ith_armor_s03_bicep_r:new {


	templateType = ARMOROBJECT,


	objectMenuComponent  = "ArmorObjectMenuComponent",


	healthEncumbrance = 0,
	armorEncumbrance = 0,
	mindEncumbrance = 0,


	maxCondition = 200,


	rating = LIGHT,
	rpskill = 4,


	kinetic = 4,
	energy = 4,
	electricity = 2,
	stun = 0,
	blast = 0,
	heat = 2,
	cold = 2,
	acid = 0,
	lightsaber = -1,
	
	rarity = "Rare",


}


ObjectTemplates:addTemplate(object_tangible_wearables_armor_roleplay_ithorian_sentinel_ith_armor_s03_bicep_r, "object/tangible/wearables/armor/roleplay/ithorian_sentinel/ith_armor_s03_bicep_r.iff")
