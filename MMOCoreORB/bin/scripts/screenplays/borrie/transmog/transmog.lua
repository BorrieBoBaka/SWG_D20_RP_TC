BorTransmog = {
	types = {},
}

function BorTransmog:addTransmogType(transmogType) 
	self.types[transmogType.tag] = transmogType
end

BorTransmogDeviceMenuComponent = {}

function BorTransmogDeviceMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local menuResponse = LuaObjectMenuResponse(pMenuResponse)

	menuResponse:addRadialMenuItem(20, 3, "Toggle")
end

function BorTransmogDeviceMenuComponent:handleObjectMenuSelect(pObject, pPlayer, selectedID)
	if (pPlayer == nil or pObject == nil) then
		return 0
	end
	
	if (selectedID == 20) then 
		local isTransmogged = tonumber(SceneObject(pPlayer):getStoredInt("is_transmogged")) == 1
		if(isTransmogged) then
			CreatureObject(pPlayer):sendSystemMessage("Taking off costume...")
			SceneObject(pPlayer):setStoredInt("is_transmogged", 0)
			CreatureObject(pPlayer):setAppearance("")
			--local height = tonumber(SceneObject(pObject):getStoredFloat("stored_height"))
			--if(height <= 0) then
			--	height = 1.0
			--end
			--CreatureObject(pPlayer):setHeight(height)
		else 
			CreatureObject(pPlayer):sendSystemMessage("Putting on costume...")
			SceneObject(pPlayer):setStoredInt("is_transmogged", 1)
			local template = SceneObject(pObject):getStoredString("transmog_tag")
			CreatureObject(pPlayer):sendSystemMessage(BorTransmog.types[template].options[1][2])
			CreatureObject(pPlayer):setAppearance(BorTransmog.types[template].options[1][2])
			--local height = CreatureObject(pPlayer):getHeight()
			--SceneObject(pObject):setStoredFloat("stored_height", height)
			--CreatureObject(pPlayer):setHeight(BorTransmog.types[template].options[1][3])
		end
	end
	
	return 0
end