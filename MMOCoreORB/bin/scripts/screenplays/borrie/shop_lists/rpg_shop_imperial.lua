local shopListTag = "shop_imperial"

rpg_shop_general = {
	factionRestrictions = {"empire"},
	manifest = {
		{
			name = "Stormtrooper Armor",
			minItems = 1,
			items = {
				{template = "object/tangible/wearables/armor/roleplay/stormtrooper/armor_stormtrooper_bicep_l.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/stormtrooper/armor_stormtrooper_bicep_r.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/stormtrooper/armor_stormtrooper_boots.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/stormtrooper/armor_stormtrooper_bracer_l.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/stormtrooper/armor_stormtrooper_bracer_r.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/stormtrooper/armor_stormtrooper_chest_plate.iff", cost = 1, max = 10, chance = 100 },
				{customName = "Stormtrooper Chest Plate, Padded", template = "object/tangible/wearables/armor/roleplay/stormtrooper/armor_stormtrooper_chest_plate_pad.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/stormtrooper/armor_stormtrooper_gloves.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/stormtrooper/armor_stormtrooper_helmet.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/stormtrooper/armor_stormtrooper_leggings.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/stormtrooper/armor_stormtrooper_pvp_officer_chest_plate.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/stormtrooper/armor_stormtrooper_leggings.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/stormtrooper/armor_stormtrooper_utility_belt.iff" , cost = 250, max = 10, chance = 100, overridePrice = true },
				{customName = "Stormtrooper Backpack",template = "object/tangible/wearables/backpack/backpack_sandtrooper.iff" , cost = 250, max = 10, chance = 100, overridePrice = true },
			}
		},
		{
			name = "Scout Trooper Armor",
			minItems = 1,
			items = {
				{template = "object/tangible/wearables/armor/roleplay/scout_trooper/armor_scout_trooper_bicep_l.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/scout_trooper/armor_scout_trooper_bicep_r.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/scout_trooper/armor_scout_trooper_boots.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/scout_trooper/armor_scout_trooper_bracer_l.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/scout_trooper/armor_scout_trooper_bracer_r.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/scout_trooper/armor_scout_trooper_chest_plate.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/scout_trooper/armor_scout_trooper_gloves.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/scout_trooper/armor_scout_trooper_helmet.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/scout_trooper/armor_scout_trooper_leggings.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_utility_belt.iff", cost = 250, max = 10, chance = 100, overridePrice = true },
			}
		},
		
		{
			name = "Assault Trooper Armor",
			minItems = 1,
			items = {
				{template = "object/tangible/wearables/armor/roleplay/assault_trooper/armor_assault_trooper_bicep_l.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/assault_trooper/armor_assault_trooper_bicep_r.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/assault_trooper/armor_assault_trooper_boots.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/assault_trooper/armor_assault_trooper_bracer_l.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/assault_trooper/armor_assault_trooper_bracer_r.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/assault_trooper/armor_assault_trooper_chest_plate.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/assault_trooper/armor_assault_trooper_gloves.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/assault_trooper/armor_assault_trooper_helmet.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/assault_trooper/armor_assault_trooper_leggings.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_utility_belt.iff", cost = 250, max = 10, chance = 100, overridePrice = true },
			}
		},
		
		{
			name = "Snow Trooper Armor",
			minItems = 1,
			items = {
				{template = "object/tangible/wearables/armor/roleplay/snow_trooper/armor_snowtrooper_bicep_l.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/snow_trooper/armor_snowtrooper_bicep_r.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/snow_trooper/armor_snowtrooper_boots.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/snow_trooper/armor_snowtrooper_bracer_l.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/snow_trooper/armor_snowtrooper_bracer_r.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/snow_trooper/armor_snowtrooper_chest_plate.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/snow_trooper/armor_snowtrooper_gloves.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/snow_trooper/armor_snowtrooper_helmet.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/snow_trooper/armor_snowtrooper_leggings.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/snowtrooper/armor_snowtrooper_belt.iff", cost = 250, max = 10, chance = 100, overridePrice = true },
			}
		},
		
		{
			name = "Weapons",
			minItems = 1,
			items = {
				{template = "object/weapon/roleplay/ranged/pistol/se14_blaster_pistol.iff", cost = 250, max = 10, chance = 100 },
				{template = "object/weapon/roleplay/ranged/carbine/e11_carbine.iff", cost = 250, max = 10, chance = 100 },
				{template = "object/weapon/roleplay/ranged/rifle/dlt19_heavy_blaster_rifle.iff", cost = 250, max = 10, chance = 100 },
				{template = "object/weapon/roleplay/ranged/rifle/dlt20a_heavy_blaster_rifle.iff", cost = 250, max = 10, chance = 100 },
				{template = "object/weapon/roleplay/ranged/rifle/t21_light_repeating_rifle.iff", cost = 250, max = 10, chance = 100 },
			}
		},
		
		{
			name = "Ships",
			minItems = 1,
			items = {
				{template = "object/tangible/deed/rp_ship_deed/rp_tie_fighter_deed.iff", cost = 1500, max = 10, chance = 100, overridePrice = true},
				{template = "object/tangible/deed/rp_ship_deed/rp_tie_bomber_deed.iff", cost = 21250, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_tie_interceptor_deed.iff", cost = 18750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_tie_aggressor_deed.iff", cost = 18750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_tie_oppressor_deed.iff", cost = 25000, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_vt49_deed.iff", cost = 40000, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_tie_advanced_deed.iff", cost = 62500, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_tie_defender_deed.iff", cost = 75000, max = 10, chance = 100, overridePrice = true },
				
				
			}
		},
		
		{
			name = "Outfits",
			minItems = 1,
			items = {
				{template = "object/tangible/wearables/bodysuit/bodysuit_tie_fighter.iff", cost = 5, max = 10, chance = 100, overridePrice = true},
				{template = "object/tangible/wearables/helmet/helmet_tie_fighter.iff", cost = 5, max = 10, chance = 100, overridePrice = true},
				{template = "object/tangible/wearables/bodysuit/bodysuit_atat.iff", cost = 5, max = 10, chance = 100, overridePrice = true},
				{template = "object/tangible/wearables/helmet/helmet_atat.iff", cost = 5, max = 10, chance = 100, overridePrice = true},			
			}
		},
		
		{
			name = "Rank Plates",
			minItems = 1,
			items = {
				{template = "object/tangible/wearables/rank/rank_imp_admiral.iff", cost = 5, max = 10, chance = 100, overridePrice = true},		
				{template = "object/tangible/wearables/rank/rank_imp_captain.iff", cost = 5, max = 10, chance = 100, overridePrice = true},		
				{template = "object/tangible/wearables/rank/rank_imp_colonel.iff", cost = 5, max = 10, chance = 100, overridePrice = true},		
				{template = "object/tangible/wearables/rank/rank_imp_commander.iff", cost = 5, max = 10, chance = 100, overridePrice = true},		
				{template = "object/tangible/wearables/rank/rank_imp_general.iff", cost = 5, max = 10, chance = 100, overridePrice = true},		
				{template = "object/tangible/wearables/rank/rank_imp_lieutenant.iff", cost = 5, max = 10, chance = 100, overridePrice = true},		
				{template = "object/tangible/wearables/rank/rank_imp_major.iff", cost = 5, max = 10, chance = 100, overridePrice = true},		
				{template = "object/tangible/wearables/rank/rank_imp_moff.iff", cost = 5, max = 10, chance = 100, overridePrice = true},		
			}
		},
	}	
}

RPGVendorShopLists:addShopList(shopListTag, rpg_shop_general)
