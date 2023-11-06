DeepSpaceLocationsScreenPlay = CityScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "DeepSpaceLocationsScreenPlay",

	planet = "rp_space",	
	
	walkpointList = {
		
	}
}

registerScreenPlay("DeepSpaceLocationsScreenPlay",  true)

function DeepSpaceLocationsScreenPlay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:spawnCivilians()
	end
end

function DeepSpaceLocationsScreenPlay:spawnCivilians() 
	local waypointList = {
		
	}
	
	CivillianGenerator:spawnCivillians(self.screenplayName, "rp_space", waypointList, self.walkpointList, "spacer", "spacer")
end

function DeepSpaceLocationsScreenPlay:spawnSceneObjects() 
	--Travel Terminals
	spawnSceneObject("rp_space", "object/tangible/terminal/terminal_travel_rp.iff", -41.4749, 0.0112899, -2.62756, 808179, 1, 0, 0, 0)
	spawnSceneObject("rp_space", "object/tangible/terminal/terminal_travel_rp.iff", 10.094, 173.835, 45.8309, 808038, -1.49012e-07, 0, 1, 0)

	
	--Signs
	
	
	--TAILOR--
	
	--Jukebox
	spawnSceneObject("rp_space", "object/tangible/terminal/terminal_jukebox.iff", 18.0495, -2.57464e-09, 14.8183, 808246, -0.461749, 0, 0.887011, 0)

end

function DeepSpaceLocationsScreenPlay:spawnMobiles()
	--Species, Equipment, Skills, Customization

end