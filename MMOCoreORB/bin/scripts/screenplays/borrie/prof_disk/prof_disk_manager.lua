RpProfessionDisk = {
	professions = {
		"rp_training_military",
		"rp_training_mando",
		"rp_training_tka",
		"rp_training_medical",
		"rp_training_engineer",
		"rp_training_diplomatic",
		"rp_training_spy",
		"rp_training_criminal",		
	},
	
	professionNames = {
		["rp_training_military"] = "Military",
		["rp_training_mando"] =  "Mandalorian",
		["rp_training_tka"] = "Teräs Käsi Artist",
		["rp_training_medical"] = "Medical",
		["rp_training_engineer"] = "Engineer",
		["rp_training_diplomatic"] = "Diplomatic",
		["rp_training_spy"] = "Espionage",
		["rp_training_criminal"] = "Criminal",
	}
}

function RpProfessionDisk:initializeDisk(pObject, isBeginner) 
	--Pick a random skill to assign this holocron
	local skillName = self:getRandomProfession()
	local displayName = self.professionNames[skillName]	
		
	--Set internal data
	SceneObject(pObject):setStoredString("skill", skillName)
	local minSkill = math.random(1,5)
	local maxSkill = math.random(minSkill + 1,12)
	
	if(isBeginner) then
		minSkill = 1
		maxSkill = 3
	end
	
	SceneObject(pObject):setStoredInt("skill_min", minSkill)
	SceneObject(pObject):setStoredInt("skill_max", maxSkill)
	
	--Set Name of Scroll to show what skill it can do. 
	SceneObject(pObject):setCustomObjectName(displayName .. " Training Disk (" .. self:intToRoman(minSkill) .. " - " .. self:intToRoman(maxSkill) ..")")
	
end

function RpProfessionDisk:openDiskMenu(pPlayer, pObject)

end

function RpProfessionDisk:getRandomProfession()	
	return self.professions[math.random(#self.professions)]
end

function RpProfessionDisk:intToRoman(num)
    local roman = {
        {1000, "M"},
        {900, "CM"},
        {500, "D"},
        {400, "CD"},
        {100, "C"},
        {90, "XC"},
        {50, "L"},
        {40, "XL"},
        {10, "X"},
        {9, "IX"},
        {5, "V"},
        {4, "IV"},
        {1, "I"}
    }
 
    local result = ""
    for i = 1, #roman do
        local val, letter = table.unpack(roman[i])
 
        while num >= val do
            num = num - val
            result = result .. letter
        end
    end
    return result
end