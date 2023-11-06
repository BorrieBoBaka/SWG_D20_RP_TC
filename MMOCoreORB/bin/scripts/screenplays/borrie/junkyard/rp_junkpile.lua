RpJunkpile = {
	junkTemplate = "object/tangible/borrp/world/shared_rp_junk_node_s01.iff"
} 

function RpJunkPile:spawnJunkPiles(planetName, locations, creditCost) 
	
end

function RpJunkPile:searchJunkPile(pPlayer, pObject) 
	CreatureObject(pPlayer):sendSystemMessage("It's a junk pile.")
end