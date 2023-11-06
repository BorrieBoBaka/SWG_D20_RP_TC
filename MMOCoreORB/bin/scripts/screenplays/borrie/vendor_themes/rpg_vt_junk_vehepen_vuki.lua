local themeTag = "junkdealer_vehepen_vuki"

rpg_vt_general = {
	dialog = {
		greeting = "'Ello thar, friend! I'm Vehepen Vuki! You need it? I probably got it! I've got a lot of junk collected over decades living here in Mos Eisley.", --1
		browse = "Do you have anythin' in particulars you'd be lookin' for?", --2
		items = "Well, I might be able to find these out in the old yard.", --2
		startShopping = "Take a look, make sure it's th'right thing fer ya, haha!", --3
		abort = "Y'all come back, now! I always have somethin' new to sell! Haha!", --4
	}
}

RPGVendorThemes:addTheme(themeTag, rpg_vt_general)