local ObjectManager = require("managers.object.object_manager")

travelSystemScreenplay = ScreenPlay:new {
	numberOfActs = 1,
}

registerScreenPlay("travelSystemScreenplay", true)

function travelSystemScreenplay:handleSuiSelectPlanet(pPlayer, pSui, eventIndex, arg0)
	local cancelPressed = (eventIndex == 1)

	if (pPlayer == nil) then
		return
	end

	if (cancelPressed) then
		return
	end
	
	local planet = arg0 + 1
	
	SceneObject(pPlayer):setStoredInt("travel_planet", planet)
	
	local suiManager = LuaSuiManager()
	
	if(planet == nil) then
		return
	end
	
	local options = {}
	local factionBlocked = 0
	
	for i = 1, #travel_destinations[planet].destinations, 1 do
	
		--Get landing zone faction control.
		local destFaction = travel_destinations[planet].destinations[i][7]
		
		--Check the landing zone's faction control. If the faction isn't defined, assume it's public.
		if (destFaction == nil or destFaction == "public") then
			table.insert(options, {travel_destinations[planet].destinations[i][1], 0})
		else
			--Get the player's current faction and compare it with the LZ.
			if (SceneObject(pPlayer):getStoredString("faction_current") == destFaction)
				--Add the destination.
				table.insert(options, {travel_destinations[planet].destinations[i][1], 0})
			else
				--Make note that a destination was filtered out.
				factionBlocked = 1
			end
			
		end
	end
	
	local listBox = LuaSuiListBox(pSui)
	local pNpc = listBox:getUsingObject()
	
	if(#options > 0) then
		suiManager:sendListBox(pNpc, pPlayer, "Instant Travel System", "Select a location you'd like to land at.", 2, "@cancel", "", "@ok", "travelSystemScreenplay", "travelToPoint", 32, options)
	else if (factionBlocked = 0)
		CreatureObject(pPlayer):sendSystemMessage("You are not allowed to travel to any destinations on this planet.")
	else
		CreatureObject(pPlayer):sendSystemMessage("Unfortunately, no travel destinations could be found for this planet. Please inform administration.")
	end

end

function travelSystemScreenplay:travelToPoint(pPlayer, pSui, eventIndex, arg0) 
	local cancelPressed = (eventIndex == 1)

	if (pPlayer == nil) then
		return
	end

	if (cancelPressed) then
		return
	end
	
	local planet = SceneObject(pPlayer):getStoredInt("travel_planet")
	local dest = travel_destinations[planet].destinations[arg0 + 1]
	if(dest == nil) then
		return
	end
	
	--------------------------------ZONE--------X------Z------Y-------CELL---
	SceneObject(pPlayer):switchZone(dest[2], dest[3],dest[4],dest[5], dest[6]) 
end