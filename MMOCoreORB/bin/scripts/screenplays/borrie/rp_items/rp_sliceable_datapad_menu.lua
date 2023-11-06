BorRpSliceableDatapadMenuComponent = {}

function BorRpSliceableDatapadMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local menuResponse = LuaObjectMenuResponse(pMenuResponse)
	
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return
	end

	menuResponse:addRadialMenuItem(20, 3, "Read")
	
	if(PlayerObject(pGhost):isPrivileged()) then
		menuResponse:addRadialMenuItem(80, 3, "DM Options")
		menuResponse:addRadialMenuItemToRadialID(80, 100, 3, "Set DC")
		menuResponse:addRadialMenuItemToRadialID(80, 101, 3, "Set Attempt Count")
		menuResponse:addRadialMenuItemToRadialID(80, 102, 3, "Set Name")
		menuResponse:addRadialMenuItemToRadialID(80, 103, 3, "Set Message")
		menuResponse:addRadialMenuItemToRadialID(80, 104, 3, "Read Message")
		menuResponse:addRadialMenuItemToRadialID(80, 105, 3, "Copy")
		menuResponse:addRadialMenuItemToRadialID(80, 106, 3, "Give to Target")
	end	
end

function BorRpSliceableDatapadMenuComponent:handleObjectMenuSelect(pObject, pPlayer, selectedID)
	if (pPlayer == nil or pObject == nil) then
		return 0
	end
	
	if (selectedID == 20) then 
		self:interact(pObject, pPlayer)
	elseif (selectedID == 100) then --Set DC
		self:promptSetDC(pObject, pPlayer)
	elseif (selectedID == 101) then --Set Attempt Count
		self:promptSetAttemptCount(pObject, pPlayer)
	elseif (selectedID == 102) then --Set Name
		self:promptSetName(pObject, pPlayer)
	elseif (selectedID == 103) then --Set Message
		self:promptSetMessage(pObject, pPlayer)
	elseif (selectedID == 104) then --Read Message
		self:readMessage(pObject, pPlayer)
	elseif (selectedID == 105) then --Copy
		self:copyDatapad(pObject, pPlayer)
	elseif (selectedID == 106) then --Give to Target
		self:giveToTarget(pObject, pPlayer)
	end
	
	return 0
end

function BorRpSliceableDatapadMenuComponent:interact(pObject, pPlayer)

	local isCracked = SceneObject(pObject):getStoredInt("cracked")
	
	if(isCracked == 1) then
		--Read it.
		self:readMessage(pObject, pPlayer)
	else 
		local attempts = SceneObject(pObject):getStoredInt("attempts")
		if(attempts > 0) then
			local dc = SceneObject(pObject):getStoredInt("dc")
			local sui = SuiMessageBox.new("BorRpSliceableDatapadMenuComponent", "sliceCallback")
			sui.setTargetNetworkId(SceneObject(pObject):getObjectID())
			sui.setTitle("Locked Datapad")
			sui.setPrompt("Do you want to slice this datapad? It has a Slicing DC of " .. dc .. ", with " .. attempts .. " attempts remaining.")
			sui.setOkButtonText("Yes")
			sui.setCancelButtonText("No")
			local pageId = sui.sendTo(pPlayer)	
		else 
			CreatureObject(pPlayer):sendSystemMessage("This Datapad is permanently locked. It would take a true master to unlock it.")
		end
	end
	
	
end

function BorRpSliceableDatapadMenuComponent:sliceCallback(pPlayer, pSui, eventIndex, inputData)
	if(eventIndex == 1) then
		return 0
	end
	
	if(inputData == "") then
		return 0
	end
	
	local pPageData = LuaSuiBoxPage(pSui):getSuiPageData()

	if (pPageData == nil) then
		return
	end
	
	local suiPageData = LuaSuiPageData(pPageData)
	
	local objid = suiPageData:getTargetNetworkId()

	local pObject = getSceneObject(objid)
	
	if(pObject == nil) then
		CreatureObject(pPlayer):sendSystemMessage("Error finding Datapad.")
		return 0
	end
	
	local skillValue = math.floor(CreatureObject(pPlayer):getSkillMod("rp_slicing"))
	local roll = math.floor(math.random(1,20))	
	local dc = SceneObject(pObject):getStoredInt("dc")
	local attempts = SceneObject(pObject):getStoredInt("attempts")
	
	if(dc <= roll + skillValue) then 
		SceneObject(pObject):setStoredInt("cracked", 1)
		local message = "Sliced a datapad successfully. (1d20: " .. roll .. " + " .. skillValue .. " = " .. roll + skillValue .. " vs DC:" .. dc .. ")"
		broadcastMessageWithName(pPlayer, message)
	else 
		local message = "Failed to slice a datapad. (1d20: " .. roll .. " + " .. skillValue .. " = " .. roll + skillValue .. " vs DC:" .. dc .. ")"
		SceneObject(pObject):setStoredInt("attempts", attempts - 1)
		if(attempts - 1 == 0) then
			message = message .. " The datapad has locked itself down completely."
		else 
			message = message .. " There are " .. attempts - 1 .. " attempts left."
		end
		broadcastMessageWithName(pPlayer, message)
	end
	
end

--SET DC

function BorRpSliceableDatapadMenuComponent:promptSetDC(pObject, pPlayer)
	local suiManager = LuaSuiManager()
	suiManager:sendInputBox(pObject, pPlayer, "BorRpSliceableDatapadMenuComponent", "setDCCallback", "Enter a Slicing DC for this Datapad (Anything over 30 is impossible): ", "@ok")
end

function BorRpSliceableDatapadMenuComponent:setDCCallback(pPlayer, pSui, eventIndex, inputData)
	if(eventIndex == 1) then
		return 0
	end
	
	if(inputData == "") then
		return 0
	end
	
	local inputBox = LuaSuiBox(pSui)
	local pObject = inputBox:getUsingObject()
	
	if(pObject == nil) then
		CreatureObject(pPlayer):sendSystemMessage("Error finding Datapad.")
		return 0
	end
	
	local value = tonumber(inputData)
	if(value == nil) then
		CreatureObject(pPlayer):sendSystemMessage("You need to enter a valid number.")
		return 0
	end
	
	SceneObject(pObject):setStoredInt("dc", value)
	CreatureObject(pPlayer):sendSystemMessage("Set Slicing DC of this datapad to " .. inputData)
end

--SET ATTEMPT COUNT

function BorRpSliceableDatapadMenuComponent:promptSetAttemptCount(pObject, pPlayer)
	local suiManager = LuaSuiManager()
	suiManager:sendInputBox(pObject, pPlayer, "BorRpSliceableDatapadMenuComponent", "setAttemptCountCallback", "Enter the amount of times a slicer can try to slice this datapad: ", "@ok")
end

function BorRpSliceableDatapadMenuComponent:setAttemptCountCallback(pPlayer, pSui, eventIndex, inputData)
	if(eventIndex == 1) then
		return 0
	end
	
	if(inputData == "") then
		return 0
	end
	
	local inputBox = LuaSuiBox(pSui)
	local pObject = inputBox:getUsingObject()
	
	if(pObject == nil) then
		CreatureObject(pPlayer):sendSystemMessage("Error finding Datapad.")
		return 0
	end
	
	local value = tonumber(inputData)
	if(value == nil) then
		CreatureObject(pPlayer):sendSystemMessage("You need to enter a valid number.")
		return 0
	end
	
	SceneObject(pObject):setStoredInt("attempts", value)
	CreatureObject(pPlayer):sendSystemMessage("Set Slicing Attempt count of this datapad to " .. inputData .. ". It will lock out after " .. inputData .. " tries, requiring a DM to reset it.")	
end

--SET NAME

function BorRpSliceableDatapadMenuComponent:promptSetName(pObject, pPlayer)
	local suiManager = LuaSuiManager()
	suiManager:sendInputBox(pObject, pPlayer, "BorRpSliceableDatapadMenuComponent", "setNameCallback", "Enter a name for the Datapad: ", "@ok")
end

function BorRpSliceableDatapadMenuComponent:setNameCallback(pPlayer, pSui, eventIndex, inputData)
	if(eventIndex == 1) then
		return 0
	end
	
	if(inputData == "") then
		return 0
	end
	
	local inputBox = LuaSuiBox(pSui)
	local pObject = inputBox:getUsingObject()
	
	if(pObject == nil) then
		CreatureObject(pPlayer):sendSystemMessage("Error finding Datapad.")
		return 0
	end
	
	SceneObject(pObject):setCustomObjectName(inputData)
	CreatureObject(pPlayer):sendSystemMessage("Datapad name set to " .. inputData)
end

--SET MESSAGE

function BorRpSliceableDatapadMenuComponent:promptSetMessage(pObject, pPlayer)
	local suiManager = LuaSuiManager()
	suiManager:sendInputBox(pObject, pPlayer, "BorRpSliceableDatapadMenuComponent", "setMessageCallback", "Enter a Message for the Datapad: ", "@ok")
end

function BorRpSliceableDatapadMenuComponent:setMessageCallback(pPlayer, pSui, eventIndex, inputData)
	if(eventIndex == 1) then
		return 0
	end
	
	if(inputData == "") then
		return 0
	end
	
	local inputBox = LuaSuiBox(pSui)
	local pObject = inputBox:getUsingObject()
	
	if(pObject == nil) then
		CreatureObject(pPlayer):sendSystemMessage("Error finding Datapad.")
		return 0
	end
	
	SceneObject(pObject):setStoredString("message", inputData)
	CreatureObject(pPlayer):sendSystemMessage("Message set.")	
end

--READ MESSAGE

function BorRpSliceableDatapadMenuComponent:readMessage(pObject, pPlayer)
	local message = SceneObject(pObject):getStoredString("message")
	local sui = SuiMessageBox.new("BorRpSliceableDatapadMenuComponent", "readMessageCallback")
	sui.setTargetNetworkId(SceneObject(pObject):getObjectID())
	sui.setTitle("Reading a Datapad")
	sui.setPrompt(message)
	local pageId = sui.sendTo(pPlayer)	
end

function BorRpSliceableDatapadMenuComponent:readMessageCallback(pPlayer, pSui, eventIndex, inputData)
end

--COPY DATAPAD

function BorRpSliceableDatapadMenuComponent:copyDatapad(pObject, pPlayer)

end

--GIVE TO TARGET

function BorRpSliceableDatapadMenuComponent:giveToTarget(pObject, pPlayer)

end