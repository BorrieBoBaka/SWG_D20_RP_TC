RpSlotMachineMenuComponent = {}

function RpSlotMachineMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local menuResponse = LuaObjectMenuResponse(pMenuResponse)

	menuResponse:addRadialMenuItem(20, 3, "Play Lugjack! (5 Credits)")
end

function RpSlotMachineMenuComponent:handleObjectMenuSelect(pObject, pPlayer, selectedID)
	if (pPlayer == nil or pObject == nil) then
		return 0
	end
	
	if (selectedID == 20) then 
		RpSlotMachine:playSlots(pPlayer, pObject) 
	end
	
	return 0
end

RpRouletteMenuComponent = {}

function RpRouletteMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local menuResponse = LuaObjectMenuResponse(pMenuResponse)

	menuResponse:addRadialMenuItem(20, 3, "Join Table")
end

function RpRouletteMenuComponent:handleObjectMenuSelect(pObject, pPlayer, selectedID)
	if (pPlayer == nil or pObject == nil) then
		return 0
	end
	
	if (selectedID == 20) then 
		RpRoulette:joinTable(pPlayer, pObject) 
	end
	
	return 0
end

RpPazaakMenuComponent = {}

function RpPazaakMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local menuResponse = LuaObjectMenuResponse(pMenuResponse)

	menuResponse:addRadialMenuItem(20, 3, "Play Pazaak")
end

function RpPazaakMenuComponent:handleObjectMenuSelect(pObject, pPlayer, selectedID)
	if (pPlayer == nil or pObject == nil) then
		return 0
	end
	
	if (selectedID == 20) then 
		RpPazaakTable:joinTable(pPlayer, pObject) 
	end
	
	return 0
end

RpSabaacMenuComponent = {}

function RpSabaacMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local menuResponse = LuaObjectMenuResponse(pMenuResponse)

	menuResponse:addRadialMenuItem(20, 3, "Play Sabaac")
end

function RpSabaacMenuComponent:handleObjectMenuSelect(pObject, pPlayer, selectedID)
	if (pPlayer == nil or pObject == nil) then
		return 0
	end
	
	if (selectedID == 20) then 
		RpSabaacTable:joinTable(pPlayer, pObject) 
	end
	
	return 0
end