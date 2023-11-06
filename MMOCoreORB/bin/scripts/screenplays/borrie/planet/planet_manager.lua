local Logger = require("utils.logger")

BorPlanetManager = CityScreenPlay:new {

	numberOfActs = 1,

	screenplayName = "BorPlanetManager",
	
	planets = {},
	planets_index = {},
	bases = {},
	landing_points = {},
}

registerScreenPlay("BorPlanetManager",  true)

function BorPlanetManager:start()
	print("Starting Borrie's Planet Manager")
	self:initializePlanets()
end

function BorPlanetManager:initializePlanets() 
	print("Initializing Roleplay Data for " .. #self.planets_index .. " planets.")
	for i = 1, #self.planets_index, 1 do
		local planet = self.planets[self.planets_index[i][2]]
		if(isZoneEnabled(planet.zone)) then
			print("Loading Roleplay Planet Data for "..planet.name)
			--Do special planet stuff
			--Loop through bases
			for j = 1, #planet.bases, 1 do
				local base = self.bases[planet.bases[j]]
				if(base ~= nil) then
					self:spawnBaseContents(planet, base)
				else 
					print("Tried to load base " .. planet.bases[j] .. " on "..planet.name.." but no base information available.")
				end
			end
		else
			print("Could not load Roleplay Planet Data for \""..planet.name .."\" because zone \""..planet.zone.."\"is not loaded.")
		end
	end
end

function BorPlanetManager:spawnBaseContents(planet, base)
	print("Loading base contents for base \"" .. base.tag .. "\" on planet " .. planet.zone)
	local questOwnerVar = "borPlanetManager:" .. planet.zone .. ":base:" .. base.tag .. ":owner"
	--Get base's controlling faction. If it is currently empty, initialize with vanilla.
	local controllingFaction = nil --getQuestStatus(questOwnerVar)
	if(controllingFaction == "" or controllingFaction == nil) then
		setQuestStatus(questOwnerVar, base.defaultOwner)
		controllingFaction = base.defaultOwner
	end
	
	local factionData = BorFactionManager.factions[controllingFaction]
	
	if(factionData ~= nil) then
		--Spawn Flags
		--Spawn Mobs
		local unitGroup = BorFactionManager.unit_groups[factionData.unitGroup].units
		
		if(unitGroup == nil) then
			print("ERROR: Tried to access Factional Unit Group " .. factionData.unitGroup .. ", but it seemingly doesn't exist.")
			return 0
		end
		
		for i = 1, #base.spawns, 1 do
			local mobTemplate = unitGroup[base.spawns[i][1]]
			if(mobTemplate ~= nil and mobTemplate ~= "") then
				if(base.spawns[i][1] == "recruiter") then
					--Spawn NPC that can do conversation
					local pNPC = createTemplatedRoleplayNPC(mobTemplate, base.spawns[i][3], base.spawns[i][4], base.spawns[i][5], base.spawns[i][6], base.spawns[i][7], base.spawns[i][2], "rp_convo_recruiter")
					if(pNPC ~= nil) then
						SceneObject(pNPC):setStoredString("rp_fac_recruiter_theme", factionData.recruiter_theme)
						SceneObject(pNPC):setStoredString("rp_faction", factionData.tag)
					else 
						print("ERROR: [BorPlanetManager] could not spawn recruiter mob for unknown reason.")
					end
				else
					--Spawn normal NPC
					createTemplatedRoleplayNPC(mobTemplate, base.spawns[i][3], base.spawns[i][4], base.spawns[i][5], base.spawns[i][6], base.spawns[i][7], base.spawns[i][2])
				end
			else 
				print("ERROR: Could not spawn unit from unit group")
			end
		end
	else 
		print("ERROR: Tried to access Faction Data for \"" .. controllingFaction .. "\", but it seemingly doesn't exist.")
	end
end

function BorPlanetManager:addPlanet(planet) 
	self.planets[planet.zone] = planet
	table.insert(self.planets_index, {planet.name, planet.zone})
	--Load the landing points for easy reference.
	for i = 1, #planet.landing_points, 1 do
		self.landing_points[planet.landing_points[i][1]] = planet.landing_points[i]
	end
	--print("Added RP Planet: " .. planet.name .. "(" .. planet.zone .. ")")
end

function BorPlanetManager:addBase(base)
	self.bases[base.tag] = base
	--print("Added Base: " .. base.tag)
end