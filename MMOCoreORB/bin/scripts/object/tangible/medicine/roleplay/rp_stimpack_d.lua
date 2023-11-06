object_tangible_medicine_roleplay_rp_stimpack_d = object_tangible_medicine_crafted_shared_crafted_stimpack_sm_s1_d:new {
	gameObjectType = 8236,
	templateType = STIMPACK,
	useCount = 10,
	medicineUse = 5,
	effectiveness = 100,
	medicineClass = STIM_D,
	attributes = {0, 3},
	
	--Roleplay Elements
	roleplayStim = true,
	dieType = 5,
	dieCount = 2,
	bonusHealing = 4,
	dieCheck = 14,

	numberExperimentalProperties = {1, 1, 2, 2, 1, 1},
	experimentalProperties = {"XX", "XX", "OQ", "PE", "OQ", "UT", "XX", "XX"},
	experimentalWeights = {1, 1, 2, 1, 2, 1, 1, 1},
	experimentalGroupTitles = {"null", "null", "exp_effectiveness", "exp_charges", "null", "null"},
	experimentalSubGroupTitles = {"null", "null", "power", "charges", "skillmodmin", "hitpoints"},
	experimentalMin = {0, 0, 75, 10, 5, 1000},
	experimentalMax = {0, 0, 100, 20, 5, 1000},
	experimentalPrecision = {0, 0, 0, 0, 0, 0},
	experimentalCombineType = {0, 0, 1, 1, 1, 4},
}

ObjectTemplates:addTemplate(object_tangible_medicine_roleplay_rp_stimpack_d, "object/tangible/medicine/roleplay/rp_stimpack_d.iff")
