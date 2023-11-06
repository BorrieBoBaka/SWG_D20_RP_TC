npc_template = {

	randomName = "human",
	baseTemplates = {"rp_human_male"},
	skillTemplates = {"factional/common/grunt_army"},
	
	equipmentTemplates = {
		{"rp_human_male", {"faction/imperial/grunt_army"}},
	},	
	
	customizationTemplates = {
		{"rp_human_male", {"random"}},
	},	
	
	customVarOverrides = {
		{"/shared_owner/blend_skinny", 71},
		{"/shared_owner/blend_muscle", 0},
		{"/shared_owner/blend_fat", 0},
		{"height", 1.2},
	}
}