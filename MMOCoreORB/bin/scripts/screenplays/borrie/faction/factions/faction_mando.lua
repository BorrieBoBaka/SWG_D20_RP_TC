faction = {
	name = "Mandalorian",
	tag = "mando",
	adjective = "Mandalorian",
	color = "#FFFFFF",
	morality = {0, 0}, --[LAW: -100/100, GOOD: -100/100] Neutral: 0,0
	startInfluence = 50.00, --0 to 100, float
	enemies = {

	},
	allies = {

	},
	training = {
		"military",
		"mandalorian",
	},
	flags = {
		normal = "object/static/borrie/banner/banner_imp_intel.iff",
		large = "object/static/borrie/banner/banner_imp_intel_large.iff", 
		base = "object/static/borrie/banner/banner_imp_intel_base.iff", 
		flag = "object/static/borrie/banner/banner_imp_intel_flag.iff", 		
	},
	unitGroup = "mando",
	recruiter_theme = "rt_mando",
	basePay = 50, --Multiplied by Rank
	ranks = {"Rank I", "Rank II", "Rank III", "Rank IV", "Rank V", "Rank VI", "Rank VII", "Rank VIII", "Rank IX", "Rank X", "Rank XI"},
	leaderRanks = {"Leader"},
	uniforms = {
		{"none"}, --1
		{"none"}, --2
		{"none"}, --3
		{"none"}, --4
		{"none"}, --5
		{"none"}, --6
		{"none"}, --7
		{"none"}, --8
		{"none"}, --9
		{"none"}, --10
		{"none"}, --11
	},
	
	loadouts = {
		{"none"}, --1
		{"none"}, --2
		{"none"}, --3
		{"none"}, --4
		{"none"}, --5
		{"none"}, --6
		{"none"}, --7
		{"none"}, --8
		{"none"}, --9
		{"none"}, --10
		{"none"}, --11
	},
}

BorFactionManager:addFaction(faction) 