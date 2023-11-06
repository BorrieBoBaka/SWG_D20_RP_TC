local themeTag = "backpacks"

rpg_vt_general = {
	dialog = {
		greeting = "Greetings. Do you need something to carry your burdens? My packs may be of assistance.", --1
		browse = "How big of a pack are you looking for? Do you want something practical, or stylish?", --2
		items = "Take a look, these have all been made with strong craftsmanship.", --2
		startShopping = "Try it on, see how it feels...", --3
		abort = "Come back any time! I'll be here if you need anything more.", --4
	}
}

RPGVendorThemes:addTheme(themeTag, rpg_vt_general)