RpSlotMachine = {}

function RpSlotMachine:initializeMachine(pObject) 

end

function RpSlotMachine:playSlots(pPlayer, pObject) 
	CreatureObject(pPlayer):sendSystemMessage("Let's play!")
end