local shopListTag = "shop_silver_dawn"

rpg_shop_general = {
	password = "dreamer",
	manifest = {
		{
			name = "Equipment",
			minItems = 2,
			items = {
				{customName = "Silver Dawn Garments", content="faction/silverdawn/uniform/servant", template = "object/tangible/item/roleplay/loot_box_s01.iff", cost = 5, max = 10, chance = 100 , overridePrice = true},
			}
		},
	}	
}

RPGVendorShopLists:addShopList(shopListTag, rpg_shop_general)
