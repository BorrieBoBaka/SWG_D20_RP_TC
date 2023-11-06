RpSabaacTable = {}

function RpSabaacTable:joinTable(pPlayer, pObject) 
	CreatureObject(pPlayer):sendSystemMessage("Let's play Sabaac!!")
end

function RpSabaacTable:observeTable(pPlayer, pObject) 
	CreatureObject(pPlayer):sendSystemMessage("They're playing Sabaac!")
end