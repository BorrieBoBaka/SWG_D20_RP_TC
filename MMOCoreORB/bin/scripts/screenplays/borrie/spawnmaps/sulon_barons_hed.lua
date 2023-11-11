SulonBaronsHedScreenPlay = CityScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "SulonBaronsHedScreenPlay",

	planet = "rp_sulon",	
	
	walkpointList = {
		
	}
}

registerScreenPlay("SulonBaronsHedScreenPlay",  true)

function SulonBaronsHedScreenPlay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:spawnCivilians()
	end
end

function SulonBaronsHedScreenPlay:spawnCivilians() 
	local waypointList = {}
	
	CivillianGenerator:spawnCivillians(self.screenplayName, "rp_sulon", waypointList, self.walkpointList, "sulon", "sulon")
end

function SulonBaronsHedScreenPlay:spawnSceneObjects() 
	--Travel Terminals
	
	--Signs
	
	--TAILOR--
	sObj = spawnSceneObject("rp_sulon", "object/tangible/furniture/plain/plain_cabinet_s01.iff", 1.34424, 0.625, 0.176758, 610028089, 1, 0, 0, 0) --Shirts
	SceneObject(sObj):setCustomObjectName("Shirts")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_shirts")
	sObj = spawnSceneObject("rp_sulon", "object/tangible/furniture/plain/plain_cabinet_s01.iff", -0.208496, 0.625, 0.176758, 610028089, 1, 0, 0, 0) --Pants
	SceneObject(sObj):setCustomObjectName("Pants")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_pants")
	sObj = spawnSceneObject("rp_sulon", "object/tangible/furniture/plain/plain_cabinet_s01.iff", -1.77686, 0.625, 0.176758, 610028089, 1, 0, 0, 0) --Footwear
	SceneObject(sObj):setCustomObjectName("Footwear")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_footwear")
	sObj = spawnSceneObject("rp_sulon", "object/tangible/furniture/plain/plain_cabinet_s01.iff", -3.37451, 0.625, 0.176758, 610028089, 1, 0, 0, 0)--Jacket
	SceneObject(sObj):setCustomObjectName("Jacket")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_jackets")
	sObj = spawnSceneObject("rp_sulon", "object/tangible/furniture/plain/plain_chest_s01.iff", -3.33594, 2.69809, -0.0209961, 610028089, 1, 0, 0, 0) --Vest
	SceneObject(sObj):setCustomObjectName("Vest")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_vests")
	sObj = spawnSceneObject("rp_sulon", "object/tangible/furniture/plain/plain_chest_s01.iff", -1.73633, 2.69809, -0.0209961, 610028089, 1, 0, 0, 0) --Robes
	SceneObject(sObj):setCustomObjectName("Robes")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_robes")
	sObj = spawnSceneObject("rp_sulon", "object/tangible/furniture/plain/plain_chest_s01.iff", -0.185059, 2.69809, -0.0209961, 610028089, 1, 0, 0, 0) --Bodysuits
	SceneObject(sObj):setCustomObjectName("Bodysuits")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_bodysuits")
	sObj = spawnSceneObject("rp_sulon", "object/tangible/furniture/plain/plain_chest_s01.iff", 1.40088, 2.69809, -0.0209961, 610028089, 1, 0, 0, 0) --Skirts
	SceneObject(sObj):setCustomObjectName("Skirts")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_skirts")
	sObj = spawnSceneObject("rp_sulon", "object/tangible/furniture/plain/plain_chest_s01.iff", -0.898438, 1.625, 6.69434, 610028089, 0, 0, 1, 0) --Women
	SceneObject(sObj):setCustomObjectName("Women's Wear")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_women")
	sObj = spawnSceneObject("rp_sulon", "object/tangible/furniture/plain/plain_chest_s01.iff", 0.101562, 1.625, 6.69434, 610028089, 0, 0, 1, 0) --Heaad & Goggle
	SceneObject(sObj):setCustomObjectName("Headwear & Goggles")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_headwear")
	SceneObject(sObj):populateInventoryFromContentList("tailor_goggles")
	sObj = spawnSceneObject("rp_sulon", "object/tangible/furniture/plain/plain_chest_s01.iff", 1.10156, 1.625, 6.69434, 610028089, 0, 0, 1, 0) --Handwear
	SceneObject(sObj):setCustomObjectName("Handwear")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_handwear")
	sObj = spawnSceneObject("rp_sulon", "object/tangible/furniture/plain/plain_chest_s01.iff", 2.10156, 1.625, 6.69434, 610028089, 0, 0, 1, 0) --Jewelry
	SceneObject(sObj):setCustomObjectName("Jewelry")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_jewelry")
	sObj = spawnSceneObject("rp_sulon", "object/tangible/furniture/plain/plain_chest_s01.iff", -1.39844, 0.625, 6.69434, 610028089, 0, 0, 1, 0) --Misc/Belts
	SceneObject(sObj):setCustomObjectName("Belts, Bandoliers & Aprons")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_misc")
	sObj = spawnSceneObject("rp_sulon", "object/tangible/furniture/plain/plain_chest_s01.iff", -0.398438, 0.625, 6.69434, 610028089, 0, 0, 1, 0) --Aliens
	SceneObject(sObj):setCustomObjectName("Alienwear")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_alien")
	sObj = spawnSceneObject("rp_sulon", "object/tangible/furniture/plain/plain_chest_s01.iff", 0.601562, 0.625, 6.69434, 610028089, 0, 0, 1, 0) --Wookiee
	SceneObject(sObj):setCustomObjectName("Wookiee Wear")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_wookiee")
	sObj = spawnSceneObject("rp_sulon", "object/tangible/furniture/plain/plain_chest_s01.iff", 1.60156, 0.625, 6.69434, 610028089, 0, 0, 1, 0) --Ithorian 1
	SceneObject(sObj):setCustomObjectName("Ithorian Wear I")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_ithorian1")
	sObj = spawnSceneObject("rp_sulon", "object/tangible/furniture/plain/plain_chest_s01.iff", 2.60156, 0.625, 6.69434, 610028089, 0, 0, 1, 0) --Ithorian 2
	SceneObject(sObj):setCustomObjectName("Ithorian Wear II")
	SceneObject(sObj):setPublicContainer(true)
	SceneObject(sObj):setDispenserContainer(true)
	SceneObject(sObj):populateInventoryFromContentList("tailor_ithorian2")

end

function SulonBaronsHedScreenPlay:spawnMobiles()
	--Species, Equipment, Skills, Customization
end