local themeTag = "imperial"

rpg_vt_general = {
	dialog = {
		greeting = "Interested in requisitions? I'll pull up the quartermaster's inventory.", --1
		browse = "What will you be requesting today? I'll get the proper paperwork prepared.", --2
		items = "This is what is currently available to you.", --2
		startShopping = "If you find prices too steep, take it up with your superior officer. I do not have authority to change them.", --3
		abort = "Good day.", --4
	}
}

RPGVendorThemes:addTheme(themeTag, rpg_vt_general)