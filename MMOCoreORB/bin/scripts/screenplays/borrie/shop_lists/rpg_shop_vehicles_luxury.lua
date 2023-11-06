local shopListTag = "shop_vehicles_luxury"

rpg_shop_speeders = {
	manifest = {
		{
			name = "Luxury Vehicles & Airspeeders",
			minItems = 1,
			items = {		
				{template = "object/tangible/tcg/series4/vehicle_deed_geonosian_speeder.iff", cost = 20000, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/tcg/series5/vehicle_deed_xj6_air_speeder.iff", cost = 35000, max = 10, chance = 100, overridePrice = true },	
				{template = "object/tangible/deed/vehicle_deed/landspeeder_av21_deed.iff", cost = 45000, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/tcg/series3/vehicle_deed_koro2_exodrive_airspeeder.iff", cost = 55000, max = 10, chance = 100, overridePrice = true },
				{template = "object/tangible/tcg/series1/vehicle_deed_organa_speeder.iff", cost = 75000, max = 10, chance = 100, overridePrice = true },						
			}
		},
		
		{
			name = "Customization Kits",
			minItems = 1,
			items = {				
				{template = "object/tangible/item/vehicle_customization.iff", cost = 5, max = 10, chance = 100, overridePrice = true },		
			}
		},
	}	
}

RPGVendorShopLists:addShopList(shopListTag, rpg_shop_speeders)