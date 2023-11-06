DantooineDamariseOutpostScreenPlay = CityScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "DantooineDamariseOutpostScreenPlay",

	planet = "rp_dantooine",	
	
	walkpointList = {
		
	}
}

registerScreenPlay("DantooineDamariseOutpostScreenPlay",  true)

function DantooineDamariseOutpostScreenPlay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:spawnCivilians()
		self:spawnJunkPiles()
	end
end

function DantooineDamariseOutpostScreenPlay:spawnJunkPiles() 
	local spawnPoints = {
		{1526.74, 4, 3415.07, 0, 0.990268, 0, 0.139173, 0},
		{1526.5, 4, 3416.26, 0, 0.913545, 0, 0.406737, 0},
		{1525.05, 4, 3417.42, 0, -0.951057, 0, 0.309017, 0},
		{1525.21, 4, 3419.65, 0, 0.707107, 0, 0.707107, 0},
		{1528.99, 4, 3418.02, 0, 0.156434, 0, 0.987688, 0},
	}
	RpJunkPile:spawnJunkPiles(self.planet, spawnPoints, true)
end

function DantooineDamariseOutpostScreenPlay:spawnCivilians() 
	local waypointList = {
		{1524.78, 4, 3391.66, 85, 0,{"social"}},
		{1386.72, 4.00823, 3370.96, 180, 0,{"tech"}},
		{1382.27, 4, 3372.28, 292, 0,{"social"}},
		{1381.32, 4, 3372.78, 111, 0,{"social"}},
		{1408.06, 4, 3390.79, 72, 0,{"social"}},
		{1409.82, 4, 3391.39, 251, 0,{"social"}},
		{1410.27, 4, 3390.16, 302, 0,{"none"}},
		{1428.75, 4, 3409.77, 72, 0,{"tech"}},
		{1445.05, 4, 3393, 0, 0,{"sit"}},
		{1445.74, 4, 3393.18, 0, 0,{"sit"}},
		{1465.62, 4, 3407.28, 320, 0,{"tech"}},
		{1448.69, 4, 3417.22, 302, 0,{"social"}},
		{1447.19, 4, 3418.14, 122, 0,{"social"}},
		{1448.17, 4, 3418.61, 191, 0,{"social"}},
		{1411.35, 7.48421, 3477.57, 347, 0,{"none"}},
		{1412.71, 7.33719, 3477.35, 283, 0,{"social"}},
		{1431.08, 4.30665, 3459.64, 179, 0,{"tech"}},
		{1482.56, 4.55957, 3414.67, 176, 0,{"sit"}},
		{1495.6, 4, 3411.93, 84, 0,{"social"}},
		{1497.5, 4, 3412.01, 268, 0,{"social"}},
		{1516.45, 4, 3410.59, 1, 0,{"tech"}},
		{1526.08, 4, 3391.71, 263, 0,{"social"}},
		{1519.42, 4, 3359.8, 225, 0,{"tech"}},
		{1515.81, 4, 3374.16, 40, 0,{"social"}},
		{1517.09, 4, 3375.68, 218, 0,{"none"}},
		{1516.29, 4, 3375.92, 192, 0,{"none"}},
		{1549.7, 4, 3351.65, 131, 0,{"none"}},
		{1549.7, 4, 3349.63, 278, 0,{"sit"}},
		{1535.84, 4, 3414.23, 348, 0,{"tech"}},
		{1536.12, 4, 3419.16, 356, 0,{"tech"}},
		{1538.9, 4, 3420.55, 313, 0,{"tech"}},
		{1539.76, 4, 3421.33, 231, 0,{"social"}},
		{1539.67, 4, 3414.35, 319, 0,{"none"}},
		{1540.66, 4, 3414.79, 258, 0,{"social"}},
		{1582.55, 3.99757, 3423.03, 45, 0,{"none"}},
		{1581.27, 3.99937, 3422.93, 74, 0,{"social"}},
		{1599.83, 4.49902, 3442.21, 180, 0,{"sit"}},
		{1450.39, 4, 3342.88, 292, 0,{"social"}},
		{1449.2, 4, 3343.36, 113, 0,{"social"}},
		{1448.31, 4, 3342.68, 84, 0,{"none"}},
		{1448.43, 4, 3342.06, 65, 0,{"none"}},
		{1447.58, 4, 3342.11, 70, 0,{"none"}},
		{1381.71, 11.1781, 3335.78, 188, 0,{"sit"}},
		{1380.44, 11.2935, 3335.66, 146, 0,{"sit"}},
		{1381.04, 11.3737, 3336.23, 175, 0,{"sit"}},
	}
	
	CivillianGenerator:spawnCivillians(self.screenplayName, "rp_dantooine", waypointList, self.walkpointList, "dantooine", "dantooine")
end

function DantooineDamariseOutpostScreenPlay:spawnSceneObjects() 
	--Travel Terminals
	spawnSceneObject("rp_dantooine", "object/tangible/terminal/terminal_travel_rp.iff", 1383.27, 4, 3437.64, 0, 0, 0, 1, 0)
	
	--Signs
	
	
	--TAILOR--
	
	--Jukebox--
	spawnSceneObject("rp_dantooine", "object/tangible/terminal/terminal_jukebox.iff", 13.244, 1.28309, 9.24321, 610015450, 0.707107, 0, 0.707107, 0)
	

end

function DantooineDamariseOutpostScreenPlay:spawnMobiles()

	--Species, Equipment, Skills, Customization
	--Mount
	local pNpc = spawnRoleplayMobile("rp_dantooine", "rp_convo_npc", 1, 1467.62, 3.9947, 3476.23, 308, 0, "rp_twilek_female", "dantooine_mount_vendor", "default", "random", "rpg_shopkeeper") 
	SceneObject(pNpc):setCustomObjectName("Shawa'ebo (a Mount Vendor)")
	SceneObject(pNpc):setStoredString("vendor:theme", "mount")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_mounts_dantooine")
	
	--Vehicle
	pNpc = spawnRoleplayMobile("rp_dantooine", "rp_convo_npc", 1, 1427.99, 4, 3392.24, 0, 0, "rp_zabrak_female", "dantooine_vehicle_vendor", "default", "random", "rpg_shopkeeper") 
	SceneObject(pNpc):setCustomObjectName("Leika Failakeu (a Vehicle Vendor)")
	SceneObject(pNpc):setStoredString("vendor:theme", "vehicle")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_vehicles")
	
	--Ship Vendor
	pNpc = spawnRoleplayMobile("rp_dantooine", "rp_convo_npc", 1, 1433.3, 4.24127, 3326.86, 0, 0, "rp_moncal_male", "xovros_refugee_male2", "default", "random", "rpg_shopkeeper") 
	SceneObject(pNpc):setCustomObjectName("Rowiv Karockar (a Ship Vendor)")
	SceneObject(pNpc):setStoredString("vendor:theme", "ship_cheap")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_ship_cheap")
	
	--Junk Dealer Vendor
	pNpc = spawnRoleplayMobile("rp_dantooine", "rp_convo_npc", 1, 1528.1, 4, 3413.72, 178, 0, "rp_rodian_female", "vehicle_dealer_vendor", "default", "random", "rpg_shopkeeper") 
	SceneObject(pNpc):setCustomObjectName("Fanika (a Junk Dealer)")
	SceneObject(pNpc):setStoredString("vendor:theme", "junkdealer")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_junkdealer")
	
	--Specialty Shop
	pNpc = spawnRoleplayMobile("rp_dantooine", "rp_convo_npc", 1, 1537.62, 4, 3419.85, 155, 0, "rp_rodian_male", "xovros_refugee_male1", "default", "random", "rpg_shopkeeper") 
	SceneObject(pNpc):setCustomObjectName("Evun Larp (a General Goods Vendor)")
	SceneObject(pNpc):setStoredString("vendor:theme", "specialty")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_specialty")
	
	--Armor Shop
	pNpc = spawnRoleplayMobile("rp_dantooine", "rp_convo_npc", 1, 4.71279, 0.75, 4.88154, 263, 610015514, "rp_moncal_female", "dantooine_armor_vendor", "default", "random", "rpg_shopkeeper") 
	SceneObject(pNpc):setCustomObjectName("Siopilla Vaoca (an Armor Vendor)")
	SceneObject(pNpc):setStoredString("vendor:theme", "armorsmith")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_armor_tier1")
	
	--Ranged Shop
	pNpc = spawnRoleplayMobile("rp_dantooine", "rp_convo_npc", 1, -0.906109, 0.75, 1.05694, 23, 610015514, "rp_human_male", "dantooine_weapon_ranged_vendor", "default", "random", "rpg_shopkeeper") 
	SceneObject(pNpc):setCustomObjectName("Lofo Heboro (a Ranged Weapon Vendor)")
	SceneObject(pNpc):setStoredString("vendor:theme", "novice_ranged")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_weaponsmith_ranged_tier1")
	
	--Melee Shop
	pNpc = spawnRoleplayMobile("rp_dantooine", "rp_convo_npc", 1, -3.70463, 0.75, 3.59142, 92, 610015514, "rp_zabrak_female", "dantooine_weapon_melee_vendor", "default", "random", "rpg_shopkeeper") 
	SceneObject(pNpc):setCustomObjectName("Sarre Ongia (a Melee Weapon Vendor)")
	SceneObject(pNpc):setStoredString("vendor:theme", "novice_melee")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_weaponsmith_melee_tier1")
	
	--Instrument Vendors
	pNpc = spawnRoleplayMobile("rp_dantooine", "rp_convo_npc", 1, 1475.5, 4, 3411.06, 179, 0, "rp_bith_male", "sulon_vendor_instrument_01", "default", "random", "rpg_shopkeeper") 
	SceneObject(pNpc):setCustomObjectName("Wemi Dlaierdan (an Instrument Vendor)")
	SceneObject(pNpc):setStoredString("vendor:theme", "music")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_instruments")
	
	--Camping Vendor
	pNpc = spawnRoleplayMobile("rp_dantooine", "rp_convo_npc", 1, 1362.33, 4, 3430.33, 112, 0, "rp_human_female", "xovros_vendor_camping", "default", "random", "rpg_shopkeeper") 
	SceneObject(pNpc):setCustomObjectName("Leif'mc (a Camp Vendor)")
	SceneObject(pNpc):setStoredString("vendor:theme", "camping")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_camping")
	
	--Stimpack Vendors
	pNpc = spawnRoleplayMobile("rp_dantooine", "rp_convo_npc", 1, 1434.02, 4.02043, 3348.68, 128, 0, "rp_trandoshan_female", "xovros_ghaddle", "default", "random", "rpg_shopkeeper") 
	SceneObject(pNpc):setCustomObjectName("Ghadellea (a Stimpack Vendor)")
	SceneObject(pNpc):setStoredString("vendor:theme", "medicine")
	SceneObject(pNpc):setStoredString("vendor:shopList", "shop_medicine_novice")
	
	
end