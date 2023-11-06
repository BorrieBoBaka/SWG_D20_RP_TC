BorForceScreenPlay = CityScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "BorForceScreenPlay",

	planet = "",	
}

registerScreenPlay("BorForceScreenPlay",  true)

function BorForceScreenPlay:start()
	BorForce:spawnLightsaberCrystals()
end