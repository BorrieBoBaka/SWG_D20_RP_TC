object_building_player_generic_small_window_s01 = object_building_player_shared_generic_small_window_s01:new {
	lotSize = 2,
	baseMaintenanceRate = 0,
    allowedZones = {"chandrila", "corellia", "dantooine", "dathomir", "endor", "lok", "naboo", "rori", "taanab", "talus", "hoth", "kaas", "mandalore", "moraband", "tatooine", "yavin4", "hutta"},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 1,
	width = 1,
	publicStructure = 0,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 15}
	},
	childObjects = {
			--{templateFile = "object/tangible/sign/player/house_address.iff", x = 4.34, z = 3.4, y = 18.40, ox = 0, oy = 0.707107, oz = 0, ow = 0.707107, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -4.73432, z = 0.74, y = -2.86738, ow = -0.707106, ox = 0, oz = 0, oy = 0.707107, cellid = 1, containmentType = -1},
--			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = -2.66109, z = -0.513074, y = 0.0544102, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 7, containmentType = -1},
--			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = -2.65908, z = 5.39344, y = -0.0155522, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 7, containmentType = -1}
	}

}

ObjectTemplates:addTemplate(object_building_player_generic_small_window_s01, "object/building/player/generic_small_window_s01.iff")
