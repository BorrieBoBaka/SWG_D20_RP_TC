--Weapon template file for Borrie BoBaka's SWGEmu RPG System
--Generated by Borrie's RPG Weapon Maker Tool

object_weapon_roleplay_ranged_pistol_antiriot_tangle_gun_7 = object_weapon_ranged_pistol_shared_pistol_tangle:new {

	--[Info]
	customName = "Anti-Riot Tangle Gun 7",

	--[Stats]
	attackType = RANGEDATTACK,

	damageType = STUN,

	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 2, --Type of Die used in Damage
	bonusDamage = 1,

	pointBlankRange = 0,
	pointBlankAccuracy = 5,

	idealRange = 16,
	idealAccuracy = 10,

	maxRange = 86,
	maxRangeAccuracy = 99,
	
	rarity="Uncommon",

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

ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_pistol_antiriot_tangle_gun_7, "object/weapon/roleplay/ranged/pistol/antiriot_tangle_gun_7.iff")