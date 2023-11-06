local shopListTag = "shop_ship"

rpg_shop_general = {
	manifest = {
		{
			name = "Starfighter",
			minItems = 1,
			items = {
				{template = "object/tangible/deed/rp_ship_deed/rp_scyk_deed.iff", cost = 5500, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_z95_deed.iff", cost = 8000, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_dunelizard_a_deed.iff", cost = 28750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_dunelizard_b_deed.iff", cost = 28750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_ywing_deed.iff", cost = 33750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_kihraxz_a_deed.iff", cost = 42500, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_kihraxz_b_deed.iff", cost = 42500, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_kimogila_a_deed.iff", cost = 43750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_kimogila_b_deed.iff", cost = 43750, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_ixiyen_a_deed.iff", cost = 45000, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_ixiyen_b_deed.iff", cost = 45000, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_rihkxyrk_a_deed.iff", cost = 60000, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_rihkxyrk_b_deed.iff", cost = 60000, max = 10, chance = 100, overridePrice = true },
			}
		},
		{
			name = "Boardable Ship",
			minItems = 2,
			items = {
				{template = "object/tangible/deed/rp_ship_deed/rp_yt1300_deed.iff", cost = 25000, max = 10, chance = 100 , overridePrice = true},
				{template = "object/tangible/deed/rp_ship_deed/rp_yt2400_deed.iff", cost = 32000, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/deed/rp_ship_deed/rp_ykl37r_deed.iff", cost = 37500, max = 10, chance = 100, overridePrice = true },	
				{template = "object/tangible/deed/rp_ship_deed/rp_sorosuub_space_yacht_deed.iff", cost = 62500, max = 10, chance = 100, overridePrice = true },	
				{template = "object/tangible/deed/rp_ship_deed/rp_blacksun_transport_deed.iff", cost = 162500, max = 10, chance = 100, overridePrice = true },					
			}
		},
	}	
}

RPGVendorShopLists:addShopList(shopListTag, rpg_shop_general)
