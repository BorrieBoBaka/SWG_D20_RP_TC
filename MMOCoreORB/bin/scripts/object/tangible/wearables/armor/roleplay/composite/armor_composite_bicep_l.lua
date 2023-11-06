--Armor template file for Borrie BoBaka's SWGEmu RPG System--


object_tangible_wearables_armor_roleplay_composite_armor_composite_bicep_l = object_tangible_wearables_armor_composite_shared_armor_composite_bicep_l:new {


	templateType = ARMOROBJECT,


	objectMenuComponent  = "ArmorObjectMenuComponent",


	healthEncumbrance = 0,
	armorEncumbrance = 0,
	mindEncumbrance = 0,


	maxCondition = 300,


	rating = MEDIUM,
	rpskill = 8,


	kinetic = 4,
	energy = 4,
	electricity = 4,
	stun = 4,
	blast = 4,
	heat = 4,
	cold = 4,
	acid = 4,
	lightsaber = -1,
	
	rarity = "Epic",


}


ObjectTemplates:addTemplate(object_tangible_wearables_armor_roleplay_composite_armor_composite_bicep_l, "object/tangible/wearables/armor/roleplay/composite/armor_composite_bicep_l.iff")
