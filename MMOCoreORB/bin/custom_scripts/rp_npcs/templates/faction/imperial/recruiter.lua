npc_template = {

	title = "an Imperial Recruiter",
	randomName = "human",
	baseTemplates = {"rp_human_male", "rp_human_female"},
	skillTemplates = {"stormtrooper"},
	
	equipmentTemplates = {
		{"rp_human_male", {"faction/imperial/officer"}},
		{"rp_human_female", {"faction/imperial/officer"}},
	},	
	
	customizationTemplates = {
		{"rp_human_male", {"random"}},
		{"rp_human_female", {"random"}},
	},	
	
	customVarOverrides = {
		{"/shared_owner/blend_skinny", 71},
		{"/shared_owner/blend_muscle", 0},
		{"/shared_owner/blend_fat", 0},
		{"height", 1.2},
	}
}