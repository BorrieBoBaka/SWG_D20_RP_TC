object_weapon_melee_sword_sword_lightsaber_adeen = object_weapon_melee_sword_shared_sword_lightsaber_adeen:new {

	playerRaces = { "object/creature/player/bothan_male.iff",
				"object/creature/player/bothan_female.iff",
				"object/creature/player/human_male.iff",
				"object/creature/player/human_female.iff",
				"object/creature/player/ithorian_male.iff",
				"object/creature/player/ithorian_female.iff",
				"object/creature/player/moncal_male.iff",
				"object/creature/player/moncal_female.iff",
				"object/creature/player/rodian_male.iff",
				"object/creature/player/rodian_female.iff",
				"object/creature/player/sullustan_male.iff",
				"object/creature/player/sullustan_female.iff",
				"object/creature/player/trandoshan_male.iff",
				"object/creature/player/trandoshan_female.iff",
				"object/creature/player/twilek_male.iff",
				"object/creature/player/twilek_female.iff",
				"object/creature/player/wookiee_male.iff",
				"object/creature/player/wookiee_female.iff",
				"object/creature/player/zabrak_male.iff",
				"object/creature/player/zabrak_female.iff" },

	-- RANGEDATTACK, MELEEATTACK, FORCEATTACK, TRAPATTACK, GRENADEATTACK, HEAVYACIDBEAMATTACK,
	-- HEAVYLIGHTNINGBEAMATTACK, HEAVYPARTICLEBEAMATTACK, HEAVYROCKETLAUNCHERATTACK, HEAVYLAUNCHERATTACK
	attackType = MELEEATTACK,

	-- ENERGY, KINETIC, ELECTRICITY, STUN, BLAST, HEAT, COLD, ACID, FORCE, LIGHTSABER
	damageType = KINETIC,

	-- NONE, LIGHT, MEDIUM, HEAVY
	armorPiercing = NONE,

	-- combat_rangedspecialize_bactarifle, combat_rangedspecialize_rifle, combat_rangedspecialize_pistol, combat_rangedspecialize_heavy, combat_rangedspecialize_carbine
	-- combat_meleespecialize_unarmed, combat_meleespecialize_twohand, combat_meleespecialize_polearm, combat_meleespecialize_onehand, combat_general,
	-- combat_meleespecialize_twohandlightsaber, combat_meleespecialize_polearmlightsaber, combat_meleespecialize_onehandlightsaber
	xpType = "jedi_general",
	
	-- See http://www.ocdsoft.com/files/certifications.xls
	certificationsRequired = { "cert_onehandlightsaber_gen4" },
	-- See http://www.ocdsoft.com/files/accuracy.xls
	creatureAccuracyModifiers = { "onehandlightsaber_accuracy" },

	-- See http://www.ocdsoft.com/files/defense.xls
	defenderDefenseModifiers = { "melee_defense" },

	-- Leave as "dodge" for now, may have additions later
	defenderSecondaryDefenseModifiers = { "saber_block" },

	-- See http://www.ocdsoft.com/files/speed.xls
	speedModifiers = { "onehandlightsaber_speed" },

	-- Leave blank for now
	damageModifiers = { },


	-- The values below are the default values.  To be used for blue frog objects primarily
	healthAttackCost = 22,
	actionAttackCost = 22,
	mindAttackCost = 22,
	forceCost = 0,

	pointBlankRange = 0,
	pointBlankAccuracy = 10,

	idealRange = 3,
	idealAccuracy = 10,

	maxRange = 4,
	maxRangeAccuracy = 10,

	minDamage = 20,
	maxDamage = 90,

	attackSpeed = 3.5,

	woundsRatio = 14,

	noTrade = 1,
	
	childObjects = {
		{templateFile = "object/tangible/inventory/lightsaber_inventory_4.iff", x = 0, z = 0, y = 0, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = 4}
	},

	numberExperimentalProperties = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	experimentalProperties = {"XX", "XX", "SR", "SR", "SR", "SR", "SR", "SR", "SR", "XX", "SR", "XX", "SR", "SR", "SR"},
	experimentalWeights = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	experimentalGroupTitles = {"null", "null", "expDamage", "expDamage", "expDamage", "expDamage", "exp_durability", "expRange", "expRange", "null", "expRange", "null", "expEffeciency", "expEffeciency", "expEffeciency"},
	experimentalSubGroupTitles = {"null", "null", "mindamage", "maxdamage", "attackspeed", "woundchance", "hitpoints", "zerorangemod", "maxrangemod", "midrange", "midrangemod", "maxrange", "attackhealthcost", "attackactioncost", "attackmindcost"},
	experimentalMin = {0, 0, 14, 63, 4.6, 9, 750, 5, 5, 3, 5, 4, 27, 29, 29},
	experimentalMax = {0, 0, 26, 117, 3.2, 18, 1500, 15, 15, 3, 15, 4, 15, 15, 15},
	experimentalPrecision = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	experimentalCombineType = {0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
}

ObjectTemplates:addTemplate(object_weapon_melee_sword_sword_lightsaber_adeen, "object/weapon/melee/sword/sword_lightsaber_adeen.iff")
