faction = {
	name = "New Republic",
	tag = "newrepublic",
	adjective = "Republic",
	color = "#FF7400",
	morality = {100, 100}, --[LAW: -100/100, GOOD: -100/100] Lawful Neutral
	startInfluence = 30.00, --0 to 100, float
	enemies = {
		"empire",
		"imp_intel",
	},
	allies = { },
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
	unitGroup = "newrepublic",
	recruiter_theme = "rt_newrepublic",
	basePay = 150, --Multiplied by Rank
	ranks = {"Private", "Lance Corporal", "Corporal", "Sergeant", "Master Sergeant"},
	leaderRanks = {"General", "High General", "Admiral", "High Admiral", "Moff", "Grand Moff", "Grand Admiral", "Grand General", "Right Hand", "Comandant"},
	uniforms = {
		{"none"}, --Private
		{"none"}, --Lance Corporal
		{"none"}, --Corporal
		{"none"}, --Sergeant
		{"none"}, --Master Sergeant
	},
	
	loadouts = {
		{"none"}, --Private
		{"none"}, --Lance Corporal
		{"none"}, --Corporal
		{"none"}, --Sergeant
		{"none"}, --Master Sergeant
	},
}

BorFactionManager:addFaction(faction) 