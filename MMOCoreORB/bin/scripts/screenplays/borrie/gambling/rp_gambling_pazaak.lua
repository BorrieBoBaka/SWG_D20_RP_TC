RpPazaakTable = {}

function RpPazaakTable:joinTable(pPlayer, pObject) 
	CreatureObject(pPlayer):sendSystemMessage("Let's play Pazaak!!")
end

function RpPazaakTable:observeTable(pPlayer, pObject) 
	CreatureObject(pPlayer):sendSystemMessage("They're playing Pazaak!")
end