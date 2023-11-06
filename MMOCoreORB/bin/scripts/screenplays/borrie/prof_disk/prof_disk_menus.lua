RpTrainingDiskMenuComponent = {}

function RpTrainingDiskMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local menuResponse = LuaObjectMenuResponse(pMenuResponse)

	menuResponse:addRadialMenuItem(20, 3, "Play")
	
	if(PlayerObject(pGhost):isPrivileged()) then
		menuResponse:addRadialMenuItem(80, 3, "DM Options")
		menuResponse:addRadialMenuItemToRadialID(80, 102, 3, "Make Beginner Disk")
		menuResponse:addRadialMenuItemToRadialID(80, 100, 3, "Re-Initialize")
		menuResponse:addRadialMenuItemToRadialID(80, 101, 3, "Give to Target")
	end	
end

function RpTrainingDiskMenuComponent:handleObjectMenuSelect(pObject, pPlayer, selectedID)
	if (pPlayer == nil or pObject == nil) then
		return 0
	end
	
	if (selectedID == 20) then 
		local skillString = SceneObject(pObject):getStoredString("skill")
		
		--If the Scroll is not initialized, do so
		if(skillString == "" or skillString == nil) then
			RpProfessionDisk:initializeDisk(pObject)
		end
		
		--Then use it.
		RpProfessionDisk:openDiskMenu(pPlayer, pObject)
	elseif(selectedID == 80) then
	
	elseif(selectedID == 100) then --Re-Initialize
		RpProfessionDisk:initializeDisk(pObject)
		CreatureObject(pPlayer):sendSystemMessage("Re-initialized Training Disk.")
	elseif(selectedID == 101) then --Give to Target
		local targetID = CreatureObject(pPlayer):getTargetID()
		local pTarget = getSceneObject(targetID)
		
		if (pTarget == nil or not SceneObject(pTarget):isPlayerCreature()) then
			CreatureObject(pPlayer):sendSystemMessage("Invalid target, must be a valid player.")
			return
		end
		
		local pTargetGhost = CreatureObject(pTarget):getPlayerObject()
		
		local pInventory = CreatureObject(pTarget):getSlottedObject("inventory")
		
		if (pInventory == nil) then
			CreatureObject(pPlayer):sendSystemMessage("Error: Your inventory wasn't found. Contact an admin.")
			return 0
		end
		
		SceneObject(pInventory):transferObject(pObject, -1, 1)
		CreatureObject(pTarget):sendSystemMessage("You have recieved " .. SceneObject(pObject):getCustomObjectName())
		CreatureObject(pPlayer):sendSystemMessage(SceneObject(pTarget):getCustomObjectName() .." recieved " .. SceneObject(pObject):getCustomObjectName())
	elseif(selectedID == 102) then
		BorForce:initializeScroll(pObject, true)
		CreatureObject(pPlayer):sendSystemMessage("Scroll initialized as a beginner disk (1-3)")
	end
	
	return 0
end