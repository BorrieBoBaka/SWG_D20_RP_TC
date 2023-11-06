local shopListTag = "shop_backpacks"

rpg_shop_general = {
	manifest = {
		{
			name = "Backpacks",
			minItems = 1,
			items = {
				{template = "object/tangible/wearables/backpack/backpack_galactic_marine.iff", cost = 750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/wearables/backpack/backpack_rebel_snow_soldier.iff", cost = 750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/wearables/backpack/backpack_s01.iff", cost = 750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/wearables/backpack/backpack_s03.iff", cost = 750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/wearables/backpack/backpack_s04.iff", cost = 750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/wearables/backpack/backpack_s05.iff", cost = 750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/wearables/backpack/backpack_s06.iff", cost = 750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/wearables/backpack/backpack_s07.iff", cost = 750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/wearables/backpack/backpack_s08.iff", cost = 750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/wearables/backpack/backpack_s09.iff", cost = 750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/wearables/backpack/backpack_snowtrooper.iff", cost = 750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/wearables/backpack/empireday_rebel_endor_backpack.iff", cost = 750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/wearables/backpack/ep3_chiss_poacher_backpack.iff", cost = 750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/wearables/backpack/wearable_backpack_armored.iff", cost = 750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/wearables/backpack/wearable_backpack_recon.iff", cost = 750, max = 10, chance = 100, overridePrice = true },
			}
		},
		
		{
			name = "Novelty Packs",
			minItems = 1,
			items = {
				{template = "object/tangible/wearables/backpack/backpack_krayt_skull.iff", cost = 750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/wearables/backpack/backpack_tauntaun_skull.iff", cost = 750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/wearables/backpack/singing_mountain_clan_backpack.iff", cost = 750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/wearables/backpack/wearable_backpack_c3po.iff", cost = 750, max = 10, chance = 100, overridePrice = true },
			}
		},
		
		{
			name = "Containers",
			minItems = 1,
			items = {
				{template = "object/tangible/component/clothing/cargo_pocket.iff", cost = 250, max = 10, chance = 100, overridePrice = true },
			}
		},
	}	
}

RPGVendorShopLists:addShopList(shopListTag, rpg_shop_general)
