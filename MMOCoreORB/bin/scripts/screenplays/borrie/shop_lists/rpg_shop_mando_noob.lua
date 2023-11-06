local shopListTag = "shop_mando_noob"

rpg_shop_general = {
	manifest = {
		{
			name = "Makeshift Beskar'gam",
			minItems = 1,
			items = {
				{template = "object/tangible/wearables/armor/roleplay/mandalorian/armor_mandalorian_helmet_lite.iff", cost = 200, max = 10, chance = 100, overridePrice = true },
				{customName = "Angular Mandalorian Armor Helmet", template = "object/tangible/wearables/armor/roleplay/mandalorian/armor_mandalorian_helmet_lite_s02.iff", cost = 200, max = 10, chance = 100, overridePrice = true },
			}
		},

	}	
}

RPGVendorShopLists:addShopList(shopListTag, rpg_shop_general)
