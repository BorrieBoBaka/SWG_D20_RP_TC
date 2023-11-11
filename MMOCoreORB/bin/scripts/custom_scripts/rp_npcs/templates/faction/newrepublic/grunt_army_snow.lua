npc_template = {

	randomName = "human",
	
	baseTemplates = {"rp_human_male", "rp_human_female"},
	
	skillTemplates = {"factional/common/grunt_army"},
	
	equipmentTemplates = {
		{"rp_human_male", {"faction/newrepublic/grunt_army_snow"}},
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