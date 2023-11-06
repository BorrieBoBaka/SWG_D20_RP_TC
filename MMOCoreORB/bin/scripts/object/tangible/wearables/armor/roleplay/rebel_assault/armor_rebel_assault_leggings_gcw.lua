--Armor template file for Borrie BoBaka's SWGEmu RPG System--


object_tangible_wearables_armor_roleplay_rebel_assault_armor_rebel_assault_leggings_gcw = object_tangible_wearables_armor_rebel_assault_shared_armor_rebel_assault_leggings_gcw:new {


	templateType = ARMOROBJECT,


	objectMenuComponent  = "ArmorObjectMenuComponent",


	healthEncumbrance = 0,
	armorEncumbrance = 0,
	mindEncumbrance = 0,


	maxCondition = 200,


	rating = MEDIUM,
	rpskill = 8,


	kinetic = 2,
	energy = 6,
	electricity = 0,
	stun = 4,
	blast = 0,
	heat = 0,
	cold = 0,
	acid = 0,
	lightsaber = -1,
	
	rarity="Rare",


}


ObjectTemplates:addTemplate(object_tangible_wearables_armor_roleplay_rebel_assault_armor_rebel_assault_leggings_gcw, "object/tangible/wearables/armor/roleplay/rebel_assault/armor_rebel_assault_leggings_gcw.iff")
