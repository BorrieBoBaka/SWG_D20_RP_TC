planet = {
	name = "Rori",
	zone = "rp_rori",
	startingFaction = "empire",
	startingFactionControl = 70,
	bases = {
		"new_restuss_primary",
		"rori_rebel_outpost",
	},
	
	landing_points = {
		--Tag, Name, Zone, x, z, y, angle, cell, shipVisible
		{"rori_new_restuss_starport", "New Restuss", "rp_rori", -775, 83, 1554, -45, 0, true},
	}	
}

BorPlanetManager:addPlanet(planet)