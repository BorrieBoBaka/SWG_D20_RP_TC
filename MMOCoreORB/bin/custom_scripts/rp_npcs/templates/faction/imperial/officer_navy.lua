npc_template = {

	randomName = "human",
	baseTemplates = {"rp_human_male", "rp_human_female"},
	skillTemplates = {"factional/common/officer_navy"},
	
	equipmentTemplates = {
		{"rp_human_male", {"faction/imperial/officer_navy"}},
		{"rp_human_female", {"faction/imperial/officer_navy"}},
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