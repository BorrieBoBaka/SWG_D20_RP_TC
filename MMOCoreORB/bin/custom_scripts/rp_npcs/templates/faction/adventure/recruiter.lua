npc_template = {

	title = "an Adventurer Guild Recruiter",
	randomName = "human",
	baseTemplates = {"rp_human_male", "rp_human_female"},
	skillTemplates = {"factional/common/officer"},
	
	equipmentTemplates = {
		{"rp_human_male", {"faction/adventure/recruiter"}},
		{"rp_human_female", {"faction/adventure/recruiter"}},
	},	
	
	customizationTemplates = {
		{"rp_human_male", {"random"}},
		{"rp_human_female", {"random"}},
	},	
}