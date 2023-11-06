faction = {
	name = "Vigilant Alliance",
	tag = "vigilant",
	adjective = "Vigilant",
	color = "#FF7400",
	morality = {80, 0}, --[LAW: -100/100, GOOD: -100/100] Lawful Neutral
	startInfluence = 30.00, --0 to 100, float
	enemies = {
		"rebel_wraith",
		"empire",
		"liberty_concord",
		"imp_intel",
	},
	allies = {
		"liberty_concord",
		"firestar_militia",
	},
	training = {
		"military",
		"criminal",
		"medical",
	},
	flags = {
		normal = "object/static/borrie/banner/banner_imp_intel.iff",
		large = "object/static/borrie/banner/banner_imp_intel_large.iff", 
		base = "object/static/borrie/banner/banner_imp_intel_base.iff", 
		flag = "object/static/borrie/banner/banner_imp_intel_flag.iff", 		
	},
	unitGroup = "vigilant",
	recruiter_theme = "rt_vigilant",
	basePay = 100, --Multiplied by Rank
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