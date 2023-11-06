Yavin4LandingZoneScreenPlay = CityScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "Yavin4LandingZoneScreenPlay",

	planet = "rp_yavin4",	
	
	walkpointList = {
		
	}
}

registerScreenPlay("Yavin4LandingZoneScreenPlay",  true)

function Yavin4LandingZoneScreenPlay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:spawnCivilians()
	end
end

function Yavin4LandingZoneScreenPlay:spawnCivilians() 
	local waypointList = {
		
	}
	
	CivillianGenerator:spawnCivillians(self.screenplayName, "rp_yavin4", waypointList, self.walkpointList, "spacer", "spacer")
end

function Yavin4LandingZoneScreenPlay:spawnSceneObjects() 
	--Travel Terminals
	spawnSceneObject("rp_yavin4", "object/tangible/terminal/terminal_travel_rp.iff", 1502.65, 90, 1482.16, 0, 0.953717, 0, 0.300706, 0)
	
	--Signs
	
	
	--TAILOR--
	

end

function Yavin4LandingZoneScreenPlay:spawnMobiles()
	--Species, Equipment, Skills, Customization

end