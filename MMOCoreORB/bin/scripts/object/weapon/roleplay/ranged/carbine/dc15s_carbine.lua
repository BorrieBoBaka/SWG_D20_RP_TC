--Weapon template file for Borrie BoBaka's SWGEmu RPG System
--Generated by Borrie's RPG Weapon Maker Tool

object_weapon_roleplay_ranged_carbine_dc15s_carbine = object_weapon_ranged_carbine_ep3_shared_carbine_dc15:new {

	--[Info]
	customName = "DC-15S Carbine",

	--[Stats]
	attackType = RANGEDATTACK,

	damageType = ENERGY,

	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 5, --Type of Die used in Damage
	bonusDamage = 1,

	pointBlankRange = 4,
	pointBlankAccuracy = 5,

	idealRange = 32,
	idealAccuracy = 10,

	maxRange = 132,
	maxRangeAccuracy = 99,

	--[Unused Elements from original game, included for compatability.]
	xpType = "combat_general",
	certificationsRequired = {},
	creatureAccuracyModifiers = {},
	creatureAimModifiers = {},
	defenderDefenseModifiers = {},
	defenderSecondaryDefenseModifiers = {},
	speedModifiers = {},
	damageModifiers = {},
	healthAttackCost = 0,
	actionAttackCost = 0,
	mindAttackCost = 0,
	forceCost = 0,
	attackSpeed = 1,
	woundsRatio = 1,
	numberExperimentalProperties = { 1, 1, 2, 2, 2, 2, 2, 2, 1, 1, 1, 2, 2, 2, 2},
	experimentalProperties = { "XX", "XX", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ", "XX", "XX", "XX", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ"},
	experimentalWeights = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	experimentalGroupTitles = { "null", "null", "expDamage", "expDamage", "expDamage", "expDamage", "expEffeciency", "exp_durability", "null", "null", "null", "expRange", "expEffeciency", "expEffeciency", "expEffeciency"},
	experimentalSubGroupTitles = { "null", "null", "mindamage", "maxdamage", "attackspeed", "woundchance", "roundsused", "hitpoints", "zerorangemod", "maxrangemod", "midrange", "midrangemod", "attackhealthcost", "attackactioncost", "attackmindcost"},
	experimentalMin = { 0, 0, 28, 67, 4.3, 7, 15, 750, -40, -80, 30, -5, 33, 42, 20},
	experimentalMax = { 0, 0, 52, 124, 3, 13, 45, 1500, -40, -80, 30, 5, 18, 22, 11},
	experimentalPrecision = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	experimentalCombineType = { 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
}

ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_carbine_dc15s_carbine, "object/weapon/roleplay/ranged/carbine/dc15s_carbine.iff")