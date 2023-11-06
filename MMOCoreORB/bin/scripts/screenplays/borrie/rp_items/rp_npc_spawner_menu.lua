BorRpNpcSpawnerMenuComponent = {}

function BorRpNpcSpawnerMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local menuResponse = LuaObjectMenuResponse(pMenuResponse)
	
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return
	end

	local creature = getStoredObject(pObject, "creature")
	
	if(creature == nil) then
		menuResponse:addRadialMenuItem(20, 3, "Spawn")
	else 
		menuResponse:addRadialMenuItem(20, 3, "Despawn")
	end	
	
	
	menuResponse:addRadialMenuItem(10, 1, "Pickup")
	--menuResponse:addRadialMenuItem(11, 1, "Drop")
	
	if(PlayerObject(pGhost):isPrivileged()) then
		menuResponse:addRadialMenuItem(80, 3, "DM Options")
		menuResponse:addRadialMenuItemToRadialID(80, 100, 3, "Inspect")
		menuResponse:addRadialMenuItemToRadialID(80, 101, 3, "Set Mobile Template")
		menuResponse:addRadialMenuItemToRadialID(80, 102, 3, "Set Skill Template")
		menuResponse:addRadialMenuItemToRadialID(80, 103, 3, "Set Equipment Template")
		menuResponse:addRadialMenuItemToRadialID(80, 104, 3, "Set Customization Template")
		menuResponse:addRadialMenuItemToRadialID(80, 105, 3, "Set Name")
		--menuResponse:addRadialMenuItemToRadialID(80, 106, 3, "Copy")
	end	
end

function BorRpNpcSpawnerMenuComponent:handleObjectMenuSelect(pObject, pPlayer, selectedID)
	if (pPlayer == nil or pObject == nil) then
		return 0
	end	
	
	if (selectedID == 20) then 
		self:handleSpawn(pObject, pPlayer)
	elseif (selectedID == 100) then --Inspect
		self:inspectSpawner(pObject, pPlayer)
	elseif (selectedID == 101) then --Set Mobile Template
		self:promptSetMobileTemplate(pObject, pPlayer)
	elseif (selectedID == 102) then --Set Skill Template
		self:promptSetSkillTemplate(pObject, pPlayer)
	elseif (selectedID == 103) then --Set Equipment Template
		self:promptSetEquipmentTemplate(pObject, pPlayer)
	elseif (selectedID == 104) then --Set Customization Template
		self:promptSetCustomizationTemplate(pObject, pPlayer)
	elseif (selectedID == 105) then --Set Name
		self:promptSetName(pObject, pPlayer)
	elseif (selectedID == 106) then --Copy
		self:copySpawner(pObject, pPlayer)
	end
	
	return 0
end

function BorRpNpcSpawnerMenuComponent:handleSpawn(pObject, pPlayer)
	local creature = getStoredObject(pObject, "creature")
	
	local mobileTemplate = SceneObject(pObject):getStoredString("mobile")
	
	if(creature == nil) then
		--Spawn
		if(mobileTemplate == nil or mobileTemplate == "") then
			CreatureObject(pPlayer):sendSystemMessage("This caller device has no mobile template to spawn. Contact a DM.")
			return 0
		end
		
		local skillTemplate = SceneObject(pObject):getStoredString("skill")
		local equipTemplate = SceneObject(pObject):getStoredString("equip")
		local customTemplate = SceneObject(pObject):getStoredString("custom")
		local customName = SceneObject(pObject):getStoredString("name")
		
		local callerParent = SceneObject(pObject):getParent()
		
		local x = 0
		local y = 0
		local z = 0
		local cell = 0
		local zone = SceneObject(pObject):getZoneName()
		
		local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")
		
		if(callerParent == pInventory) then
			x = SceneObject(pPlayer):getWorldPositionX()
			y = SceneObject(pPlayer):getWorldPositionY()
			z = SceneObject(pPlayer):getWorldPositionZ()
			local playerParent = SceneObject(pPlayer):getParent()
			if(playerParent ~= nil) then
				x = SceneObject(pPlayer):getPositionX()
				y = SceneObject(pPlayer):getPositionY()
				z = SceneObject(pPlayer):getPositionZ()
				cell = SceneObject(playerParent):getObjectID()
			end
		else 
			x = SceneObject(pObject):getWorldPositionX()
			y = SceneObject(pObject):getWorldPositionY()
			z = SceneObject(pObject):getWorldPositionZ()
			local objectParent = SceneObject(pObject):getParent()
			if(objectParent ~= nil) then
				x = SceneObject(pObject):getPositionX()
				y = SceneObject(pObject):getPositionY()
				z = SceneObject(pObject):getPositionZ()
				cell = SceneObject(objectParent):getObjectID()
			end
		end		
		
		creature = spawnRoleplayMobile(zone, "rp_base_npc", 1, x, z, y, 0, cell, mobileTemplate, equipTemplate, skillTemplate, customTemplate) 
		setStoredObject(pObject, creature, "creature")
		SceneObject(creature):setCustomObjectName(customName)
		CreatureObject(pPlayer):sendSystemMessage("Calling " .. customName)
	else 
		--Despawn
		local customName = SceneObject(pObject):getStoredString("name")
		CreatureObject(pPlayer):sendSystemMessage("Sending " .. customName .. " away.")
		SceneObject(creature):destroyObjectFromWorld()
		SceneObject(creature):destroyObjectFromDatabase()
		setStoredObject(pObject, nil, "creature")
		SceneObject(pObject):deleteStoredLong("creature")
	end
end

function BorRpNpcSpawnerMenuComponent:inspectSpawner(pObject, pPlayer)
	local suiManager = LuaSuiManager()
	local sui = SuiMessageBox.new("BorRpNpcSpawnerMenuComponent", "inspectCallback")
	sui.setTargetNetworkId(SceneObject(pObject):getObjectID())
	sui.setTitle("NPC Spawner Inspection")
	
	local message = "Name: " .. SceneObject(pObject):getStoredString("name") .. "\n"
	message = message .. "Mobile: " .. SceneObject(pObject):getStoredString("mobile") .. "\n"
	message = message .. "Skill: " .. SceneObject(pObject):getStoredString("skill") .. "\n"
	message = message .. "Equipment: " .. SceneObject(pObject):getStoredString("equip") .. "\n"
	message = message .. "Customization: " .. SceneObject(pObject):getStoredString("custom") .. "\n"
	
	
	local creature = getStoredObject(pObject, "creature")
	
	if(creature == nil) then
		message = message .. "Spawned: No\n"
	else 
		message = message .. "Spawned: Yes\n"
		message = message .. "Creature ID: " .. SceneObject(creature):getObjectID() .. "\n"
	end	
	
	sui.setPrompt(message)
	local pageId = sui.sendTo(pPlayer)	
end

function BorRpNpcSpawnerMenuComponent:inspectCallback(pPlayer, pSui, eventIndex, args)

end

--MOBILE TEMPLATE
function BorRpNpcSpawnerMenuComponent:promptSetMobileTemplate(pObject, pPlayer)
	local suiManager = LuaSuiManager()
	suiManager:sendInputBox(pObject, pPlayer, "BorRpNpcSpawnerMenuComponent", "setMobileTemplateCallback", "Enter a Mobile Template: ", "@ok")
end

function BorRpNpcSpawnerMenuComponent:setMobileTemplateCallback(pPlayer, pSui, eventIndex, inputData)
	if(eventIndex == 1) then
		return 0
	end
	
	if(inputData == "") then
		return 0
	end
	
	local inputBox = LuaSuiBox(pSui)
	local pObject = inputBox:getUsingObject()
	
	if(pObject == nil) then
		CreatureObject(pPlayer):sendSystemMessage("Error finding NPC Spawn device.")
		return 0
	end
	
	SceneObject(pObject):setStoredString("mobile", inputData)
	CreatureObject(pPlayer):sendSystemMessage("Set Mobile Template to " .. inputData)
end

--SKILL TEMPLATE
function BorRpNpcSpawnerMenuComponent:promptSetSkillTemplate(pObject, pPlayer)
	local suiManager = LuaSuiManager()
	suiManager:sendInputBox(pObject, pPlayer, "BorRpNpcSpawnerMenuComponent", "setSkillTemplateCallback", "Enter a Skill Template: ", "@ok")
end

function BorRpNpcSpawnerMenuComponent:setSkillTemplateCallback(pPlayer, pSui, eventIndex, inputData)
	if(eventIndex == 1) then
		return 0
	end
	
	if(inputData == "") then
		return 0
	end
	
	local inputBox = LuaSuiBox(pSui)
	local pObject = inputBox:getUsingObject()
	
	if(pObject == nil) then
		CreatureObject(pPlayer):sendSystemMessage("Error finding NPC Spawn device.")
		return 0
	end
	
	SceneObject(pObject):setStoredString("skill", inputData)
	CreatureObject(pPlayer):sendSystemMessage("Set Skill Template to " .. inputData)
end

--EQUIPMENT TEMPLATE
function BorRpNpcSpawnerMenuComponent:promptSetEquipmentTemplate(pObject, pPlayer)
	local suiManager = LuaSuiManager()
	suiManager:sendInputBox(pObject, pPlayer, "BorRpNpcSpawnerMenuComponent", "setEquipmentTemplateCallback", "Enter a Equipment Template: ", "@ok")
end

function BorRpNpcSpawnerMenuComponent:setEquipmentTemplateCallback(pPlayer, pSui, eventIndex, inputData)
	if(eventIndex == 1) then
		return 0
	end
	
	if(inputData == "") then
		return 0
	end
	
	local inputBox = LuaSuiBox(pSui)
	local pObject = inputBox:getUsingObject()
	
	if(pObject == nil) then
		CreatureObject(pPlayer):sendSystemMessage("Error finding NPC Spawn device.")
		return 0
	end
	
	SceneObject(pObject):setStoredString("equip", inputData)
	CreatureObject(pPlayer):sendSystemMessage("Set Equipment Template to " .. inputData)
end

--CUSTOMIZATION TEMPLATE
function BorRpNpcSpawnerMenuComponent:promptSetCustomizationTemplate(pObject, pPlayer)
	local suiManager = LuaSuiManager()
	suiManager:sendInputBox(pObject, pPlayer, "BorRpNpcSpawnerMenuComponent", "setCustomizationTemplateCallback", "Enter a Customization Template: ", "@ok")
end

function BorRpNpcSpawnerMenuComponent:setCustomizationTemplateCallback(pPlayer, pSui, eventIndex, inputData)
	if(eventIndex == 1) then
		return 0
	end
	
	if(inputData == "") then
		return 0
	end
	
	local inputBox = LuaSuiBox(pSui)
	local pObject = inputBox:getUsingObject()
	
	if(pObject == nil) then
		CreatureObject(pPlayer):sendSystemMessage("Error finding NPC Spawn device.")
		return 0
	end
	
	SceneObject(pObject):setStoredString("custom", inputData)
	CreatureObject(pPlayer):sendSystemMessage("Set Customization Template to " .. inputData)
end

--SET NAME
function BorRpNpcSpawnerMenuComponent:promptSetName(pObject, pPlayer)
	local suiManager = LuaSuiManager()
	suiManager:sendInputBox(pObject, pPlayer, "BorRpNpcSpawnerMenuComponent", "setNameCallback", "Enter a Name: ", "@ok")
end

function BorRpNpcSpawnerMenuComponent:setNameCallback(pPlayer, pSui, eventIndex, inputData)
	if(eventIndex == 1) then
		return 0
	end
	
	if(inputData == "") then
		return 0
	end
	
	local inputBox = LuaSuiBox(pSui)
	local pObject = inputBox:getUsingObject()
	
	if(pObject == nil) then
		CreatureObject(pPlayer):sendSystemMessage("Error finding NPC Spawn device.")
		return 0
	end
	
	SceneObject(pObject):setStoredString("name", inputData)
	CreatureObject(pPlayer):sendSystemMessage("Set NPC Name to " .. inputData)
	SceneObject(pObject):setCustomObjectName("Caller: " .. inputData)
end

function BorRpNpcSpawnerMenuComponent:copySpawner(pObject, pPlayer)

end

