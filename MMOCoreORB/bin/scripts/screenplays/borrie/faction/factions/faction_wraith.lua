faction = {
	name = "Rebel Wraith",
	tag = "wraith",
	adjective = "Wraith",
	color = "#FFFFFF",
	morality = {80, 0}, --[LAW: -100/100, GOOD: -100/100] Lawful Neutral
	startInfluence = 30.00, --0 to 100, float
	enemies = {
		"firestar_militia",
		"empire",
		"liberty_concord",
		"imp_intel",
		"liberty_concord",
		"vigilant_alliance",
	},
	allies = {

	},
	training = {
		"espionage",
		"engineering",
		"criminal",
	},
	flags = {
		normal = "object/static/borrie/banner/banner_imp_intel.iff",
		large = "object/static/borrie/banner/banner_imp_intel_large.iff", 
		base = "object/static/borrie/banner/banner_imp_intel_base.iff", 
		flag = "object/static/borrie/banner/banner_imp_intel_flag.iff", 		
	},
	unitGroup = "wraith",
	recruiter_theme = "rt_wraith",
	basePay = 150, --Multiplied by Rank
	ranks = {"Private", "Lance Corporal", "Corporal", "Sergeant", "Master Sergeant", "Sergeant Major", "Lieutenant", "Captain", "Major", "Lt. Colonel", "Colonel"},
	leaderRanks = {"General", "High General", "Admiral", "High Admiral", "Moff", "Grand Moff", "Grand Admiral", "Grand General", "Right Hand", "Comandant"},
	uniforms = {
		{"none"}, --Private
		{"none"}, --Lance Corporal
		{"none"}, --Corporal
		{"none"}, --Sergeant
		{"none"}, --Master Sergeant
		{"none"}, --Sergeant Major
		{"none"}, --Lieuntenant
		{"none"}, --Captain
		{"none"}, --Major
		{"none"}, --Lt. Colonel
		{"none"}, --Colonel
	},
	
	loadouts = {
		{"none"}, --Private
		{"none"}, --Lance Corporal
		{"none"}, --Corporal
		{"none"}, --Sergeant
		{"none"}, --Master Sergeant
		{"none"}, --Sergeant Major
		{"none"}, --Lieuntenant
		{"none"}, --Captain
		{"none"}, --Major
		{"none"}, --Lt. Colonel
		{"none"}, --Colonel
	},
}

BorFactionManager:addFaction(faction) 