object_draft_schematic_roleplay_weapon_lightsaber_sword_saber_marauder = object_draft_schematic_roleplay_weapon_lightsaber_shared_sword_saber_marauder:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Lightsaber",

	craftingToolTab = 2048, -- (See DraftSchematicObjectTemplate.h)
	complexity = 16,
	size = 1,
	factoryCrateType = "object/factory/factory_crate_weapon.iff",

	xpType = "jedi_general",
	xp = 0,

	assemblySkill = "jedi_saber_assembly",
	experimentingSkill = "jedi_saber_experimentation",
	customizationSkill = "jedi_customization",
 	factoryCrateSize = 0,

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n","craft_weapon_ingredients_n","craft_weapon_ingredients_n"},
	ingredientTitleNames = {"saber_emitter","saber_lense","saber_power_cell","saber_casing"},
	ingredientSlotType = {1,1,1,1},
	resourceTypes = {"object/tangible/item/roleplay/shared_component_saber_emitter.iff","object/tangible/item/roleplay/shared_component_saber_lense.iff","object/tangible/item/roleplay/shared_component_saber_power_cell.iff","object/tangible/item/roleplay/shared_component_saber_casing.iff"},
	resourceQuantities = {1,1,1,1},
	contribution = {100,100,100,100},

	targetTemplate = "object/weapon/roleplay/lightsaber/single/1h/sword_saber_marauder.iff",

	additionalTemplates = {}

}ObjectTemplates:addTemplate(object_draft_schematic_roleplay_weapon_lightsaber_sword_saber_marauder, "object/draft_schematic/roleplay/weapon/lightsaber/sword_saber_marauder.iff")
