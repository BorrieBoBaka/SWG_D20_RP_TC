--Copyright (C) 2009 <SWGEmu>

--This File is part of Core3.

--This program is free software; you can redistribute
--it and/or modify it under the terms of the GNU Lesser
--General Public License as published by the Free Software
--Foundation; either version 2 of the License,
--or (at your option) any later version.

--This program is distributed in the hope that it will be useful,
--but WITHOUT ANY WARRANTY; without even the implied warranty of
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
--See the GNU Lesser General Public License for
--more details.

--You should have received a copy of the GNU Lesser General
--Public License along with this program; if not, write to
--the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

--Linking Engine3 statically or dynamically with other modules
--is making a combined work based on Engine3.
--Thus, the terms and conditions of the GNU Lesser General Public License
--cover the whole combination.

--In addition, as a special exception, the copyright holders of Engine3
--give you permission to combine Engine3 program with free software
--programs or libraries that are released under the GNU LGPL and with
--code included in the standard release of Core3 under the GNU LGPL
--license (or modified versions of such code, with unchanged license).
--You may copy and distribute such a system following the terms of the
--GNU LGPL for Engine3 and the licenses of the other code concerned,
--provided that you include the source code of that other code when
--and as the GNU LGPL requires distribution of source code.

--Note that people who make modified versions of Engine3 are not obligated
--to grant this special exception for their modified versions;
--it is their choice whether to do so. The GNU Lesser General Public License
--gives permission to release a modified version without this exception;
--this exception also makes it possible to release a modified version
--which carries forward this exception.


object_building_player_shared_construction_structure = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_construction_structure.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/thm_tato_imprv_street_sign_s01.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 1,
	collisionMaterialBlockFlags = 0,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "@player_structure:temporary_structure",

	noBuildRadius = 0,

	objectName = "@player_structure:temporary_structure",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 4003827328,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_construction_structure, "object/building/player/shared_construction_structure.iff")

object_building_player_shared_player_garage_corellia_style_01 = SharedInstallationObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_garage_corellia_style_01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/ply_corl_garage_s01.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 30,
	clientDataFile = "clientdata/building/shared_garage.cdf",
	clientGameObjectType = 4096,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 1,
	collisionMaterialBlockFlags = 0,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:ply_corellia_garage_s01",

	gameObjectType = 4096,

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:ply_corellia_garage_s01",

	noBuildRadius = 0,

	objectName = "@building_name:ply_corellia_garage_s01",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/tangible.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_garage_corellia_style_01.sfp",
	surfaceType = 1,

	targetable = 0,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 3533693421,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/installation/base/shared_installation_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_garage_corellia_style_01, "object/building/player/shared_player_garage_corellia_style_01.iff")

object_building_player_shared_player_garage_naboo_style_01 = SharedInstallationObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_garage_naboo_style_01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/ply_nboo_garage_s01.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 30,
	clientDataFile = "clientdata/building/shared_garage.cdf",
	clientGameObjectType = 4096,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 1,
	collisionMaterialBlockFlags = 0,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:ply_naboo_garage_s01",

	gameObjectType = 4096,

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:ply_naboo_garage_s01",

	noBuildRadius = 0,

	objectName = "@building_name:ply_naboo_garage_s01",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/tangible.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_garage_naboo_style_01.sfp",
	surfaceType = 1,

	targetable = 0,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 2162635930,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/installation/base/shared_installation_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_garage_naboo_style_01, "object/building/player/shared_player_garage_naboo_style_01.iff")

object_building_player_shared_player_garage_tatooine_style_01 = SharedInstallationObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_garage_tatooine_style_01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/ply_tato_garage_s01.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 30,
	clientDataFile = "clientdata/building/shared_garage.cdf",
	clientGameObjectType = 4096,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 1,
	collisionMaterialBlockFlags = 0,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:ply_tatooine_garage_s01",

	gameObjectType = 4096,

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:ply_tatooine_garage_s01",

	noBuildRadius = 0,

	objectName = "@building_name:ply_tatooine_garage_s01",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/tangible.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_garage_tatooine_style_01.sfp",
	surfaceType = 1,

	targetable = 0,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 2075679353,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/installation/base/shared_installation_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_garage_tatooine_style_01, "object/building/player/shared_player_garage_tatooine_style_01.iff")

object_building_player_shared_player_guildhall_corellia_style_01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_guildhall_corellia_style_01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "clientdata/building/shared_association_hall.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_name:association_hall_general",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:association_hall_civilian_corellia",

	noBuildRadius = 0,

	objectName = "@building_name:association_hall_general",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_corl_assoc_hall_civ_s01.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_guildhall_corellia_style_01.sfp",
	surfaceType = 1,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 17,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 1038468412,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_guildhall_corellia_style_01, "object/building/player/shared_player_guildhall_corellia_style_01.iff")

object_building_player_shared_player_guildhall_generic_style_01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_guildhall_generic_style_01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_large_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_name:association_hall_general",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:association_hall_general",

	noBuildRadius = 0,

	objectName = "@building_name:association_hall_general",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_all_assoc_hall_civ_s01.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_guildhall_corellia_style_01.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 17,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 1861851362,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_guildhall_generic_style_01, "object/building/player/shared_player_guildhall_generic_style_01.iff")

object_building_player_shared_player_guildhall_naboo_style_01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_guildhall_naboo_style_01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "clientdata/building/shared_association_hall.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_name:association_hall_general",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:association_hall_civilian_naboo",

	noBuildRadius = 0,

	objectName = "@building_name:association_hall_general",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_nboo_assoc_hall_civ_s01.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_guildhall_naboo_style_01.sfp",
	surfaceType = 3,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 17,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 3197026082,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_guildhall_naboo_style_01, "object/building/player/shared_player_guildhall_naboo_style_01.iff")

object_building_player_shared_player_guildhall_tatooine_style_01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_guildhall_tatooine_style_01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_name:association_hall_general",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:base_housing",

	noBuildRadius = 0,

	objectName = "@building_name:association_hall_general",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_tato_assoc_hall_civ_s01.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_guildhall_tatooine_style_01.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 17,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 2495774376,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_guildhall_tatooine_style_01, "object/building/player/shared_player_guildhall_tatooine_style_01.iff")

object_building_player_shared_player_guildhall_tatooine_style_02 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_guildhall_tatooine_style_02.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_large_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_name:association_hall_general",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_tatt_style01_guildhall",

	noBuildRadius = 0,

	objectName = "@building_name:association_hall_general",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_tato_assoc_hall_civ_s02.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_guildhall_tatooine_style_02.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 21,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 1339414079,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_guildhall_tatooine_style_02, "object/building/player/shared_player_guildhall_tatooine_style_02.iff")

object_building_player_shared_player_house_corellia_large_style_01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_corellia_large_style_01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_large_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:housing_corellia_large_style_1",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_corellia_large_style_1",

	noBuildRadius = 0,

	objectName = "@building_name:housing_corellia_large_style_1",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_corl_house_lg_s01_fp1.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_corellia_large_style_01.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 13,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 2427663942,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_corellia_large_style_01, "object/building/player/shared_player_house_corellia_large_style_01.iff")

object_building_player_shared_player_house_corellia_large_style_02 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_corellia_large_style_02.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_large_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:housing_corellia_large_style_2",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_corellia_large_style_2",

	noBuildRadius = 0,

	objectName = "@building_name:housing_corellia_large_style_2",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_corl_house_lg_s02_fp1.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_corellia_large_style_02.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 10,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 1269079761,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_corellia_large_style_02, "object/building/player/shared_player_house_corellia_large_style_02.iff")

object_building_player_shared_player_house_corellia_medium_style_01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_corellia_medium_style_01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_medium_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:housing_corellia_medium_style_1",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_corellia_medium_style_1",

	noBuildRadius = 0,

	objectName = "@building_name:housing_corellia_medium_style_1",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_corl_house_m_s01_fp1.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_corellia_medium_style_01.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 4,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 4245590836,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_corellia_medium_style_01, "object/building/player/shared_player_house_corellia_medium_style_01.iff")

object_building_player_shared_player_house_corellia_medium_style_02 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_corellia_medium_style_02.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_medium_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:housing_corellia_medium_style_2",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_corellia_medium_style_2",

	noBuildRadius = 0,

	objectName = "@building_name:housing_corellia_medium_style_2",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_corl_house_m_s02_fp1.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_corellia_medium_style_02.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 3,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 639187875,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_corellia_medium_style_02, "object/building/player/shared_player_house_corellia_medium_style_02.iff")

object_building_player_shared_player_house_corellia_small_style_01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_corellia_small_style_01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_small_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:housing_corellia_small_style_1",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_corellia_small_style_1",

	noBuildRadius = 0,

	objectName = "@building_name:housing_corellia_small_style_1",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_corl_house_sm_s01_fp1.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_corellia_small_style_01.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 4,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 2963259888,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_corellia_small_style_01, "object/building/player/shared_player_house_corellia_small_style_01.iff")

object_building_player_shared_player_house_corellia_small_style_01_floorplan_02 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_corellia_small_style_01_floorplan_02.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_small_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:housing_corellia_small_style_1_floorplan_2",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_corellia_small_style_1_floorplan_2",

	noBuildRadius = 0,

	objectName = "@building_name:housing_corellia_small_style_1_floorplan_2",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_corl_house_sm_s01_fp2.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_corellia_small_style_01.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 4,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 4102677864,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_corellia_small_style_01_floorplan_02, "object/building/player/shared_player_house_corellia_small_style_01_floorplan_02.iff")

object_building_player_shared_player_house_corellia_small_style_02 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_corellia_small_style_02.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_small_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:housing_corellia_small_style_2",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_corellia_small_style_2",

	noBuildRadius = 0,

	objectName = "@building_name:housing_corellia_small_style_2",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_corl_house_sm_s02_fp1.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_corellia_small_style_02.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 3,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 1804101991,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_corellia_small_style_02, "object/building/player/shared_player_house_corellia_small_style_02.iff")

object_building_player_shared_player_house_corellia_small_style_02_floorplan_02 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_corellia_small_style_02_floorplan_02.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_small_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:housing_corellia_small_style_2_floorplan_2",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_corellia_small_style_2_floorplan_2",

	noBuildRadius = 0,

	objectName = "@building_name:housing_corellia_small_style_2_floorplan_2",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_corl_house_sm_s02_fp2.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_corellia_small_style_02.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 2,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 1944093248,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_corellia_small_style_02_floorplan_02, "object/building/player/shared_player_house_corellia_small_style_02_floorplan_02.iff")

object_building_player_shared_player_house_generic_large_style_01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_large_style_01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_large_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:housing_general_large_style_1",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_general_large_style_1",

	noBuildRadius = 0,

	objectName = "@building_name:housing_general_large_style_1",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_all_house_lg_s01_fp1.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_generic_large_style_01.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 13,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 2966981875,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_large_style_01, "object/building/player/shared_player_house_generic_large_style_01.iff")

object_building_player_shared_player_house_generic_large_style_02 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_large_style_02.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_large_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:housing_general_large_style_2",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_general_large_style_2",

	noBuildRadius = 0,

	objectName = "@building_name:housing_general_large_style_2",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_all_house_lg_s02_fp1.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_generic_large_style_02.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 10,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 1808737380,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_large_style_02, "object/building/player/shared_player_house_generic_large_style_02.iff")

object_building_player_shared_player_house_generic_medium_style_01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_medium_style_01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_medium_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:housing_general_medium_style_1",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_general_medium_style_1",

	noBuildRadius = 0,

	objectName = "@building_name:housing_general_medium_style_1",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_all_house_m_s01_fp1.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_generic_medium_style_01.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 4,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 244814036,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_medium_style_01, "object/building/player/shared_player_house_generic_medium_style_01.iff")

object_building_player_shared_player_house_generic_medium_style_02 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_medium_style_02.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_medium_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:housing_general_medium_style_2",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_general_medium_style_2",

	noBuildRadius = 0,

	objectName = "@building_name:housing_general_medium_style_2",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_all_house_m_s02_fp1.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_generic_medium_style_01.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 3,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 3581950019,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_medium_style_02, "object/building/player/shared_player_house_generic_medium_style_02.iff")

object_building_player_shared_player_house_generic_small_style_01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_small_style_01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_small_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:housing_general_small_style_1",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_general_small_style_1",

	noBuildRadius = 0,

	objectName = "@building_name:housing_general_small_style_1",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_all_house_sm_s01_fp1.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_generic_small_style_01.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 4,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 2431941445,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_small_style_01, "object/building/player/shared_player_house_generic_small_style_01.iff")

object_building_player_shared_player_house_generic_small_style_01_floorplan_02 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_small_style_01_floorplan_02.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_small_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:housing_general_small_style_1_floorplan_2",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_general_small_style_1_floorplan_2",

	noBuildRadius = 0,

	objectName = "@building_name:housing_general_small_style_1_floorplan_2",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_all_house_sm_s01_fp2.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_generic_small_style_01.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 4,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 4015966289,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_small_style_01_floorplan_02, "object/building/player/shared_player_house_generic_small_style_01_floorplan_02.iff")

object_building_player_shared_player_house_generic_small_style_02 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_small_style_02.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_small_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:housing_general_small_style_2",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_general_small_style_2",

	noBuildRadius = 0,

	objectName = "@building_name:housing_general_small_style_2",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_all_house_sm_s02_fp1.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_generic_small_style_02.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 3,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 1273222098,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_small_style_02, "object/building/player/shared_player_house_generic_small_style_02.iff")

object_building_player_shared_player_house_generic_small_style_02_floorplan_02 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_small_style_02_floorplan_02.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 38,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_small_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:housing_general_small_style_2_floorplan_2",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_general_small_style_2_floorplan_2",

	noBuildRadius = 0,

	objectName = "@building_name:housing_general_small_style_2_floorplan_2",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_all_house_sm_s02_fp2.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_generic_small_style_02.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 2,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 1748479865,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_small_style_02_floorplan_02, "object/building/player/shared_player_house_generic_small_style_02_floorplan_02.iff")

object_building_player_shared_player_house_naboo_large_style_01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_naboo_large_style_01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 36,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_large_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_name:housing_naboo_large",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_naboo_style_1",

	noBuildRadius = 0,

	objectName = "@building_name:housing_naboo_large",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_nboo_house_lg_s01_fp1.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_naboo_large_style_01.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 14,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 1926074883,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_naboo_large_style_01, "object/building/player/shared_player_house_naboo_large_style_01.iff")

object_building_player_shared_player_house_naboo_medium_style_01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_naboo_medium_style_01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 36,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_medium_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_name:housing_naboo_medium",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_naboo_style_1",

	noBuildRadius = 0,

	objectName = "@building_name:housing_naboo_medium",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_nboo_house_m_s01_fp1.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_naboo_medium_style_01.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 7,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 1333906211,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_naboo_medium_style_01, "object/building/player/shared_player_house_naboo_medium_style_01.iff")

object_building_player_shared_player_house_naboo_small_style_01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_naboo_small_style_01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 36,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_small_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_name:housing_naboo_small",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_naboo_style_1",

	noBuildRadius = 0,

	objectName = "@building_name:housing_naboo_small",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_nboo_house_sm_s01_fp1.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_naboo_small_style_01.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 3,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 1390503349,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_naboo_small_style_01, "object/building/player/shared_player_house_naboo_small_style_01.iff")

object_building_player_shared_player_house_naboo_small_style_02 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_naboo_small_style_02.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 36,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_small_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_name:housing_naboo_small",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_naboo_style_1",

	noBuildRadius = 0,

	objectName = "@building_name:housing_naboo_small",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_nboo_house_sm_s02_fp1.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_naboo_small_style_02.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 4,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 2314652962,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_naboo_small_style_02, "object/building/player/shared_player_house_naboo_small_style_02.iff")

object_building_player_shared_player_house_tatooine_large_style_01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tatooine_large_style_01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 36,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_large_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:housing_tatt_style01_large",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_tatt_style01_large",

	noBuildRadius = 0,

	objectName = "@building_name:housing_tatt_style01_large",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_tato_house_lg_s01_fp1.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_tatooine_large_style_01.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 10,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 3018624136,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tatooine_large_style_01, "object/building/player/shared_player_house_tatooine_large_style_01.iff")

object_building_player_shared_player_house_tatooine_medium_style_01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tatooine_medium_style_01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 36,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_medium_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:housing_tatt_style01_med",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_tatt_style01_med",

	noBuildRadius = 0,

	objectName = "@building_name:housing_tatt_style01_med",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_tato_house_m_s01_fp1.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_tatooine_medium_style_01.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 8,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 936693005,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tatooine_medium_style_01, "object/building/player/shared_player_house_tatooine_medium_style_01.iff")

object_building_player_shared_player_house_tatooine_small_style_01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tatooine_small_style_01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 36,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_small_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:housing_tatt_style01_small",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_tatt_style01_small",

	noBuildRadius = 0,

	objectName = "@building_name:housing_tatt_style01_small",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_tato_house_sm_s01_fp1.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_tatooine_small_style_01.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 3,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 2478865214,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tatooine_small_style_01, "object/building/player/shared_player_house_tatooine_small_style_01.iff")

object_building_player_shared_player_house_tatooine_small_style_02 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tatooine_small_style_02.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 36,
	clientDataFile = "clientdata/building/shared_player_house_tatooine_small_style_01.cdf",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:housing_tatt_style01_small",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:housing_tatt_style01_small",

	noBuildRadius = 0,

	objectName = "@building_name:housing_tatt_style01_small",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_tato_house_sm_s02_fp1.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_player_house_tatooine_small_style_02.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 3,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 1222103977,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tatooine_small_style_02, "object/building/player/shared_player_house_tatooine_small_style_02.iff")

object_building_player_shared_player_merchant_tent_style_01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_merchant_tent_style_01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 36,
	clientDataFile = "",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:merchant_tent",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:merchant_tent",

	noBuildRadius = 0,

	objectName = "@building_name:merchant_tent",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_tato_merchant_tent_s01.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_merchant_tent.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 1,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 2671747310,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_merchant_tent_style_01, "object/building/player/shared_player_merchant_tent_style_01.iff")

object_building_player_shared_player_merchant_tent_style_02 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_merchant_tent_style_02.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 36,
	clientDataFile = "",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:merchant_tent",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:merchant_tent",

	noBuildRadius = 0,

	objectName = "@building_name:merchant_tent",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_corl_merchant_tent_s01.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_merchant_tent.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 1,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 1143474297,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_merchant_tent_style_02, "object/building/player/shared_player_merchant_tent_style_02.iff")

object_building_player_shared_player_merchant_tent_style_03 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_merchant_tent_style_03.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 36,
	clientDataFile = "",
	clientGameObjectType = 512,
	collisionActionBlockFlags = 255,
	collisionActionFlags = 255,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@building_detail:merchant_tent",

	gameObjectType = 512,

	interiorLayoutFileName = "",

	locationReservationRadius = 0,
	lookAtText = "@building_lookat:merchant_tent",

	noBuildRadius = 0,

	objectName = "@building_name:merchant_tent",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "appearance/ply_nboo_merchant_tent_s01.pob",

	rangedIntCustomizationVariables = {},

	scale = 0,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 0,
	socketDestinations = {},
	structureFootprintFileName = "footprint/building/player/shared_merchant_tent.sfp",
	surfaceType = 2,

	targetable = 0,
	terrainModificationFileName = "",
	totalCellNumber = 1,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 220557300,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/building/base/shared_base_building.iff", "object/building/base/shared_base_player_building.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_merchant_tent_style_03, "object/building/player/shared_player_merchant_tent_style_03.iff")

object_building_player_shared_player_house_atat = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_atat.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_atat, "object/building/player/shared_player_house_atat.iff")
------------------------------------------------------------------------------------------------------------------------------------
object_building_player_shared_player_house_generic_large_window_s01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_large_window_s01.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_large_window_s01, "object/building/player/shared_player_house_generic_large_window_s01.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_generic_large_window_s02 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_large_window_s02.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_large_window_s02, "object/building/player/shared_player_house_generic_large_window_s02.iff")
------------------------------------------------------------------------------------------------------------------------------------
object_building_player_shared_player_house_generic_medium_windowed = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_medium_windowed.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_medium_windowed, "object/building/player/shared_player_house_generic_medium_windowed.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_generic_medium_windowed_s02 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_medium_windowed_s02.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_medium_windowed_s02, "object/building/player/shared_player_house_generic_medium_windowed_s02.iff")
------------------------------------------------------------------------------------------------------------------------------------
object_building_player_shared_player_house_generic_small_windowed = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_small_windowed.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_small_windowed, "object/building/player/shared_player_house_generic_small_windowed.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_generic_small_window_style_03 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_small_window_style_03.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_small_window_style_03, "object/building/player/shared_player_house_generic_small_window_style_03.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_hangar = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_hangar.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_hangar, "object/building/player/shared_player_house_hangar.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_jabbas_sail_barge = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_jabbas_sail_barge.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_jabbas_sail_barge, "object/building/player/shared_player_house_jabbas_sail_barge.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_jedi_meditation_room = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_jedi_meditation_room.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_jedi_meditation_room, "object/building/player/shared_player_house_jedi_meditation_room.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_mustafar_lg = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_mustafar_lg.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_mustafar_lg, "object/building/player/shared_player_house_mustafar_lg.iff")
------------------------------------------------------------------------------------------------------------------------------------
object_building_player_shared_player_house_naboo_small_window_style_01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_naboo_small_window_style_01.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_naboo_small_window_style_01, "object/building/player/shared_player_house_naboo_small_window_style_01.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_sandcrawler = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_sandcrawler.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_sandcrawler, "object/building/player/shared_player_house_sandcrawler.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_sith_meditation_room = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_sith_meditation_room.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_sith_meditation_room, "object/building/player/shared_player_house_sith_meditation_room.iff")
------------------------------------------------------------------------------------------------------------------------------------
object_building_player_shared_player_house_tatooine_small_window_style_01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tatooine_small_window_style_01.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tatooine_small_window_style_01, "object/building/player/shared_player_house_tatooine_small_window_style_01.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_tcg_8_bespin_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tcg_8_bespin_house.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tcg_8_bespin_house, "object/building/player/shared_player_house_tcg_8_bespin_house.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_tcg_8_yoda_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tcg_8_yoda_house.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tcg_8_yoda_house, "object/building/player/shared_player_house_tcg_8_yoda_house.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_tcg_commando_bunker = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tcg_commando_bunker.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tcg_commando_bunker, "object/building/player/shared_player_house_tcg_commando_bunker.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_tcg_emperors_spire = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tcg_emperors_spire.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tcg_emperors_spire, "object/building/player/shared_player_house_tcg_emperors_spire.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_tcg_rebel_spire = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tcg_rebel_spire.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tcg_rebel_spire, "object/building/player/shared_player_house_tcg_rebel_spire.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_tcg_relaxation_pool = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tcg_relaxation_pool.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tcg_relaxation_pool, "object/building/player/shared_player_house_tcg_relaxation_pool.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_tcg_vehicle_garage = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tcg_vehicle_garage.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tcg_vehicle_garage, "object/building/player/shared_player_house_tcg_vehicle_garage.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_tcg_vip_bunker = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tcg_vip_bunker.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tcg_vip_bunker, "object/building/player/shared_player_house_tcg_vip_bunker.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_tree_house_01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tree_house_01.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tree_house_01, "object/building/player/shared_player_house_tree_house_01.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_wod_ns_hut = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_wod_ns_hut.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_wod_ns_hut, "object/building/player/shared_player_house_wod_ns_hut.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_wod_sm_hut = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_wod_sm_hut.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_wod_sm_hut, "object/building/player/shared_player_house_wod_sm_hut.iff")
------------------------------------------------------------------------------------------------------------------------------------


object_building_player_shared_player_house_yt1300 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_yt1300.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_yt1300, "object/building/player/shared_player_house_yt1300.iff")
------------------------------------------------------------------------------------------------------------------------------------
object_building_player_shared_player_mustafar_house_lg = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_mustafar_house_lg.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_mustafar_house_lg, "object/building/player/shared_player_mustafar_house_lg.iff")
------------------------------------------------------------------------------------------------------------------------------------





object_building_player_shared_atat_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_atat_house.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_atat_house, "object/building/player/shared_atat_house.iff")
--**************************************************************************************************************************************
object_building_player_shared_bespin_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_bespin_house.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_bespin_house, "object/building/player/shared_bespin_house.iff")
--**************************************************************************************************************************************
object_building_player_shared_commando_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_commando_house.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_commando_house, "object/building/player/shared_commando_house.iff")
--**************************************************************************************************************************************
object_building_player_shared_emperors_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_emperors_house.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_emperors_house, "object/building/player/shared_emperors_house.iff")
--**************************************************************************************************************************************
object_building_player_shared_generic_large_window_s01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_generic_large_window_s01.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_generic_large_window_s01, "object/building/player/shared_generic_large_window_s01.iff")
--**************************************************************************************************************************************
object_building_player_shared_generic_large_window_s02 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_generic_large_window_s02.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_generic_large_window_s02, "object/building/player/shared_generic_large_window_s02.iff")
--**************************************************************************************************************************************
object_building_player_shared_generic_medium_window_s01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_generic_medium_window_s01.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_generic_medium_window_s01, "object/building/player/shared_generic_medium_window_s01.iff")
--**************************************************************************************************************************************
object_building_player_shared_generic_medium_window_s02 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_generic_medium_window_s02.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_generic_medium_window_s02, "object/building/player/shared_generic_medium_window_s02.iff")
--**************************************************************************************************************************************
object_building_player_shared_generic_small_window_s01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_generic_small_window_s01.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_generic_small_window_s01, "object/building/player/shared_generic_small_window_s01.iff")
--**************************************************************************************************************************************
object_building_player_shared_generic_small_window_s02 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_generic_small_window_s02.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_generic_small_window_s02, "object/building/player/shared_generic_small_window_s02.iff")
--**************************************************************************************************************************************
object_building_player_shared_hangar_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_hangar_house.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_hangar_house, "object/building/player/shared_hangar_house.iff")
--**************************************************************************************************************************************
object_building_player_shared_jabbas_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_jabbas_house.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_jabbas_house, "object/building/player/shared_jabbas_house.iff")
--**************************************************************************************************************************************
object_building_player_shared_jedi_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_jedi_house.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_jedi_house, "object/building/player/shared_jedi_house.iff")
--**************************************************************************************************************************************








object_building_player_shared_vipbunker_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_vipbunker_house.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_vipbunker_house, "object/building/player/shared_vipbunker_house.iff")
--**************************************************************************************************************************************
object_building_player_shared_musty_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_musty_house.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_musty_house, "object/building/player/shared_musty_house.iff")
--**************************************************************************************************************************************
object_building_player_shared_ns_hut_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_ns_hut.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_ns_hut_house, "object/building/player/shared_ns_hut.iff")
--**************************************************************************************************************************************
object_building_player_shared_rebel_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_rebel_house.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_rebel_house, "object/building/player/shared_rebel_house.iff")
--**************************************************************************************************************************************
object_building_player_shared_relaxation_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_relaxation_house.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_relaxation_house, "object/building/player/shared_relaxation_house.iff")
--**************************************************************************************************************************************
object_building_player_shared_sandcrawler_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_sandcrawler_house.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_sandcrawler_house, "object/building/player/shared_sandcrawler_house.iff")
--**************************************************************************************************************************************
object_building_player_shared_sith_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_sith_house.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_sith_house, "object/building/player/shared_sith_house.iff")
--**************************************************************************************************************************************
object_building_player_shared_sm_hut_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_sm_hut.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_sm_hut_house, "object/building/player/shared_sm_hut.iff")
--**************************************************************************************************************************************
object_building_player_shared_tree_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_tree_house.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_tree_house, "object/building/player/shared_tree_house.iff")
--**************************************************************************************************************************************
object_building_player_shared_vehicle_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_vehicle_house.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_vehicle_house, "object/building/player/shared_vehicle_house.iff")
--**************************************************************************************************************************************
object_building_player_shared_yoda_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_yoda_house.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_yoda_house, "object/building/player/shared_yoda_house.iff")
--**************************************************************************************************************************************
object_building_player_shared_yt1300_house = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_yt1300_house.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_yt1300_house, "object/building/player/shared_yt1300_house.iff")
--**************************************************************************************************************************************
object_building_player_shared_naboo_small_window_s01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_naboo_small_window_s01.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_naboo_small_window_s01, "object/building/player/shared_naboo_small_window_s01.iff")
--**************************************************************************************************************************************
object_building_player_shared_tatooine_small_window_s01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_tatooine_small_window_s01.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_tatooine_small_window_s01, "object/building/player/shared_tatooine_small_window_s01.iff")
--**************************************************************************************************************************************

object_building_player_shared_player_pgc_merchant_tent_s01 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_pgc_merchant_tent_s01.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_pgc_merchant_tent_s01, "object/building/player/shared_player_pgc_merchant_tent_s01.iff")
--**************************************************************************************************************************************
object_building_player_shared_player_guildhall_corellia_style_02 = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_guildhall_corellia_style_02.iff"
}

ObjectTemplates:addClientTemplate(object_building_player_shared_player_guildhall_corellia_style_02, "object/building/player/shared_player_guildhall_corellia_style_02.iff")
------------------------------------------------------------------------------------------------------------------------------------

object_building_player_shared_atat_house_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_atat_house_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_atat_house_dark, "object/building/player/shared_atat_house_dark.iff")
--**************************************************************************************************************************************
object_building_player_shared_bespin_house_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_bespin_house_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_bespin_house_dark, "object/building/player/shared_bespin_house_dark.iff")
--******************************************************************************************************************************************
object_building_player_shared_commando_house_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_commando_house_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_commando_house_dark, "object/building/player/shared_commando_house_dark.iff")
--**********************************************************************************************************************************************
object_building_player_shared_emperors_house_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_emperors_house_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_emperors_house_dark, "object/building/player/shared_emperors_house_dark.iff")
--**********************************************************************************************************************************************
object_building_player_shared_generic_large_window_s01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_generic_large_window_s01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_generic_large_window_s01_dark, "object/building/player/shared_generic_large_window_s01_dark.iff")
--******************************************************************************************************************************************************************
object_building_player_shared_generic_large_window_s02_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_generic_large_window_s02_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_generic_large_window_s02_dark, "object/building/player/shared_generic_large_window_s02_dark.iff")
--******************************************************************************************************************************************************************
object_building_player_shared_generic_medium_window_s01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_generic_medium_window_s01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_generic_medium_window_s01_dark, "object/building/player/shared_generic_medium_window_s01_dark.iff")
--********************************************************************************************************************************************************************
object_building_player_shared_generic_medium_window_s02_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_generic_medium_window_s02_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_generic_medium_window_s02_dark, "object/building/player/shared_generic_medium_window_s02_dark.iff")
--********************************************************************************************************************************************************************
object_building_player_shared_generic_small_window_s01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_generic_small_window_s01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_generic_small_window_s01_dark, "object/building/player/shared_generic_small_window_s01_dark.iff")
--******************************************************************************************************************************************************************
object_building_player_shared_generic_small_window_s02_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_generic_small_window_s02_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_generic_small_window_s02_dark, "object/building/player/shared_generic_small_window_s02_dark.iff")
--******************************************************************************************************************************************************************
object_building_player_shared_hangar_house_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_hangar_house_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_hangar_house_dark, "object/building/player/shared_hangar_house_dark.iff")
--******************************************************************************************************************************************
object_building_player_shared_jabbas_house_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_jabbas_house_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_jabbas_house_dark, "object/building/player/shared_jabbas_house_dark.iff")
--******************************************************************************************************************************************
object_building_player_shared_jedi_house_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_jedi_house_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_jedi_house_dark, "object/building/player/shared_jedi_house_dark.iff")
--**************************************************************************************************************************************
object_building_player_shared_musty_house_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_musty_house_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_musty_house_dark, "object/building/player/shared_musty_house_dark.iff")
--****************************************************************************************************************************************
object_building_player_shared_naboo_small_window_s01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_naboo_small_window_s01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_naboo_small_window_s01_dark, "object/building/player/shared_naboo_small_window_s01_dark.iff")
--**************************************************************************************************************************************************************
object_building_player_shared_ns_hut_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_ns_hut_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_ns_hut_dark, "object/building/player/shared_ns_hut_dark.iff")
--******************************************************************************************************************************
object_building_player_shared_player_guildhall_corellia_style_01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_guildhall_corellia_style_01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_guildhall_corellia_style_01_dark, "object/building/player/shared_player_guildhall_corellia_style_01_dark.iff")
--**************************************************************************************************************************************************************************************
object_building_player_shared_player_guildhall_generic_style_01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_guildhall_generic_style_01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_guildhall_generic_style_01_dark, "object/building/player/shared_player_guildhall_generic_style_01_dark.iff")
--************************************************************************************************************************************************************************************
object_building_player_shared_player_guildhall_naboo_style_01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_guildhall_naboo_style_01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_guildhall_naboo_style_01_dark, "object/building/player/shared_player_guildhall_naboo_style_01_dark.iff")
--********************************************************************************************************************************************************************************
object_building_player_shared_player_guildhall_tatooine_style_01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_guildhall_tatooine_style_01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_guildhall_tatooine_style_01_dark, "object/building/player/shared_player_guildhall_tatooine_style_01_dark.iff")
--**************************************************************************************************************************************************************************************
object_building_player_shared_player_guildhall_tatooine_style_02_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_guildhall_tatooine_style_02_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_guildhall_tatooine_style_02_dark, "object/building/player/shared_player_guildhall_tatooine_style_02_dark.iff")
--**************************************************************************************************************************************************************************************
object_building_player_shared_player_house_atat_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_atat_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_atat_dark, "object/building/player/shared_player_house_atat_dark.iff")
--****************************************************************************************************************************************************
object_building_player_shared_player_house_corellia_large_style_01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_corellia_large_style_01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_corellia_large_style_01_dark, "object/building/player/shared_player_house_corellia_large_style_01_dark.iff")
--******************************************************************************************************************************************************************************************
object_building_player_shared_player_house_corellia_large_style_02_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_corellia_large_style_02_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_corellia_large_style_02_dark, "object/building/player/shared_player_house_corellia_large_style_02_dark.iff")
--******************************************************************************************************************************************************************************************
object_building_player_shared_player_house_corellia_medium_style_01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_corellia_medium_style_01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_corellia_medium_style_01_dark, "object/building/player/shared_player_house_corellia_medium_style_01_dark.iff")
--********************************************************************************************************************************************************************************************
object_building_player_shared_player_house_corellia_medium_style_02_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_corellia_medium_style_02_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_corellia_medium_style_02_dark, "object/building/player/shared_player_house_corellia_medium_style_02_dark.iff")
--********************************************************************************************************************************************************************************************
object_building_player_shared_player_house_corellia_small_style_01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_corellia_small_style_01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_corellia_small_style_01_dark, "object/building/player/shared_player_house_corellia_small_style_01_dark.iff")
--******************************************************************************************************************************************************************************************
object_building_player_shared_player_house_corellia_small_style_01_floorplan_02_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_corellia_small_style_01_floorplan_02_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_corellia_small_style_01_floorplan_02_dark, "object/building/player/shared_player_house_corellia_small_style_01_floorplan_02_dark.iff")
--********************************************************************************************************************************************************************************************************************
object_building_player_shared_player_house_corellia_small_style_02_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_corellia_small_style_02_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_corellia_small_style_02_dark, "object/building/player/shared_player_house_corellia_small_style_02_dark.iff")
--******************************************************************************************************************************************************************************************
object_building_player_shared_player_house_corellia_small_style_02_floorplan_02_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_corellia_small_style_02_floorplan_02_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_corellia_small_style_02_floorplan_02_dark, "object/building/player/shared_player_house_corellia_small_style_02_floorplan_02_dark.iff")
--********************************************************************************************************************************************************************************************************************
object_building_player_shared_player_house_generic_large_style_01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_large_style_01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_large_style_01_dark, "object/building/player/shared_player_house_generic_large_style_01_dark.iff")
--****************************************************************************************************************************************************************************************
object_building_player_shared_player_house_generic_large_style_02_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_large_style_02_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_large_style_02_dark, "object/building/player/shared_player_house_generic_large_style_02_dark.iff")
--****************************************************************************************************************************************************************************************
object_building_player_shared_player_house_generic_large_window_s01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_large_window_s01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_large_window_s01_dark, "object/building/player/shared_player_house_generic_large_window_s01_dark.iff")
--********************************************************************************************************************************************************************************************
object_building_player_shared_player_house_generic_large_window_s02_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_large_window_s02_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_large_window_s02_dark, "object/building/player/shared_player_house_generic_large_window_s02_dark.iff")
--********************************************************************************************************************************************************************************************
object_building_player_shared_player_house_generic_medium_style_01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_medium_style_01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_medium_style_01_dark, "object/building/player/shared_player_house_generic_medium_style_01_dark.iff")
--******************************************************************************************************************************************************************************************
object_building_player_shared_player_house_generic_medium_style_02_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_medium_style_02_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_medium_style_02_dark, "object/building/player/shared_player_house_generic_medium_style_02_dark.iff")
--******************************************************************************************************************************************************************************************
object_building_player_shared_player_house_generic_medium_windowed_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_medium_windowed_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_medium_windowed_dark, "object/building/player/shared_player_house_generic_medium_windowed_dark.iff")
--******************************************************************************************************************************************************************************************
object_building_player_shared_player_house_generic_medium_windowed_s02_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_medium_windowed_s02_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_medium_windowed_s02_dark, "object/building/player/shared_player_house_generic_medium_windowed_s02_dark.iff")
--**************************************************************************************************************************************************************************************************
object_building_player_shared_player_house_generic_small_style_01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_small_style_01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_small_style_01_dark, "object/building/player/shared_player_house_generic_small_style_01_dark.iff")
--****************************************************************************************************************************************************************************************
object_building_player_shared_player_house_generic_small_style_01_floorplan_02_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_small_style_01_floorplan_02_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_small_style_01_floorplan_02_dark, "object/building/player/shared_player_house_generic_small_style_01_floorplan_02_dark.iff")
--******************************************************************************************************************************************************************************************************************
object_building_player_shared_player_house_generic_small_style_02_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_small_style_02_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_small_style_02_dark, "object/building/player/shared_player_house_generic_small_style_02_dark.iff")
--****************************************************************************************************************************************************************************************
object_building_player_shared_player_house_generic_small_style_02_floorplan_02_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_small_style_02_floorplan_02_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_small_style_02_floorplan_02_dark, "object/building/player/shared_player_house_generic_small_style_02_floorplan_02_dark.iff")
--******************************************************************************************************************************************************************************************************************
object_building_player_shared_player_house_generic_small_windowed_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_small_windowed_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_small_windowed_dark, "object/building/player/shared_player_house_generic_small_windowed_dark.iff")
--****************************************************************************************************************************************************************************************
object_building_player_shared_player_house_generic_small_window_style_03_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_generic_small_window_style_03_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_generic_small_window_style_03_dark, "object/building/player/shared_player_house_generic_small_window_style_03_dark.iff")
--******************************************************************************************************************************************************************************************************
object_building_player_shared_player_house_hangar_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_hangar_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_hangar_dark, "object/building/player/shared_player_house_hangar_dark.iff")
--********************************************************************************************************************************************************
object_building_player_shared_player_house_jabbas_sail_barge_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_jabbas_sail_barge_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_jabbas_sail_barge_dark, "object/building/player/shared_player_house_jabbas_sail_barge_dark.iff")
--******************************************************************************************************************************************************************************
object_building_player_shared_player_house_jedi_meditation_room_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_jedi_meditation_room_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_jedi_meditation_room_dark, "object/building/player/shared_player_house_jedi_meditation_room_dark.iff")
--************************************************************************************************************************************************************************************
object_building_player_shared_player_house_mustafar_lg_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_mustafar_lg_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_mustafar_lg_dark, "object/building/player/shared_player_house_mustafar_lg_dark.iff")
--******************************************************************************************************************************************************************
object_building_player_shared_player_house_naboo_large_style_01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_naboo_large_style_01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_naboo_large_style_01_dark, "object/building/player/shared_player_house_naboo_large_style_01_dark.iff")
--************************************************************************************************************************************************************************************
object_building_player_shared_player_house_naboo_medium_style_01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_naboo_medium_style_01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_naboo_medium_style_01_dark, "object/building/player/shared_player_house_naboo_medium_style_01_dark.iff")
--**************************************************************************************************************************************************************************************
object_building_player_shared_player_house_naboo_small_style_01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_naboo_small_style_01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_naboo_small_style_01_dark, "object/building/player/shared_player_house_naboo_small_style_01_dark.iff")
--************************************************************************************************************************************************************************************
object_building_player_shared_player_house_naboo_small_style_02_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_naboo_small_style_02_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_naboo_small_style_02_dark, "object/building/player/shared_player_house_naboo_small_style_02_dark.iff")
--************************************************************************************************************************************************************************************
object_building_player_shared_player_house_naboo_small_window_style_01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_naboo_small_window_style_01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_naboo_small_window_style_01_dark, "object/building/player/shared_player_house_naboo_small_window_style_01_dark.iff")
--**************************************************************************************************************************************************************************************************
object_building_player_shared_player_house_sandcrawler_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_sandcrawler_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_sandcrawler_dark, "object/building/player/shared_player_house_sandcrawler_dark.iff")
--******************************************************************************************************************************************************************
object_building_player_shared_player_house_sith_meditation_room_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_sith_meditation_room_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_sith_meditation_room_dark, "object/building/player/shared_player_house_sith_meditation_room_dark.iff")
--************************************************************************************************************************************************************************************
object_building_player_shared_player_house_tatooine_large_style_01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tatooine_large_style_01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tatooine_large_style_01_dark, "object/building/player/shared_player_house_tatooine_large_style_01_dark.iff")
--******************************************************************************************************************************************************************************************
object_building_player_shared_player_house_tatooine_medium_style_01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tatooine_medium_style_01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tatooine_medium_style_01_dark, "object/building/player/shared_player_house_tatooine_medium_style_01_dark.iff")
--********************************************************************************************************************************************************************************************
object_building_player_shared_player_house_tatooine_small_style_01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tatooine_small_style_01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tatooine_small_style_01_dark, "object/building/player/shared_player_house_tatooine_small_style_01_dark.iff")
--******************************************************************************************************************************************************************************************
object_building_player_shared_player_house_tatooine_small_style_02_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tatooine_small_style_02_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tatooine_small_style_02_dark, "object/building/player/shared_player_house_tatooine_small_style_02_dark.iff")
--******************************************************************************************************************************************************************************************
object_building_player_shared_player_house_tatooine_small_window_style_01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tatooine_small_window_style_01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tatooine_small_window_style_01_dark, "object/building/player/shared_player_house_tatooine_small_window_style_01_dark.iff")
--********************************************************************************************************************************************************************************************************
object_building_player_shared_player_house_tcg_8_bespin_house_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tcg_8_bespin_house_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tcg_8_bespin_house_dark, "object/building/player/shared_player_house_tcg_8_bespin_house_dark.iff")
--********************************************************************************************************************************************************************************
object_building_player_shared_player_house_tcg_8_yoda_house_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tcg_8_yoda_house_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tcg_8_yoda_house_dark, "object/building/player/shared_player_house_tcg_8_yoda_house_dark.iff")
--****************************************************************************************************************************************************************************
object_building_player_shared_player_house_tcg_commando_bunker_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tcg_commando_bunker_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tcg_commando_bunker_dark, "object/building/player/shared_player_house_tcg_commando_bunker_dark.iff")
--**********************************************************************************************************************************************************************************
object_building_player_shared_player_house_tcg_emperors_spire_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tcg_emperors_spire_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tcg_emperors_spire_dark, "object/building/player/shared_player_house_tcg_emperors_spire_dark.iff")
--********************************************************************************************************************************************************************************
object_building_player_shared_player_house_tcg_rebel_spire_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tcg_rebel_spire_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tcg_rebel_spire_dark, "object/building/player/shared_player_house_tcg_rebel_spire_dark.iff")
--**************************************************************************************************************************************************************************
object_building_player_shared_player_house_tcg_relaxation_pool_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tcg_relaxation_pool_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tcg_relaxation_pool_dark, "object/building/player/shared_player_house_tcg_relaxation_pool_dark.iff")
--**********************************************************************************************************************************************************************************
object_building_player_shared_player_house_tcg_vehicle_garage_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tcg_vehicle_garage_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tcg_vehicle_garage_dark, "object/building/player/shared_player_house_tcg_vehicle_garage_dark.iff")
--********************************************************************************************************************************************************************************
object_building_player_shared_player_house_tcg_vip_bunker_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tcg_vip_bunker_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tcg_vip_bunker_dark, "object/building/player/shared_player_house_tcg_vip_bunker_dark.iff")
--************************************************************************************************************************************************************************
object_building_player_shared_player_house_tree_house_01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_tree_house_01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_tree_house_01_dark, "object/building/player/shared_player_house_tree_house_01_dark.iff")
--**********************************************************************************************************************************************************************
object_building_player_shared_player_house_wod_ns_hut_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_wod_ns_hut_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_wod_ns_hut_dark, "object/building/player/shared_player_house_wod_ns_hut_dark.iff")
--****************************************************************************************************************************************************************
object_building_player_shared_player_house_wod_sm_hut_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_wod_sm_hut_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_wod_sm_hut_dark, "object/building/player/shared_player_house_wod_sm_hut_dark.iff")
--****************************************************************************************************************************************************************
object_building_player_shared_player_house_yt1300_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_yt1300_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_yt1300_dark, "object/building/player/shared_player_house_yt1300_dark.iff")
--********************************************************************************************************************************************************
object_building_player_shared_player_merchant_tent_style_01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_merchant_tent_style_01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_merchant_tent_style_01_dark, "object/building/player/shared_player_merchant_tent_style_01_dark.iff")
--****************************************************************************************************************************************************************************
object_building_player_shared_player_merchant_tent_style_02_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_merchant_tent_style_02_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_merchant_tent_style_02_dark, "object/building/player/shared_player_merchant_tent_style_02_dark.iff")
--****************************************************************************************************************************************************************************
object_building_player_shared_player_merchant_tent_style_03_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_merchant_tent_style_03_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_merchant_tent_style_03_dark, "object/building/player/shared_player_merchant_tent_style_03_dark.iff")
--****************************************************************************************************************************************************************************
object_building_player_shared_player_mustafar_house_lg_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_mustafar_house_lg_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_mustafar_house_lg_dark, "object/building/player/shared_player_mustafar_house_lg_dark.iff")
--******************************************************************************************************************************************************************
object_building_player_shared_player_pgc_merchant_tent_s01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_pgc_merchant_tent_s01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_pgc_merchant_tent_s01_dark, "object/building/player/shared_player_pgc_merchant_tent_s01_dark.iff")
--**************************************************************************************************************************************************************************
object_building_player_shared_rebel_house_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_rebel_house_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_rebel_house_dark, "object/building/player/shared_rebel_house_dark.iff")
--****************************************************************************************************************************************
object_building_player_shared_relaxation_house_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_relaxation_house_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_relaxation_house_dark, "object/building/player/shared_relaxation_house_dark.iff")
--**************************************************************************************************************************************************
object_building_player_shared_sandcrawler_house_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_sandcrawler_house_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_sandcrawler_house_dark, "object/building/player/shared_sandcrawler_house_dark.iff")
--****************************************************************************************************************************************************
object_building_player_shared_sith_house_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_sith_house_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_sith_house_dark, "object/building/player/shared_sith_house_dark.iff")
--**************************************************************************************************************************************
object_building_player_shared_sm_hut_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_sm_hut_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_sm_hut_dark, "object/building/player/shared_sm_hut_dark.iff")
--******************************************************************************************************************************
object_building_player_shared_tatooine_small_window_s01_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_tatooine_small_window_s01_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_tatooine_small_window_s01_dark, "object/building/player/shared_tatooine_small_window_s01_dark.iff")
--********************************************************************************************************************************************************************
object_building_player_shared_tree_house_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_tree_house_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_tree_house_dark, "object/building/player/shared_tree_house_dark.iff")
--**************************************************************************************************************************************
object_building_player_shared_vehicle_house_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_vehicle_house_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_vehicle_house_dark, "object/building/player/shared_vehicle_house_dark.iff")
--********************************************************************************************************************************************
object_building_player_shared_vipbunker_house_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_vipbunker_house_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_vipbunker_house_dark, "object/building/player/shared_vipbunker_house_dark.iff")
--************************************************************************************************************************************************
object_building_player_shared_yoda_house_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_yoda_house_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_yoda_house_dark, "object/building/player/shared_yoda_house_dark.iff")
--**************************************************************************************************************************************
object_building_player_shared_yt1300_house_dark = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_yt1300_house_dark.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_yt1300_house_dark, "object/building/player/shared_yt1300_house_dark.iff")
--******************************************************************************************************************************************

object_building_player_shared_player_guildhall_naboo_style_01_b = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_guildhall_naboo_style_01_b.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_guildhall_naboo_style_01_b, "object/building/player/shared_player_guildhall_naboo_style_01_b.iff")
--**************************************************************************************************************************************************************************
object_building_player_shared_player_house_naboo_large_style_01_b = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_naboo_large_style_01_b.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_naboo_large_style_01_b, "object/building/player/shared_player_house_naboo_large_style_01_b.iff")
--******************************************************************************************************************************************************************************
object_building_player_shared_player_house_naboo_large_style_01_c = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_naboo_large_style_01_c.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_naboo_large_style_01_c, "object/building/player/shared_player_house_naboo_large_style_01_c.iff")
--******************************************************************************************************************************************************************************
object_building_player_shared_player_house_naboo_medium_style_01_b = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_naboo_medium_style_01_b.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_naboo_medium_style_01_b, "object/building/player/shared_player_house_naboo_medium_style_01_b.iff")
--********************************************************************************************************************************************************************************
object_building_player_shared_player_house_naboo_medium_style_01_c = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_naboo_medium_style_01_c.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_naboo_medium_style_01_c, "object/building/player/shared_player_house_naboo_medium_style_01_c.iff")
--********************************************************************************************************************************************************************************
object_building_player_shared_player_house_naboo_small_style_01_b = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_naboo_small_style_01_b.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_naboo_small_style_01_b, "object/building/player/shared_player_house_naboo_small_style_01_b.iff")
--******************************************************************************************************************************************************************************
object_building_player_shared_player_house_naboo_small_style_01_c = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_naboo_small_style_01_c.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_naboo_small_style_01_c, "object/building/player/shared_player_house_naboo_small_style_01_c.iff")
--******************************************************************************************************************************************************************************
object_building_player_shared_player_house_naboo_small_style_02_b = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_naboo_small_style_02_b.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_naboo_small_style_02_b, "object/building/player/shared_player_house_naboo_small_style_02_b.iff")
--******************************************************************************************************************************************************************************
object_building_player_shared_player_house_naboo_small_style_02_c = SharedBuildingObjectTemplate:new {
	clientTemplateFileName = "object/building/player/shared_player_house_naboo_small_style_02_c.iff"
}
ObjectTemplates:addClientTemplate(object_building_player_shared_player_house_naboo_small_style_02_c, "object/building/player/shared_player_house_naboo_small_style_02_c.iff")
--******************************************************************************************************************************************************************************
