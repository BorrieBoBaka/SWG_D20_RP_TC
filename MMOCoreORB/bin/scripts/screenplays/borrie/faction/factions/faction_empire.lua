faction = {
	name = "Galactic Empire",
	tag = "empire",
	adjective = "Imperial",
	color = "#00FFFF",
	morality = {80, -80}, --[LAW: -100/100, GOOD: -100/100] Lawful Evil
	startInfluence = 80.00, --0 to 100, float
	enemies = {
		"newrepublic",
	},
	allies = {
		"imp_intel",
	},
	training = {
		"military",
		"engineering",
		"medical",
	},
	flags = {
		normal = "object/static/borrie/banner/banner_imp_intel.iff",
		large = "object/static/borrie/banner/banner_imp_intel_large.iff", 
		base = "object/static/borrie/banner/banner_imp_intel_base.iff", 
		flag = "object/static/borrie/banner/banner_imp_intel_flag.iff", 		
	},
	unitGroup = "imperial",
	recruiter_theme = "rt_imperial",
	basePay = 200, --Multiplied by Rank
	ranks = {"Private", "Lance Corporal", "Corporal", "Sergeant", "Master Sergeant"},
	leaderRanks = {"General", "High General", "Admiral", "High Admiral", "Moff", "Grand Moff", "Grand Admiral", "Grand Vizier", "Executor", "Emperor"},
	uniforms = {
		{"faction/empire/uniform/private"}, --Private
		{"none"}, --Lance Corporal
		{"none"}, --Corporal
		{"none"}, --Sergeant
		{"none"}, --Master Sergeant
	},
	
	loadouts = {
		{"faction/empire/loadout/private"}, --Private
		{"none"}, --Lance Corporal
		{"none"}, --Corporal
		{"none"}, --Sergeant
		{"none"}, --Master Sergeant
	},
}

BorFactionManager:addFaction(faction) 