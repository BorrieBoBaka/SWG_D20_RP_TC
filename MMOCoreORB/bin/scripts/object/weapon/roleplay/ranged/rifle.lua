-------------------------------------------
-- Global Weapon Type Setting
-------------------------------------------
_attackType = RANGEDATTACK

_damageType = ENERGY

_armorPiercing = NONE

_pointBlankRange = 32	--Start of ideal range
_idealRange = 128		--End of ideal range
_maxRange = 180			--Total max range

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

--A280 Blaster Rifle
object_weapon_roleplay_ranged_rifle_a280_blaster_rifle = object_weapon_ranged_rifle_shared_rifle_a280:new {

	--[Info]
	customName = "A280 Blaster Rifle",

	--[Stats]
	damageType = ENERGY,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 8, --Type of Die used in Damage
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

--Berserker Rifle
object_weapon_roleplay_ranged_rifle_berserker_rifle = object_weapon_ranged_rifle_shared_rifle_berserker:new {

	--[Info]
	customName = "Berserker Rifle",

	--[Stats]
	damageType = KINETIC,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 8, --Type of Die used in Damage
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

--Bowcaster
object_weapon_roleplay_ranged_rifle_bowcaster = object_weapon_ranged_rifle_shared_rifle_bowcaster:new {

	--[Info]
	customName = "Bowcaster",

	--[Stats]
	attackType = RANGEDATTACK,

	damageType = KINETIC,

	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 8, --Type of Die used in Damage
	bonusDamage = 4,
	
	noDodgeReaction = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Crusader M-XIV rifle
object_weapon_roleplay_ranged_rifle_crusader_mxiv_rifle = object_weapon_ranged_rifle_shared_rifle_mandalorian:new {

	--[Info]
	customName = "Crusader M-XIV rifle",

	--[Stats]
	damageType = ENERGY,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 8, --Type of Die used in Damage
	bonusDamage = 6,

	primaryAttributeOnly = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Czerka Adventurer
object_weapon_roleplay_ranged_rifle_czerka_adventurer = object_weapon_ranged_rifle_shared_rifle_adventurer:new {

	--[Info]
	customName = "Czerka Adventurer",

	--[Stats]
	damageType = KINETIC,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 2, --Amount of Die used in Damage
	maxDamage = 4, --Type of Die used in Damage
	bonusDamage = 4,
	
	primaryAttributeOnly = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

object_weapon_roleplay_ranged_rifle_dawnsorrow_rifle = object_weapon_ranged_rifle_shared_ep3_loot_dawnsorrow:new {

	--[Info]
	customName = "Dawnsorrow Rifle",

	--[Stats]
	damageType = KINETIC,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 8, --Type of Die used in Damage
	bonusDamage = 8,
	
	noPowerAttack = true,
	noDodgeReaction = true,	
	primaryAttributeOnly = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--DC-15A Rifle
object_weapon_roleplay_ranged_rifle_dc15a_rifle = object_weapon_ranged_rifle_ep3_shared_rifle_dc15:new {

	--[Info]
	customName = "DC-15A Rifle",

	--[Stats]
	damageType = ENERGY,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 10, --Type of Die used in Damage
	bonusDamage = 4,
	
	noDodgeReaction = true,	
	primaryAttributeOnly = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Disrupter Rifle
object_weapon_roleplay_ranged_rifle_disruptor_rifle = object_weapon_ranged_rifle_shared_som_rifle_mustafar_disruptor:new {

	--[Info]
	customName = "Disruptor Rifle",

	--[Stats]
	damageType = LIGHTSABER,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 3, --Amount of Die used in Damage
	maxDamage = 5, --Type of Die used in Damage
	bonusDamage = 5,
	
	noPowerAttack = true,	
	primaryAttributeOnly = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--DLT-19 Heavy Blaster Rifle
object_weapon_roleplay_ranged_rifle_dlt19_heavy_blaster_rifle = object_weapon_ranged_rifle_shared_rifle_deathtroopers:new {

	--[Info]
	customName = "DLT-19 Heavy Blaster Rifle",

	--[Stats]
	damageType = ENERGY,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 8, --Type of Die used in Damage
	bonusDamage = 4,
	
	noDodgeReaction = true,
	primaryAttributeOnly = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Ion Rifle
object_weapon_roleplay_ranged_rifle_ion_rifle = object_weapon_ranged_rifle_shared_rifle_jawa_ion:new {

	--[Info]
	customName = "Ion Rifle",

	--[Stats]
	damageType = ELECTRICITY,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 4, --Type of Die used in Damage
	bonusDamage = 2,
	
	primaryAttributeOnly = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--J-1
object_weapon_roleplay_ranged_rifle_j1_rifle = object_weapon_ranged_rifle_shared_jinkins_j1_rifle:new {

	--[Info]
	customName = "J-1 Rifle",

	--[Stats]
	damageType = KINETIC,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 8, --Type of Die used in Damage
	bonusDamage = 4,
	
	primaryAttributeOnly = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Laser Rifle
object_weapon_roleplay_ranged_rifle_laser_rifle = object_weapon_ranged_rifle_shared_rifle_laser:new {

	--[Info]
	customName = "Laser Rifle",

	--[Stats]
	attackType = RANGEDATTACK,

	damageType = ENERGY,

	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 6, --Type of Die used in Damage
	bonusDamage = 6,
	
	primaryAttributeOnly = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Proton Rifle
object_weapon_roleplay_ranged_rifle_proton_rifle = object_weapon_ranged_rifle_shared_rifle_proton:new {

	--[Info]
	customName = "Proton Rifle",

	--[Stats]
	damageType = COLD,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 7, --Type of Die used in Damage
	bonusDamage = 9,
	
	noPowerAttack = true,
	noDodgeReaction = true,
	primaryAttributeOnly = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--SG-82B Stun Rifle
object_weapon_roleplay_ranged_rifle_sg82b_stun_rifle = object_weapon_ranged_rifle_shared_rifle_sg82:new {

	--[Info]
	customName = "SG-82B Stun Rifle",

	--[Stats]
	damageType = STUN,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 4, --Type of Die used in Damage
	bonusDamage = 2,
	
	primaryAttributeOnly = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--T-21 Light Repeating Rifle
object_weapon_roleplay_ranged_rifle_t21_light_repeating_rifle = object_weapon_ranged_rifle_shared_rifle_t21:new {

	--[Info]
	customName = "T-21 Light Repeating Rifle",

	--[Stats]
	damageType = ENERGY,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 4, --Amount of Die used in Damage
	maxDamage = 3, --Type of Die used in Damage
	bonusDamage = 4,
	
	noPowerAttack = true,
	noDodgeReaction = true,
	primaryAttributeOnly = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Tenloss DXR6 Disruptor Rifle
object_weapon_roleplay_ranged_rifle_tenloss_dxr6_disruptor_rifle = object_weapon_ranged_rifle_shared_rifle_tenloss_dxr6_disruptor_loot:new {

	--[Info]
	customName = "Tenloss DXR6 Disruptor Rifle",

	--[Stats]
	damageType = LIGHTSABER,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 2, --Amount of Die used in Damage
	maxDamage = 6, --Type of Die used in Damage
	bonusDamage = 6,
	
	noPowerAttack = true,
	noDodgeReaction = true,	
	primaryAttributeOnly = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Trandoshan Hunting Rifle
object_weapon_roleplay_ranged_rifle_trandoshan_hunting_rifle = object_weapon_ranged_rifle_ep3_shared_rifle_trando_hunter:new {

	--[Info]
	customName = "Trandoshan Hunting Rifle",

	--[Stats]
	damageType = ENERGY,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 4, --Amount of Die used in Damage
	maxDamage = 3, --Type of Die used in Damage
	bonusDamage = 4,
	
	noPowerAttack = true,
	primaryAttributeOnly = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Tusken Rifle
object_weapon_roleplay_ranged_rifle_tusken_rifle = object_weapon_ranged_rifle_shared_rifle_tusken:new {

	--[Info]
	customName = "Tusken Rifle",

	--[Stats]
	damageType = KINETIC,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 6, --Type of Die used in Damage
	bonusDamage = 4,
	
	noPowerAttack = true,	
	primaryAttributeOnly = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--Vortex Rifle
object_weapon_roleplay_ranged_rifle_vortex_rifle = object_weapon_ranged_rifle_shared_rifle_pvp:new {

	--[Info]
	customName = "Vortex Rifle",

	--[Stats]
	damageType = ENERGY,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 12, --Type of Die used in Damage
	bonusDamage = 4,
	
	noPowerAttack = true,	
	primaryAttributeOnly = true,

	--[Stats]
	attackType = _attackType,
	pointBlankRange = _pointBlankRange,
	pointBlankAccuracy = _pointBlankAccuracy,
	idealRange = _idealRange,
	idealAccuracy = _idealAccuracy,
	maxRange = _maxRange,
	maxRangeAccuracy = _maxRangeAccuracy,
}

--WESTAR-M5 Blaster Rifle
object_weapon_roleplay_ranged_rifle_westarm5_blaster_rifle = object_weapon_ranged_rifle_shared_rifle_westar_m5:new {

	--[Info]
	customName = "WESTAR-M5 Blaster Rifle",

	--[Stats]
	damageType = ENERGY,
	armorPiercing = NONE,

	--Damage (minDamage[d]maxDamage) i.e. (2d20)
	minDamage = 3, --Amount of Die used in Damage
	maxDamage = 3, --Type of Die used in Damage
	bonusDamage = 5,
	
	primaryAttributeOnly = true,

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

ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_rifle_a280_blaster_rifle, "object/weapon/roleplay/ranged/rifle/a280_blaster_rifle.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_rifle_berserker_rifle, "object/weapon/roleplay/ranged/rifle/berserker_rifle.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_rifle_bowcaster, "object/weapon/roleplay/ranged/rifle/bowcaster.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_rifle_crusader_mxiv_rifle, "object/weapon/roleplay/ranged/rifle/crusader_mxiv_rifle.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_rifle_czerka_adventurer, "object/weapon/roleplay/ranged/rifle/czerka_adventurer.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_rifle_dawnsorrow_rifle, "object/weapon/roleplay/ranged/rifle/dawnsorrow_rifle.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_rifle_dc15a_rifle, "object/weapon/roleplay/ranged/rifle/dc15a_rifle.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_rifle_disruptor_rifle, "object/weapon/roleplay/ranged/rifle/disruptor_rifle.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_rifle_dlt19_heavy_blaster_rifle, "object/weapon/roleplay/ranged/rifle/dlt19_heavy_blaster_rifle.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_rifle_ion_rifle, "object/weapon/roleplay/ranged/rifle/ion_rifle.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_rifle_j1_rifle, "object/weapon/roleplay/ranged/rifle/j1_rifle.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_rifle_laser_rifle, "object/weapon/roleplay/ranged/rifle/laser_rifle.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_rifle_proton_rifle, "object/weapon/roleplay/ranged/rifle/proton_rifle.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_rifle_sg82b_stun_rifle, "object/weapon/roleplay/ranged/rifle/sg82b_stun_rifle.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_rifle_t21_light_repeating_rifle, "object/weapon/roleplay/ranged/rifle/t21_light_repeating_rifle.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_rifle_tenloss_dxr6_disruptor_rifle, "object/weapon/roleplay/ranged/rifle/tenloss_dxr6_disruptor_rifle.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_rifle_trandoshan_hunting_rifle, "object/weapon/roleplay/ranged/rifle/trandoshan_hunting_rifle.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_rifle_tusken_rifle, "object/weapon/roleplay/ranged/rifle/tusken_rifle.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_rifle_vortex_rifle, "object/weapon/roleplay/ranged/rifle/vortex_rifle.iff")
ObjectTemplates:addTemplate(object_weapon_roleplay_ranged_rifle_westarm5_blaster_rifle, "object/weapon/roleplay/ranged/rifle/westarm5_blaster_rifle.iff")