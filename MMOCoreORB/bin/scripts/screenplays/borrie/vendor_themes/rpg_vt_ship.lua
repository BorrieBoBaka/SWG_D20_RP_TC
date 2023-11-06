local themeTag = "ship"

vt = {
	dialog = {
		greeting = "You'd be wise to get yourself a ship. Especially one you can rely on. A ship gives you freedom in this galaxy unlike anything else.", --1
		browse = "I've got a warranty from the manufacturer for most of these ships. Do you want a starfighter variant, or something you can really live in?", --2
		items = "We provide a fifteen point inspection on all new purchases.", --2
		startShopping = "This is a newer model based on an older design.", --3
		abort = "Don't leave yourself stranded! Hope to see you again soon!", --4
	}
}

RPGVendorThemes:addTheme(themeTag, vt)