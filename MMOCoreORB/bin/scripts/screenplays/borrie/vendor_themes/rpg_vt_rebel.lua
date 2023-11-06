local themeTag = "rebel"

rpg_vt_general = {
	dialog = {
		greeting = "There's a lot of equipment to sift through, and we're selling it wholesale. Need to supply yourself? We're not picky about who is buying.", --1
		browse = "We've been collecting everything we can from abandoned bases, battlefields, etc. So some of this stuff might be a little worse for wear, but it'll work.", --2
		items = "This is what is currently available in our stock.", --2
		startShopping = "Like I said, I guarantee it will work, but I can't guarantee its in the best condition.", --3
		abort = "Have a good one!", --4
	}
}

RPGVendorThemes:addTheme(themeTag, rpg_vt_general)