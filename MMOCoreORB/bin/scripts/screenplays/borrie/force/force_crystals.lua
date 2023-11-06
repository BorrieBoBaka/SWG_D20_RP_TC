crystal_list = {
	--Template, Name, color var
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Red", 0},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Dark Red", 1},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Light Green", 2},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Dark Green", 3},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Blue", 4},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Dark Blue", 5},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Yellow", 6},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Dark Yellow", 7},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Light Purple", 8},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Dark Purple", 9},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Bronze", 10},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Brown", 11},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Silver", 32},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Dark Silver", 33},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Magenta", 34},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Cyan", 35},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Dark Orange", 36},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Orange", 37},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Viridian", 38},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Violet", 39},	
}

for i,v in pairs(crystal_list) do
    BorForce:addCrystal(v)
end


special_crystal_list = {
	--Template, Name, color var
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Maul's Vengence", 12},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Kun's Blood", 13},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Bondara's Folly", 14},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Ulic's Redemption", 15},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Bane's Heart", 16},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Gallia's Intuition", 17},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Prowess of Plo Koon", 18},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "B'nar's Sacrifice", 19},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Windu's Guile", 20},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Mundi's Response", 21},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Strength of Luminaria", 22},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Baas's Wisdom", 23},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Quintessence of the Force", 24},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Dawn of Dagobah", 25},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Horn's Future", 26},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Qui-gon's Devotion", 27},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Kenobi's Legacy", 28},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Sunrider's Destiny", 29},
	{"object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff", "Kit's Ferocity", 30},
}

for i,v in pairs(special_crystal_list) do
    BorForce:addSpecialCrystal(v)
end

crystal_locations = {
	["rp_carida"]	 = {0,1,4,5,32,33,34},
	["rp_tatooine"]	 = {2,3,6,7,10,11,36,37},
	["rp_dantooine"] = {0,1,2,3,4,5,6,7,8,9},
	["rp_sulon"]	 = {0,1,2,3,4,5,6,36,37,34},
	["rp_dathomir"]	 = {0,1,10,32,33,34,35,39},
	["rp_yavin4"]	 = {2,3,4,5,32,33,35},
	["rp_xovros6"]	 = {4,5,34,35,38,39},
}

BorForce:addCrystalLocation(crystal_locations)

--BorForce:spawnLightsaberCrystals()

