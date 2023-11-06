object_draft_schematic_roleplay_weapon_lightsaber_pole_lance_saber_bastila = object_draft_schematic_roleplay_weapon_lightsaber_pole_shared_lance_saber_bastila:new {

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

	ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n","craft_weapon_ingredients_n","craft_weapon_ingredients_n","craft_weapon_ingredients_n", "craft_weapon_ingredients_n","craft_weapon_ingredients_n","craft_weapon_ingredients_n"},
	ingredientTitleNames = {"saber_emitter","saber_lense","saber_power_cell","saber_casing","saber_emitter2","saber_lense2","saber_power_cell2","saber_casing2"},
	ingredientSlotType = {1,1,1,1,1,1,1,1},
	resourceTypes = {"object/tangible/item/roleplay/shared_component_saber_emitter.iff","object/tangible/item/roleplay/shared_component_saber_lense.iff","object/tangible/item/roleplay/shared_component_saber_power_cell.iff","object/tangible/item/roleplay/shared_component_saber_casing.iff","object/tangible/item/roleplay/shared_component_saber_emitter.iff","object/tangible/item/roleplay/shared_component_saber_lense.iff","object/tangible/item/roleplay/shared_component_saber_power_cell.iff","object/tangible/item/roleplay/shared_component_saber_casing.iff"},
	resourceQuantities = {1,1,1,1,1,1,1,1},
	contribution = {100,100,100,100,100,100,100,100},

	targetTemplate = "object/weapon/roleplay/lightsaber/double/lance_saber_bastila.iff",

	additionalTemplates = {}

}ObjectTemplates:addTemplate(object_draft_schematic_roleplay_weapon_lightsaber_pole_lance_saber_bastila, "object/draft_schematic/roleplay/weapon/lightsaber_pole/lance_saber_bastila.iff")
