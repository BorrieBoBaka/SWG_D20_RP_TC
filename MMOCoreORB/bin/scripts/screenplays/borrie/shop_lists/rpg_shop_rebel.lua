local shopListTag = "shop_rebel"

rpg_shop_general = {
	manifest = {
		{
			name = "Marine Armor",
			minItems = 1,
			items = {
				{template="object/tangible/wearables/armor/roleplay/marine/armor_marine_bicep_l.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/marine/armor_marine_bicep_r.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/marine/armor_marine_boots.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/marine/armor_marine_bracer_l.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/marine/armor_marine_bracer_r.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/marine/armor_marine_chest_plate.iff", cost = 1, max = 10, chance = 100 },
				{customName = "Marine Armor Chest Plate, Firestar", template="object/tangible/wearables/armor/roleplay/marine/armor_marine_chest_plate_firestar.iff", cost = 1, max = 10, chance = 100 },
				{customName = "Marine Armor Chest Plate, Rebel", template="object/tangible/wearables/armor/roleplay/marine/armor_marine_chest_plate_rebel.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/marine/armor_marine_gloves.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/marine/armor_marine_helmet.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/marine/armor_marine_leggings.iff", cost = 1, max = 10, chance = 100 },
			}
		},
	
		{
			name = "Rebel Assault Armor",
			minItems = 1,
			items = {
				{template = "object/tangible/wearables/armor/roleplay/rebel_assault/armor_rebel_assault_bicep_l.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/rebel_assault/armor_rebel_assault_bicep_r.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/rebel_assault/armor_rebel_assault_boots.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/rebel_assault/armor_rebel_assault_bracer_l.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/rebel_assault/armor_rebel_assault_bracer_r.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/rebel_assault/armor_rebel_assault_chest_plate.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/rebel_assault/armor_rebel_assault_gloves.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/rebel_assault/armor_rebel_assault_helmet.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/rebel_assault/armor_rebel_assault_leggings.iff", cost = 1, max = 10, chance = 100 },
				--{template = "object/tangible/wearables/armor/rebel_assault/armor_rebel_assault_belt.iff" , cost = 250, max = 10, chance = 100, overridePrice = true },
			}
		},
		
		{
			name = "Rebel Battle Armor",
			minItems = 1,
			items = {
				{template = "object/tangible/wearables/armor/roleplay/rebel_battle/armor_rebel_battle_bicep_l.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/rebel_battle/armor_rebel_battle_bicep_r.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/rebel_battle/armor_rebel_battle_boots.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/rebel_battle/armor_rebel_battle_bracer_l.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/rebel_battle/armor_rebel_battle_bracer_r.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/rebel_battle/armor_rebel_battle_chest_plate.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/rebel_battle/armor_rebel_battle_gloves.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/rebel_battle/armor_rebel_battle_helmet.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/tangible/wearables/armor/roleplay/rebel_battle/armor_rebel_battle_leggings.iff", cost = 1, max = 10, chance = 100 },
				--{template = "object/tangible/wearables/armor/rebel_battle/armor_rebel_battle_belt.iff", cost = 250, max = 10, chance = 100, overridePrice = true },
			}
		},
		
		{
			name = "Rebel Cold Weather Gear",
			minItems = 1,
			items = {
				{template="object/tangible/wearables/armor/roleplay/rebel_snow/armor_rebel_snow_bicep_l.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/rebel_snow/armor_rebel_snow_bicep_r.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/rebel_snow/armor_rebel_snow_boots.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/rebel_snow/armor_rebel_snow_bracer_l.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/rebel_snow/armor_rebel_snow_bracer_r.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/rebel_snow/armor_rebel_snow_chest_plate.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/rebel_snow/armor_rebel_snow_gloves.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/rebel_snow/armor_rebel_snow_helmet.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/rebel_snow/armor_rebel_snow_leggings.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/rebel_snow/armor_rebel_snow_belt.iff", cost = 250, max = 10, chance = 100, overridePrice = true },
			}
		},
		
		{
			name = "Rebel Spec Force Armor",
			minItems = 1,
			items = {
				{template="object/tangible/wearables/armor/roleplay/rebel_spec_force/armor_rebel_spec_force_bicep_l.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/rebel_spec_force/armor_rebel_spec_force_bicep_r.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/rebel_spec_force/armor_rebel_spec_force_boots.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/rebel_spec_force/armor_rebel_spec_force_bracer_l.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/rebel_spec_force/armor_rebel_spec_force_bracer_r.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/rebel_spec_force/armor_rebel_spec_force_chest_plate.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/rebel_spec_force/armor_rebel_spec_force_gloves.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/rebel_spec_force/armor_rebel_spec_force_helmet.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/roleplay/rebel_spec_force/armor_rebel_spec_force_leggings.iff", cost = 1, max = 10, chance = 100 },
				{template="object/tangible/wearables/armor/rebel_spec_force/armor_rebel_spec_force_belt.iff", cost = 250, max = 10, chance = 100, overridePrice = true },
			}
		},
		
		{
			name = "Weapons",
			minItems = 1,
			items = {
				{template = "object/weapon/roleplay/ranged/carbine/alliance_needler_carbine.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/weapon/roleplay/ranged/rifle/a280_blaster_rifle.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/weapon/roleplay/ranged/pistol/alliance_disruptor.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/weapon/roleplay/ranged/pistol/dh18a_blaster_pistol.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/weapon/roleplay/ranged/pistol/cm_dead_bolt_pistol.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/weapon/roleplay/ranged/pistol/crimson_nova_pistol.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/weapon/roleplay/ranged/carbine/ngantzarvel_9118_carbine.iff", cost = 1, max = 10, chance = 100 },
				{template = "object/weapon/roleplay/ranged/rifle/cm_sniper_rifle.iff", cost = 1, max = 10, chance = 100 },
			}
		},
		
		{
			name = "Ships",
			minItems = 1,
			items = {
				{template = "object/tangible/deed/rp_ship_deed/rp_z95_deed.iff", cost = 1500, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_ywing_deed.iff", cost = 33750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_xwing_deed.iff", cost = 37500, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_ykl37r_deed.iff", cost = 37500, max = 10, chance = 100, overridePrice = true },	
				{template = "object/tangible/deed/rp_ship_deed/rp_awing_deed.iff", cost = 43750, max = 10, chance = 100, overridePrice = true},
				{template = "object/tangible/deed/rp_ship_deed/rp_bwing_deed.iff", cost = 55000, max = 10, chance = 100, overridePrice = true },							
			}
		},
		
		{
			name = "Rank Plates",
			minItems = 1,
			items = {
				{template = "object/tangible/wearables/rank/rank_reb_captain.iff", cost = 5, max = 10, chance = 100, overridePrice = true},		
				{template = "object/tangible/wearables/rank/rank_reb_colonel.iff", cost = 5, max = 10, chance = 100, overridePrice = true},		
				{template = "object/tangible/wearables/rank/rank_reb_commander.iff", cost = 5, max = 10, chance = 100, overridePrice = true},		
				{template = "object/tangible/wearables/rank/rank_reb_general.iff", cost = 5, max = 10, chance = 100, overridePrice = true},		
				{template = "object/tangible/wearables/rank/rank_reb_lieutenant.iff", cost = 5, max = 10, chance = 100, overridePrice = true},		
				{template = "object/tangible/wearables/rank/rank_reb_major.iff", cost = 5, max = 10, chance = 100, overridePrice = true},			
			}
		},
	}	
}

RPGVendorShopLists:addShopList(shopListTag, rpg_shop_general)
