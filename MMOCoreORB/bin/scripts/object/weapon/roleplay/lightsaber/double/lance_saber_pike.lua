object_weapon_roleplay_lightsaber_double_lance_saber_pike = object_weapon_melee_polearm_crafted_saber_shared_sword_lightsaber_pike_s1:new {

	attackType = MELEEATTACK,
	damageType = LIGHTSABER,
	armorPiercing = HEAVY,

	minDamage = 1, --Amount of Die used in Damage
	maxDamage = 10, --Type of Die used in Damage

	pointBlankRange = 0,
	pointBlankAccuracy = 5,
	idealRange = 1,
	idealAccuracy = 10,
	maxRange = 3,
	maxRangeAccuracy = 99,

	childObjects = {
		{templateFile = "object/tangible/inventory/lightsaber_inventory_2.iff", x = 0, z = 0, y = 0, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = 4}
	},
}
ObjectTemplates:addTemplate(object_weapon_roleplay_lightsaber_double_lance_saber_pike, "object/weapon/roleplay/lightsaber/double/lance_saber_pike.iff")