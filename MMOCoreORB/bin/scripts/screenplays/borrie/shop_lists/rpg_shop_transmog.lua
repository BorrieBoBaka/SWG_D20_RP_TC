local shopListTag = "shop_transmog"

rpg_shop_general = {
	manifest = {
		{
			name = "Costumes",
			minItems = 1,
			items = {
				{customName = "Jawa Costume Kit", transmog="jawa", template = "object/tangible/borrp/item/disguise_kit.iff", cost = 25, max = 10, chance = 100, overridePrice = true},
				{customName = "Gamorrean Costume Kit", transmog="gamorrean", template = "object/tangible/borrp/item/disguise_kit.iff", cost = 25, max = 10, chance = 100, overridePrice = true },
				{customName = "Geonosian Costume Kit", transmog="geonosian", template = "object/tangible/borrp/item/disguise_kit.iff", cost = 25, max = 10, chance = 100, overridePrice = true },
			}
		},

	}	
}

RPGVendorShopLists:addShopList(shopListTag, rpg_shop_general)


