SpaceTansariiPointStationScreenPlay = CityScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "SpaceTansariiPointStationScreenPlay",

	planet = "rp_space",	
	
	walkpointList = {
		
	}
}

registerScreenPlay("SpaceTansariiPointStationScreenPlay",  true)

function SpaceTansariiPointStationScreenPlay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:spawnCivilians()
		self:spawnJunkPiles()
	end
end

function SpaceTansariiPointStationScreenPlay:spawnJunkPiles() 
	local spawnPoints = {
		{2.73541, -31.6821, -6.07325, 808260, -0.819152, 0, 0.573576, 0},
		{0.365212, -31.6821, -6.436, 808260, 1, 0, 0, 0},
		{-10.1142, -30, 20.7242, 808260, 1, 0, 0, 0},
		{-21.0167, -30, -7.50548, 808260, 1, 0, 0, 0},
		{-15.1334, -30, -17.8551, 808260, 1, 0, 0, 0},
		{0.467863, -31.6821, -1.302, 808260, -0.819152, 0, 0.573576, 0},
		{-21.084, -30, 10.5064, 808260, 1, 0, 0, 0},
		{7.91104, -30, 20.7406, 808260, 1, 0, 0, 0},
		{20.7994, -30, -7.6261, 808260, 1, 0, 0, 0},
	}
	RpJunkPile:spawnJunkPiles(self.planet, spawnPoints, true)
end


function SpaceTansariiPointStationScreenPlay:spawnCivilians() 
	local waypointList = {
		{4.72347, -0.5, -5.64394, 317, 808246,{"drinker"}},
		{5.16871, -0.5, -4.7897, 292, 808246,{"drinker"}},
		{-2.34479, -0.5, -6.59509, 16, 808246,{"drinker"}},
		{-1.66772, -0.5, -6.81508, 10, 808246,{"drinker"}},
		{-1.3325, -0.5, 7.21832, 171, 808246,{"sitchair"}},
		{0.686315, -0.5, 7.06318, 178, 808246,{"sittable"}},
		{16.6843, -2.57464e-09, -14.7855, 22, 808246,{"sittable"}},
		{17.9099, -2.57464e-09, -13.558, 229, 808246,{"sittable"}},
		{19.2601, -3.44896e-09, -7.6628, 299, 808246,{"sittable"}},
		{18.0739, -3.86062e-09, -6.21071, 164, 808246,{"sittable"}},
		{9.11884, -1, 12.3299, 50, 808246,{"drinker"}},
		{11.7922, -1, 9.66497, 24, 808246,{"drinker"}},
		{10.8356, -1, 9.87871, 33, 808246,{"drinker"}},
		{15.3872, -1, 3.89547, 181, 808246,{"social"}},
		{15.31, -1, 2.95853, 1, 808246,{"social"}},
		{11.2558, -1, -9.25548, 250, 808246,{"social"}},
		{10.116, -1, -9.64896, 69, 808246,{"social"}},
		{10.4231, -1, -8.57665, 161, 808246,{"drinker"}},
		{-1.99823, -3, -25.9422, 89, 808248,{"sit"}},
		{-11.2828, -1, -10.9945, 38, 808246,{"social"}},
		{-10.1251, -1, -10.6472, 268, 808246,{"social"}},
		{-10.6164, -1, -9.41771, 197, 808246,{"social"}},
		{-16.3073, -2.57464e-09, 14.2885, 53, 808246,{"social"}},
		{-15.5088, -2.57464e-09, 16.1947, 172, 808246,{"drinker"}},
		{-14.4285, -2.57464e-09, 16.0058, 218, 808246,{"sittable"}},
		{-13.8865, -2.57464e-09, 14.7121, 276, 808246,{"none"}},
		{-14.2782, -2.57464e-09, 13.9832, 308, 808246,{"social"}},
		{-20.543, -2.57464e-09, 11.4226, 304, 808246,{"tech"}},
		{-19.7999, -2.57464e-09, 12.4818, 305, 808246,{"tech"}},
		{-18.1834, -2.57464e-09, 14.7859, 309, 808246,{"tech"}},
		{-12.6017, -1, 8.03268, 60, 808246,{"social"}},
		{-12.4996, -1, 9.33907, 129, 808246,{"none"}},
		{-11.3016, -1, 9.34907, 208, 808246,{"social"}},
		{-11.0994, -1, 7.95844, 309, 808246,{"social"}},
		{-2.62996, -1, 15.6796, 77, 808246,{"social"}},
		{-1.96422, -1, 15.8506, 255, 808246,{"drinker"}},
		{6.78271, -1, 11.0116, 67, 808246,{"drinker"}},
		{0.918975, -3, 25.4032, 44, 808250,{"social"}},
		{1.83442, -3, 26.0279, 238, 808250,{"social"}},
		{29.9479, -0.992545, -3.67403, 88, 808249,{"sit"}},
		{30.0727, -0.992545, -4.36748, 85, 808249,{"sit"}},
		{29.9169, 0.8, -16.7865, 192, 808249,{"tech"}},
		{51.2, 0.8, -21.4462, 97, 808253,{"tech"}},
		{33.1273, 0.8, -39.5241, 62, 808253,{"social"}},
		{34.0682, 0.8, -39.1692, 249, 808253,{"social"}},
		{33.9856, 0.8, -38.208, 206, 808253,{"none"}},
		{20.4654, 0.8, -27.7743, 234, 808249,{"social"}},
		{19.6018, 0.8, -28.3345, 55, 808249,{"none"}},
		{7.74799, 0.8, -29.0519, 251, 808249,{"sit"}},
		{4.35528, -0.992545, -30.6631, 63, 808248,{"social"}},
		{-15.0002, 0.8, -31.4016, 195, 808248,{"tech"}},
		{-8.50873, 0.766885, -42.5563, 106, 808259,{"tech"}},
		{-16.5073, 0.720971, -41.8899, 45, 808259,{"social"}},
		{-15.6689, 0.725997, -41.3797, 240, 808259,{"none"}},
		{-22.4643, 0.8, -25.1135, 239, 808248,{"none"}},
		{-23.4708, 0.8, -25.5648, 61, 808248,{"social"}},
		{-34.3797, -0.992938, -4.21887, 351, 808247,{"social"}},
		{-34.4331, -0.993271, -3.55227, 174, 808247,{"social"}},
		{-60.3216, -1.05359, 6.09337, 88, 808257,{"sitchair"}},
		{-58.9153, -1.03699, 6.74352, 245, 808257,{"social"}},
		{-59.0383, -1.06294, 5.72683, 284, 808257,{"none"}},
		{-41.7592, -0.958373, -6.27834, 30, 808257,{"social"}},
		{-40.5611, -0.96184, -4.88811, 217, 808257,{"social"}},
		{-39.6933, -0.947741, -4.01912, 222, 808257,{"none"}},
		{-39.6059, -0.945237, -3.05026, 186, 808257,{"none"}},
		{-29.5759, 0.8, 16.8525, 315, 808247,{"none"}},
		{-16.7337, 0.8, 24.946, 232, 808247,{"social"}},
		{-18.1217, 0.8, 23.9622, 49, 808247,{"social"}},
		{-18.1666, 0.8, 25.1282, 119, 808247,{"social"}},
		{24.1734, 0.8, 24.937, 131, 808250,{"social"}},
		{25.4673, 0.8, 23.5957, 310, 808250,{"sit"}},
		{23.6433, 0.8, 24.1009, 98, 808250,{"none"}},
		{29.5144, 0.8, 8.19157, 305, 808250,{"social"}},
		{28.8957, 0.8, 8.8373, 150, 808250,{"social"}},
		{34.5003, -0.994018, 2.02662, 262, 808249,{"sit"}},
		{34.4981, -0.99347, 3.17084, 265, 808249,{"sit"}},
		{34.5001, -0.992943, 4.27417, 261, 808249,{"sit"}},
		{34.5, -30.9926, -5.07182, 347, 808263,{"none"}},
		{24.3948, -29.2, 17.9181, 150, 808264,{"social"}},
		{23.9301, -29.2, 18.0134, 144, 808264,{"none"}},
		{9.53284, -29.2, 28.5997, 15, 808264,{"sit"}},
		{10.3434, -29.2, 28.189, 3, 808264,{"sit"}},
		{9.82328, -29.2, 33.0846, 183, 808264,{"sit"}},
		{10.8794, -29.2, 32.7412, 198, 808264,{"sit"}},
		{12.4315, -29.2, 32.2367, 116, 808264,{"sit"}},
		{-25.7644, -29.2, 23.2139, 215, 808261,{"social"}},
		{-26.5533, -29.2, 22.1471, 36, 808261,{"social"}},
		{-34.1866, -30.9928, 3.1299, 271, 808261,{"tech"}},
		{-13.0452, -29.2, -31.5625, 230, 808262,{"tech"}},
		{-14.1627, -29.2, -30.272, 149, 808262,{"social"}},
		{-3.42804, -30.9925, -29.9479, 184, 808262,{"sit"}},
	}
	
	CivillianGenerator:spawnCivillians(self.screenplayName, "rp_space", waypointList, self.walkpointList, "generic", "spacer")
end

function SpaceTansariiPointStationScreenPlay:spawnSceneObjects() 
	--Travel Terminals
	spawnSceneObject("rp_space", "object/tangible/terminal/terminal_travel_rp.iff", 37.7034, 0.8, 18.2259, 808251, 0.891006, 0, 0.453991, 0)
	
	--Signs
	local sObj
	
	--TAILOR--
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_armoire_s01.iff", -7.76623, 28.9627, -90.1199, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Shirts")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_shirts")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_armoire_s01.iff", -9.06623, 28.9627, -90.1202, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Pants")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_pants")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_armoire_s01.iff", -10.3662, 28.9627, -90.1205, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Footwear")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_footwear")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_armoire_s01.iff", -11.6662, 28.9627, -90.1209, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Jacket")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_jackets")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_armoire_s01.iff", -12.9662, 28.9627, -90.1212, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Vest")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_vests")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_armoire_s01.iff", -14.2662, 28.9627, -90.1216, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Robes")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_robes")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_armoire_s01.iff", -15.5662, 28.9627, -90.1219, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Bodysuits")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_bodysuits")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_armoire_s01.iff", -9.06623, 30.7627, -90.1202, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Skirts")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_skirts")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_armoire_s01.iff", -10.3662, 30.7627, -90.1205, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Women's Wear")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_women")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_armoire_s01.iff", -12.9662, 30.7627, -90.1212, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Headwear & Goggles")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_headwear")
	SceneObject(sObj):populateInventoryFromContentList("tailor_goggles")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_armoire_s01.iff", -14.2662, 30.7627, -90.1216, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Handwear")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_handwear")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_chest_s01.iff", -9.13317, 28.929, -86.8955, 808274, 0, 0, 1, 0)
	SceneObject(sObj):setCustomObjectName("Jewelry")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_jewelry")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_chest_s01.iff", -10.2332, 28.929, -86.8957, 808274, 0, 0, 1, 0)
	SceneObject(sObj):setCustomObjectName("Belts, Bandoliers & Aprons")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_misc")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_chest_s01.iff", -11.3332, 28.929, -86.896, 808274, 0, 0, 1, 0)
	SceneObject(sObj):setCustomObjectName("Alienwear")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_alien")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_chest_s01.iff", -12.4332, 28.929, -86.8963, 808274, 0, 0, 1, 0)
	SceneObject(sObj):setCustomObjectName("Wookiee Wear")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_wookiee")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_chest_s01.iff", -13.5332, 28.929, -86.8966, 808274, 0, 0, 1, 0)
	SceneObject(sObj):setCustomObjectName("Ithorian Wear I")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_ithorian1")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_chest_s01.iff", -14.6332, 28.929, -86.8969, 808274, 0, 0, 1, 0)
	SceneObject(sObj):setCustomObjectName("Ithorian Wear II")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_ithorian2")
	
	--FURNITURE
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_chest_s01.iff", -9.70601, 28.9251, -70.6102, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Furniture, Cheap")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("furniture_cheap")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_chest_s01.iff", -10.806, 28.9251, -70.6098, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Furniture, Elegant")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("furniture_elegant")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_chest_s01.iff", -11.906, 28.9251, -70.6094, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Furniture, Modern")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("furniture_modern")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_chest_s01.iff", -13.006, 28.9251, -70.609, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Furniture, Plain")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("furniture_plain")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_chest_s01.iff", -14.106, 28.9251, -70.6087, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Furniture, Technical")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("furniture_technical")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_chest_s01.iff", -14.106, 29.7251, -70.6087, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Furniture, Misc")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("furniture_misc")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_chest_s01.iff", -13.006, 29.7251, -70.609, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Furniture, Decorative")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("furniture_decorative")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_chest_s01.iff", -11.906, 29.7251, -70.6094, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Furniture, City")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("furniture_city")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_chest_s01.iff", -10.806, 29.7251, -70.6098, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Furniture, Paintings")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("furniture_paintings")
	sObj = spawnSceneObject("rp_space", "object/tangible/furniture/plain/plain_chest_s01.iff", -9.70601, 29.7252, -70.6102, 808274, 1, 0, 0, 0)
	SceneObject(sObj):setCustomObjectName("Furniture, Plants")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("furniture_plants")


end

function SpaceTansariiPointStationScreenPlay:spawnMobiles()
	--Species, Equipment, Skills, Customization
	
	--Rebel Requisition Vendor
	local pNpc = spawnRoleplayMobile("rp_space", "rp_convo_npc", 1, 99.9288, 0.799995, -20.0603, 269, 808254, "rp_moncal_male", "shop_rebel_vendor", "default", "random", "rpg_shopkeeper")
	SceneObject(pNpc):setCustomObjectName("Gak Ockarran (an Alliance Wholesaler)")
	SceneObject(pNpc):setStoredString("vendor:theme", "rebel")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_rebel")
	
	--Armorsmith
	local pNpc = spawnRoleplayMobile("rp_space", "rp_convo_npc", 1, -47.7093, 0.788808, 22.5366, 37, 808256, "rp_trandoshan_male", "tsp_vendor_armorsmith", "default", "random", "rpg_shopkeeper")
	SceneObject(pNpc):setCustomObjectName("Vissyk (an Armorsmith)")
	SceneObject(pNpc):setStoredString("vendor:theme", "armorsmith")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_armor_tier1")
	
	--Weaponsmith (Melee)
	local pNpc = spawnRoleplayMobile("rp_space", "rp_convo_npc", 1, -34.0362, 0.732798, 29.0317, 267, 808256, "rp_rodian_male", "tsp_vendor_weaponsmith_melee", "default", "random", "rpg_shopkeeper")
	SceneObject(pNpc):setCustomObjectName("Mileeko (a Melee Weaponsmith)")
	SceneObject(pNpc):setStoredString("vendor:theme", "novice_melee")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_weaponsmith_melee_tier1")
	
	--Weaponsmith (Ranged)	
	local pNpc = spawnRoleplayMobile("rp_space", "rp_convo_npc", 1, -26.1707, 0.8, 22.6743, 121, 808247, "rp_bothan_male", "tsp_vendor_weaponsmith_ranged", "default", "random", "rpg_shopkeeper")
	SceneObject(pNpc):setCustomObjectName("Keaen Jov'ros (a Ranged Weaponsmith)")
	SceneObject(pNpc):setStoredString("vendor:theme", "novice_ranged")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_weaponsmith_ranged_tier1")
	
	--Vehicle Vendor
	local pNpc = spawnRoleplayMobile("rp_space", "rp_convo_npc", 1, 33.0005, 0.8, 37.3622, 166, 808251, "rp_human_male", "tsp_vendor_vehicle", "default", "random", "rpg_shopkeeper")
	SceneObject(pNpc):setCustomObjectName("Nillo Antilles (a Vehicle Vendor)")
	SceneObject(pNpc):setStoredString("vendor:theme", "vehicle")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_vehicles")
	
	--Junk Vendor
	local pNpc = spawnRoleplayMobile("rp_space", "rp_convo_npc", 1, -20.235, -30, 6.81861, 105, 808260, "rp_gran_male", "tsp_vendor_junk", "default", "random", "rpg_shopkeeper")
	SceneObject(pNpc):setCustomObjectName("Pio Ondarogo (a Junk Dealer)")
	SceneObject(pNpc):setStoredString("vendor:theme", "junkdealer")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_junkdealer")
	
	--Specialty Vendor
	local pNpc = spawnRoleplayMobile("rp_space", "rp_convo_npc", 1, 25.0845, -29.2, 16.4245, 0, 808264, "rp_gotal_male", "tsp_vendor_specialty", "default", "random", "rpg_shopkeeper")
	SceneObject(pNpc):setCustomObjectName("Vot Akot (a Specialty Vendor)")
	SceneObject(pNpc):setStoredString("vendor:theme", "specialty")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_specialty")
	
	--Camping Vendor
	local pNpc = spawnRoleplayMobile("rp_space", "rp_convo_npc", 1, 17.553, 29.007, -12.5539, 0, 808273, "rp_human_male", "xovros_vendor_camping", "default", "random", "rpg_shopkeeper")
	SceneObject(pNpc):setCustomObjectName("Stevlem Limec (a Camping Vendor)")
	SceneObject(pNpc):setStoredString("vendor:theme", "camping")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_camping")
	
	--Instrument Vendor
	local pNpc = spawnRoleplayMobile("rp_space", "rp_convo_npc", 1, 4.41723, -3.08312e-09, 20.0378, 183, 808246, "rp_moncal_female", "tsp_vendor_instrument", "default", "random", "rpg_shopkeeper")
	SceneObject(pNpc):setCustomObjectName("Jilar Myntack (an Instrument Vendor)")
	SceneObject(pNpc):setStoredString("vendor:theme", "music")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_instruments")
	
	--Stimpack Vendor
	local pNpc = spawnRoleplayMobile("rp_space", "rp_convo_npc", 1, -46.7255, -1.17924, 0.168145, 271, 808257, "rp_moncal_male", "outpost_doctor", "default", "random", "rpg_shopkeeper")
	SceneObject(pNpc):setCustomObjectName("Dr. Fodogkar (a Stimpack Vendor)")
	SceneObject(pNpc):setStoredString("vendor:theme", "medicine")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_medicine_novice")
	
	--Mando Scout Vendor
	local pNpc = spawnRoleplayMobile("rp_space", "rp_convo_npc", 1, 21.421, -29.2, -27.0809, 0, 808263, "rp_human_male", "tsp_vendor_mando", "default", "random", "rpg_shopkeeper")
	SceneObject(pNpc):setCustomObjectName("Hylao (a Mandalorian Vagabond)")
	SceneObject(pNpc):setStoredString("vendor:theme", "mando_noob")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_mando_noob")
	
	--Transmog Vendor
	local pNpc = spawnRoleplayMobile("rp_space", "rp_convo_npc", 1, 94.0701, 0.799995, -29.0176, 0, 808254, "rp_rodian_male", "vendor_transmog", "default", "random", "rpg_shopkeeper")
	SceneObject(pNpc):setCustomObjectName("Lolezaro Ryot (a Disguise Vendor)")
	SceneObject(pNpc):setStoredString("vendor:theme", "transmog")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_transmog")
	
	--Backpack Vendor
	local pNpc = spawnRoleplayMobile("rp_space", "rp_convo_npc", 1, 24.9596, 0.8, 16.5964, 68, 808250, "rp_twilek_male", "xovros_refugee_male9", "default", "random", "rpg_shopkeeper")
	SceneObject(pNpc):setCustomObjectName("Emme Eckles (a Backpack Vendor)")
	SceneObject(pNpc):setStoredString("vendor:theme", "backpacks")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_backpacks")
	

end