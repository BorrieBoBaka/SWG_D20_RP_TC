local themeTag = "junkdealer"

rpg_vt_general = {
	dialog = {
		greeting = "I've got plenty of junk I'm sure will be a fine treasure for you. What do ya need?", --1
		browse = "Have something particular in mind, or just looking?", --2
		items = "I might have some items of the type availble. Anything jump out at you?", --2
		startShopping = "Just so y'know, all prices are final. Can't afford to haggle much these days.", --3
		abort = "Come back again soon!", --4
	}
}

RPGVendorThemes:addTheme(themeTag, rpg_vt_general)