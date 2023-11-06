DathomirLandingZoneScreenPlay = CityScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "DathomirLandingZoneScreenPlay",

	planet = "rp_dathomir",	
	
	walkpointList = {
		
	}
}

registerScreenPlay("DathomirLandingZoneScreenPlay",  true)

function DathomirLandingZoneScreenPlay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:spawnCivilians()
	end
end

function DathomirLandingZoneScreenPlay:spawnCivilians() 
	local waypointList = {
		
	}
	
	CivillianGenerator:spawnCivillians(self.screenplayName, "rp_dathomir", waypointList, self.walkpointList, "spacer", "spacer")
end

function DathomirLandingZoneScreenPlay:spawnSceneObjects() 
	--Travel Terminals
	spawnSceneObject("rp_dathomir", "object/tangible/terminal/terminal_travel_rp.iff", 1520.12, 127, 1489.68, 0, 0.953717, 0, -0.300706, 0)
	
	--Signs
	
	
	--TAILOR--
	

end

function DathomirLandingZoneScreenPlay:spawnMobiles()
	--Species, Equipment, Skills, Customization

end