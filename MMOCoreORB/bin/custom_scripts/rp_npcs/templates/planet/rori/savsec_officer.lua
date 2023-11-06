npc_template = {

	randomName = "human",
	baseTemplates = {"rp_human_male", "rp_human_female"},
	skillTemplates = {"factional/common/officer"},
	
	equipmentTemplates = {
		{"rp_human_male", {"planet/rori/savsec_officer"}},
		{"rp_human_female", {"planet/rori/savsec_officer"}},
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