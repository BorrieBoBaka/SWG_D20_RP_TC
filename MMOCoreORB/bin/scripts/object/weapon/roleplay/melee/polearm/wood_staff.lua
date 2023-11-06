--Weapon template file for Borrie BoBaka's SWGEmu RPG System
--Generated by Borrie's RPG Weapon Maker Tool

object_weapon_roleplay_melee_polearm_wood_staff = object_weapon_melee_polearm_shared_lance_staff_wood_s1:new {

	--[Info]
	customName = "Wood Staff",

	--[Stats]
	attackType = MELEEATTACK,

	damageType = KINETIC,

	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 4, --Type of Die used in Damage
	bonusDamage = 1,

	pointBlankRange = 1,
	pointBlankAccuracy = 5,

	idealRange = 2,
	idealAccuracy = 10,

	maxRange = 4,
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

ObjectTemplates:addTemplate(object_weapon_roleplay_melee_polearm_wood_staff, "object/weapon/roleplay/melee/polearm/wood_staff.iff")