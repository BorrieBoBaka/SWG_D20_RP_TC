RpJunkMenuComponent = {
	
}

function RpJunkMenuComponent:showMenu(pPlayer) 
	local suiManager = LuaSuiManager()
	options = {}
	
	local menuResponse = LuaObjectMenuResponse(pMenuResponse)
	
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return
	end

	menuResponse:addRadialMenuItem(20, 3, "Search")	
end

function RpJunkMenuComponent:handleObjectMenuSelect(pObject, pPlayer, selectedID)
	if (pPlayer == nil or pObject == nil) then
		return 0
	end
	
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		CreatureObject(pPlayer):sendSystemMessage("Error: You are not a player??")
		return
	end
	
	if (selectedID == 20) then 
		RpJunkPile:searchJunkPile(pPlayer, pObject) 
	end
end