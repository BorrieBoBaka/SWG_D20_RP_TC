local shopListTag = "shop_medicine_novice"

rpg_shop_stimpack_novice = {
	manifest = {
		{
			name = "Medicine",
			minItems = 1,
			items = {
				{template = "object/tangible/medicine/roleplay/rp_stimpack_a.iff", cost = 75, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/medicine/roleplay/rp_stimpack_b.iff", cost = 125, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/medicine/roleplay/rp_stimpack_c.iff", cost = 250, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/medicine/roleplay/rp_stimpack_d.iff", cost = 500, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/medicine/roleplay/rp_stimpack_e.iff", cost = 1000, max = 10, chance = 100, overridePrice = true },
			}
		},
	}	
}

RPGVendorShopLists:addShopList(shopListTag, rpg_shop_stimpack_novice)