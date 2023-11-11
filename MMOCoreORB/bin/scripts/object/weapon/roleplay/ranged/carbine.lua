-------------------------------------------
-- Global Weapon Type Setting
-------------------------------------------
_attackType = RANGEDATTACK

_damageType = ENERGY

_armorPiercing = NONE

_pointBlankRange = 16	--Start of ideal range
_idealRange = 64		--End of ideal range
_maxRange = 86			--Total max range

_pointBlankAccuracy = 5	--DC under point blank range
_idealAccuracy = 10		--DC within ideal range
_maxRangeAccuracy = 99	--DC before max range

--Unused junk data
_xpType = "combat_general"
_certificationsRequired = {}
_creatureAccuracyModifiers = {}
_creatureAimModifiers = {}
_defenderDefenseModifiers = {}
_defenderSecondaryDefenseModifiers = {}
_speedModifiers = {}
_damageModifiers = {}
_healthAttackCost = 0
_actionAttackCost = 0
_mindAttackCost = 0
_forceCost = 0
_attackSpeed = 1
_woundsRatio = 1
_numberExperimentalProperties = { 1, 1, 2, 2, 2, 2, 2, 2, 1, 1, 1, 2, 2, 2, 2}
_experimentalProperties = { "XX", "XX", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ", "XX", "XX", "XX", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ"}
_experimentalWeights = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
_experimentalGroupTitles = { "null", "null", "expDamage", "expDamage", "expDamage", "expDamage", "expEffeciency", "exp_durability", "null", "null", "null", "expRange", "expEffeciency", "expEffeciency", "expEffeciency"}
_experimentalSubGroupTitles = { "null", "null", "mindamage", "maxdamage", "attackspeed", "woundchance", "roundsused", "hitpoints", "zerorangemod", "maxrangemod", "midrange", "midrangemod", "attackhealthcost", "attackactioncost", "attackmindcost"}
_experimentalMin = { 0, 0, 28, 67, 4.3, 7, 15, 750, -40, -80, 30, -5, 33, 42, 20}
_experimentalMax = { 0, 0, 52, 124, 3, 13, 45, 1500, -40, -80, 30, 5, 18, 22, 11}
_experimentalPrecision = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
_experimentalCombineType = { 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}

-------------------------------------------
-- Weapon Definitions
-------------------------------------------

--Advanced Laser Carbine
object_weapon_roleplay_ranged_carbine_advanced_laser_carbine = object_weapon_ranged_carbine_shared_carbine_laser_static:new {

	--[Info]
	customName = "Advanced Laser Carbine",
	
	damageType = _damageType,
	armorPiercing = _armorPiercing,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 6, --Type of Die used in Damage
	bonusDamage = 2,
	
	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Alliance Needler Carbine
object_weapon_roleplay_ranged_carbine_alliance_needler_carbine = object_weapon_ranged_carbine_shared_carbine_alliance_needler:new {

	--[Info]
	customName = "Alliance Needler Carbine",

	damageType = KINETIC,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 4, --Type of Die used in Damage
	bonusDamage = 2,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Bothan Bola Carbine
object_weapon_roleplay_ranged_carbine_bothan_bola_carbine = object_weapon_ranged_carbine_shared_carbine_bothan_bola:new {

	--[Info]
	customName = "Bothan Bola Carbine",

	--[Stats]
	damageType = ENERGY,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 4, --Type of Die used in Damage
	bonusDamage = 1,

	pointBlankRange = 4,
	pointBlankAccuracy = 5,

	idealRange = 32,
	idealAccuracy = 10,

	maxRange = 132,
	maxRangeAccuracy = 99,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Charric Carbine
object_weapon_roleplay_ranged_carbine_charric_carbine = object_weapon_ranged_carbine_shared_som_carbine_republic_sfor:new {

	--[Info]
	customName = "Charric Carbine",

	--[Stats]
	damageType = KINETIC,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 2, --Amount of Die used in Damage
	maxDamage = 2, --Type of Die used in Damage
	bonusDamage = 6,
	
	noPowerAttack = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Corestrike Rancor Carbine
object_weapon_roleplay_ranged_carbine_corestrike_rancor_carbine = object_weapon_ranged_carbine_shared_carbine_nym_slugthrower:new {

	--[Info]
	customName = "Corestrike Rancor Carbine",

	--[Stats]
	damageType = KINETIC,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 5, --Type of Die used in Damage
	bonusDamage = 2,
	
	noPowerAttack = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Crusader M-XIII Carbine
object_weapon_roleplay_ranged_carbine_crusader_mxiii_carbine = object_weapon_ranged_carbine_shared_carbine_mandalorian:new {

	--[Info]
	customName = "Crusader M-XIII Carbine",

	--[Stats]
	damageType = ENERGY,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 2, --Amount of Die used in Damage
	maxDamage = 2, --Type of Die used in Damage
	bonusDamage = 6,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--DC-15S
object_weapon_roleplay_ranged_carbine_dc15s_carbine = object_weapon_ranged_carbine_ep3_shared_carbine_dc15:new {

	--[Info]
	customName = "DC-15S Carbine",

	--[Stats]
	damageType = ENERGY,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 5, --Type of Die used in Damage
	bonusDamage = 1,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--E-5
object_weapon_roleplay_ranged_carbine_e5_carbine = object_weapon_ranged_carbine_shared_carbine_e5:new {

	--[Info]
	customName = "E5 Carbine",

	--[Stats]
	damageType = ENERGY,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 5, --Type of Die used in Damage
	bonusDamage = 1,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--E-11
object_weapon_roleplay_ranged_carbine_e11_carbine = object_weapon_ranged_carbine_shared_carbine_e11_mark2:new {

	--[Info]
	customName = "E-11 Carbine",

	--[Stats]
	damageType = ENERGY,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 4, --Type of Die used in Damage
	bonusDamage = 2,
	
	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--EE-3
object_weapon_roleplay_ranged_carbine_ee3_carbine = object_weapon_ranged_carbine_shared_carbine_ee3:new {

	--[Info]
	customName = "EE-3 Carbine",

	--[Stats]
	damageType = HEAT,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 3, --Type of Die used in Damage
	bonusDamage = 3,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Elite Carbine
object_weapon_roleplay_ranged_carbine_elite_carbine = object_weapon_ranged_carbine_shared_carbine_elite:new {

	--[Info]
	customName = "Elite Carbine",

	--[Stats]
	damageType = ENERGY,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 7, --Type of Die used in Damage
	bonusDamage = 1,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Firestar 10-K
object_weapon_roleplay_ranged_carbine_firestar_10k = object_weapon_ranged_carbine_shared_ep3_loot_firestar:new {

	--[Info]
	customName = "Firestar 10-K",

	--[Stats]
	damageType = ENERGY,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 6, --Type of Die used in Damage
	bonusDamage = 2,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Geoniasian Carbine
object_weapon_roleplay_ranged_carbine_geoniasian_carbine = object_weapon_ranged_carbine_shared_carbine_geo:new {

	--[Info]
	customName = "Geoniasian Carbine",

	--[Stats]
	damageType = BLAST,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 2, --Type of Die used in Damage
	bonusDamage = 2,

	noPowerAttack = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Laser Carbine
object_weapon_roleplay_ranged_carbine_laser_carbine = object_weapon_ranged_carbine_shared_carbine_laser:new {

	--[Info]
	customName = "Laser Carbine",

	--[Stats]
	damageType = ENERGY,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 5, --Type of Die used in Damage
	bonusDamage = 2,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--N'Gant-Zarvel 9118 Carbine
object_weapon_roleplay_ranged_carbine_ngantzarvel_9118_carbine = object_weapon_ranged_carbine_shared_carbine_pvp_ngant:new {

	--[Info]
	customName = "N'Gant-Zarvel 9118 Carbine",

	--[Stats]
	damageType = ELECTRICITY,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 6, --Type of Die used in Damage
	bonusDamage = 2,
	
	noPowerAttack = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Proton Carbine
object_weapon_roleplay_ranged_carbine_proton_carbine = object_weapon_ranged_carbine_shared_carbine_proton:new {

	--[Info]
	customName = "Proton Carbine",

	--[Stats]
	damageType = COLD,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 5, --Type of Die used in Damage
	bonusDamage = 5,
	
	noPowerAttack = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--SFOR Republic Carbine
object_weapon_roleplay_ranged_carbine_sfor_republic_carbine = object_weapon_ranged_carbine_shared_som_carbine_republic_sfor:new {

	--[Info]
	customName = "SFOR Republic Carbine",

	--[Stats]
	damageType = ENERGY,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 6, --Type of Die used in Damage
	bonusDamage = 2,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Wookiee Carbine
object_weapon_roleplay_ranged_carbine_wookiee_carbine = object_weapon_ranged_carbine_ep3_shared_carbine_wookiee_bowcaster:new {

	--[Info]
	customName = "Wookiee Carbine",

	--[Stats]
	damageType = KINETIC,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 6, --Type of Die used in Damage
	bonusDamage = 2,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

-------------------------------------------
-- Templates
-------------------------------------------

ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_carbine_advanced_laser_carbine, "object/weapon/roleplay/ranged/carbine/advanced_laser_carbine.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_carbine_alliance_needler_carbine, "object/weapon/roleplay/ranged/carbine/alliance_needler_carbine.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_carbine_bothan_bola_carbine, "object/weapon/roleplay/ranged/carbine/bothan_bola_carbine.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_carbine_charric_carbine, "object/weapon/roleplay/ranged/carbine/charric_carbine.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_carbine_corestrike_rancor_carbine, "object/weapon/roleplay/ranged/carbine/corestrike_rancor_carbine.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_carbine_crusader_mxiii_carbine, "object/weapon/roleplay/ranged/carbine/crusader_mxiii_carbine.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_carbine_dc15s_carbine, "object/weapon/roleplay/ranged/carbine/dc15s_carbine.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_carbine_e5_carbine, "object/weapon/roleplay/ranged/carbine/e5_carbine.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_carbine_e11_carbine, "object/weapon/roleplay/ranged/carbine/e11_carbine.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_carbine_ee3_carbine, "object/weapon/roleplay/ranged/carbine/ee3_carbine.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_carbine_elite_carbine, "object/weapon/roleplay/ranged/carbine/elite_carbine.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_carbine_firestar_10k, "object/weapon/roleplay/ranged/carbine/firestar_10k.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_carbine_geoniasian_carbine, "object/weapon/roleplay/ranged/carbine/geoniasian_carbine.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_carbine_laser_carbine, "object/weapon/roleplay/ranged/carbine/laser_carbine.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_carbine_ngantzarvel_9118_carbine, "object/weapon/roleplay/ranged/carbine/ngantzarvel_9118_carbine.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_carbine_proton_carbine, "object/weapon/roleplay/ranged/carbine/proton_carbine.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_carbine_sfor_republic_carbine, "object/weapon/roleplay/ranged/carbine/sfor_republic_carbine.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_carbine_wookiee_carbine, "object/weapon/roleplay/ranged/carbine/wookiee_carbine.iff")