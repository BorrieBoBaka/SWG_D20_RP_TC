local shopListTag = "shop_mounts_dantooine"

rpg_shop_mount_tatooine = {
	manifest = {
		{
			name = "Mounts",
			minItems = 1,
			items = {
				{template = "object/tangible/deed/pet_deed/bol_deed.iff", cost = 1000, max = 10, chance = 100, overridePrice = true, isMount = true},
			}
		},
	}	
}

RPGVendorShopLists:addShopList(shopListTag, rpg_shop_mount_tatooine)