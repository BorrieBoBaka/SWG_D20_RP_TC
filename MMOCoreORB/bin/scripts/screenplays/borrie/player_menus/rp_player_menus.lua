RpPlayerMenus = {

	moods = {
		"angry",
		"bored",
		"calm",
		"conversation",
		"default",
		"entertained",
		"fishing",
		"groove_01",
		"groove_02",
		"groove_03",
		"happy",
		"nervous",
		"neutral",
		"npc_accusing",
		"npc_angry",
		"npc_consoling",
		"npc_dance_basic",
		"npc_dead_01",
		"npc_dead_02",
		"npc_dead_03",
		"npc_imperial",
		"npc_meditate",
		"npc_sad",
		"npc_sitting_chair",
		"npc_sitting_ground",
		"npc_sitting_table",
		"npc_sitting_table_eating",
		"npc_standing_drinking",
		"npc_use_terminal_high",
		"npc_use_terminal_low",
		"sad",
		"themepark_music_1",
		"themepark_music_2",
		"themepark_music_3",
		"threaten",
		"ui",
		"unnamed1",
		"wookiee_lying_restrained",
		"wookiee_sitting_restrained",
		"worried",
	},
	
}

function RpPlayerMenus:showMoodMenu(pPlayer) 
	local suiManager = LuaSuiManager()
	options = {}
	for i, v in ipairs(self.moods) do
		local new_table = {v, 0}
		table.insert(options, new_table)
	end
	
	suiManager:sendListBox(pPlayer, pPlayer, "All Mood Menu", "This list is comprised of all possible animated moods, including hidden moods. Which one would you like to use?", 1, "@cancel", "", "", "RpPlayerMenus", "moodMenuCallback", 32, options)
end

function RpPlayerMenus:moodMenuCallback(pPlayer, pSui, eventIndex, args)
	if (pPlayer == nil) then
		return
	end
	
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return
	end
	
	local cancelPressed = (eventIndex == 1)

	if (cancelPressed) then
		return
	end
	
	local selection = args + 1
	
	CreatureObject(pPlayer):setMoodString(self.moods[selection])
	CreatureObject(pPlayer):sendSystemMessage("You've set your mood to \"" .. self.moods[selection] .. "\"")	
end

--DM VERSION
function RpPlayerMenus:showDMMoodMenu(pPlayer)
	local suiManager = LuaSuiManager()
	options = {}
	for i, v in ipairs(self.moods) do
		local new_table = {v, 0}
		table.insert(options, new_table)
	end
	
	suiManager:sendListBox(pPlayer, pPlayer, "DM Mood Menu", "This list is comprised of all possible animated moods, including hidden moods. Which one would you like to use?", 1, "@cancel", "", "", "RpPlayerMenus", "moodDMMenuCallback", 32, options)
end

function RpPlayerMenus:moodDMMenuCallback(pPlayer, pSui, eventIndex, args)
	if (pPlayer == nil) then
		return
	end
	
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return
	end
	
	local cancelPressed = (eventIndex == 1)

	if (cancelPressed) then
		return
	end
	
	local selection = args + 1
	
	local targetID = CreatureObject(pPlayer):getTargetID()

	local pTarget = getSceneObject(targetID)
	
	if(pTarget == nil) then
		pTarget = pPlayer
	end
	
	CreatureObject(pTarget):setMoodString(self.moods[selection])
end

function RpPlayerMenus:emptyCallback() 
	--Intentionally Left Blank
end

function RpPlayerMenus:getFilesRecursive(dirname)
    local command = 'find "'..dirname..'" -type f'
    local pfile = io.popen(command)
    local files = {}
    for filename in pfile:lines() do
        local relativePath = filename:sub(#dirname+1) -- strip out the base path from filename
        local fileNameWithoutExtension = relativePath:gsub('%.lua$', '') -- remove .lua extension
        table.insert(files, fileNameWithoutExtension)
    end
    pfile:close()
    return files
end

function RpPlayerMenus:listStructurePrefabs(pPlayer)
	CreatureObject(pPlayer):sendSystemMessage("Listing all Structure Prefabs...")
	local filePath = io.popen("pwd"):read("*l") .. "/custom_scripts/structure_prefabs/" 
	local i,files = 0,{}
	local files = self:getFilesRecursive(filePath)
	
	local filesDisplay = ""
	for i = 1, #files, 1 do
		filesDisplay = filesDisplay .. files[i] .. "\n"
	end
	
	local suiManager = LuaSuiManager()
	local sui = SuiMessageBox.new("RpPlayerMenus", "emptyCallback")
	sui.setTargetNetworkId(SceneObject(pPlayer):getObjectID())
	sui.setTitle("Structure Prefabs")
	sui.setPrompt(filesDisplay)
	local pageId = sui.sendTo(pPlayer)	
end

function RpPlayerMenus:listAreaPrefabs(pPlayer)
	CreatureObject(pPlayer):sendSystemMessage("Listing all Area Prefabs...")
	local filePath = io.popen("pwd"):read("*l") .. "/custom_scripts/rp_objects/area_prefabs/" 
	local i,files = 0,{}
	local files = self:getFilesRecursive(filePath)
	
	local filesDisplay = ""
	for i = 1, #files, 1 do
		filesDisplay = filesDisplay .. files[i] .. "\n"
	end
	
	local suiManager = LuaSuiManager()
	local sui = SuiMessageBox.new("RpPlayerMenus", "emptyCallback")
	sui.setTargetNetworkId(SceneObject(pPlayer):getObjectID())
	sui.setTitle("Area Prefabs")
	sui.setPrompt(filesDisplay)
	local pageId = sui.sendTo(pPlayer)	
end

function RpPlayerMenus:listEquipmentTemplates(pPlayer)
	CreatureObject(pPlayer):sendSystemMessage("Listing all NPC Equipment Templates...")
	local filePath = io.popen("pwd"):read("*l") .. "/custom_scripts/rp_npcs/equipment/" 
	local i,files = 0,{}
	local files = self:getFilesRecursive(filePath)
	
	local filesDisplay = ""
	for i = 1, #files, 1 do
		filesDisplay = filesDisplay .. files[i] .. "\n"
	end
	
	local suiManager = LuaSuiManager()
	local sui = SuiMessageBox.new("RpPlayerMenus", "emptyCallback")
	sui.setTargetNetworkId(SceneObject(pPlayer):getObjectID())
	sui.setTitle("NPC Equipment Templates")
	sui.setPrompt(filesDisplay)
	local pageId = sui.sendTo(pPlayer)	
end

function RpPlayerMenus:listCustomizationTemplates(pPlayer)
	CreatureObject(pPlayer):sendSystemMessage("Listing all NPC Customization Templates...")
	local filePath = io.popen("pwd"):read("*l") .. "/custom_scripts/rp_npcs/customization/" 
	local i,files = 0,{}
	local files = self:getFilesRecursive(filePath)
	
	local filesDisplay = ""
	for i = 1, #files, 1 do
		filesDisplay = filesDisplay .. files[i] .. "\n"
	end
	
	local suiManager = LuaSuiManager()
	local sui = SuiMessageBox.new("RpPlayerMenus", "emptyCallback")
	sui.setTargetNetworkId(SceneObject(pPlayer):getObjectID())
	sui.setTitle("NPC Customization Templates")
	sui.setPrompt(filesDisplay)
	local pageId = sui.sendTo(pPlayer)	
end

function RpPlayerMenus:listSkillTemplates(pPlayer)
	CreatureObject(pPlayer):sendSystemMessage("Listing all NPC Skill Templates...")
	local filePath = io.popen("pwd"):read("*l") .. "/custom_scripts/rp_npcs/skill/" 
	local i,files = 0,{}
	local files = self:getFilesRecursive(filePath)
	
	local filesDisplay = ""
	for i = 1, #files, 1 do
		filesDisplay = filesDisplay .. files[i] .. "\n"
	end
	
	local suiManager = LuaSuiManager()
	local sui = SuiMessageBox.new("RpPlayerMenus", "emptyCallback")
	sui.setTargetNetworkId(SceneObject(pPlayer):getObjectID())
	sui.setTitle("NPC Skill Templates")
	sui.setPrompt(filesDisplay)
	local pageId = sui.sendTo(pPlayer)	
end