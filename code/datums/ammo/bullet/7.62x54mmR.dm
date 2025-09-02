/datum/ammo/bullet/sniper/caliber_7_62x54mmR
	name = "armor-piercing sniper bullet"
	damage = 80
	penetration = ARMOR_PENETRATION_TIER_10
/datum/ammo/bullet/machinegun/caliber_7_62x54mmR // for T37, UPP MMG
	name = "medium machinegun bullet"

	accurate_range = 10
	damage =  50
	penetration = ARMOR_PENETRATION_TIER_6
	accuracy = -HIT_ACCURACY_TIER_2 // 75 accuracy
	shell_speed = AMMO_SPEED_TIER_2
	max_range = 15
	effective_range_max = 7
	damage_falloff = DAMAGE_FALLOFF_TIER_8

/datum/ammo/bullet/machinegun/caliber_7_62x54mmR/set_bullet_traits()
	return
/datum/ammo/bullet/caliber_7_62x54mmR
	name = "machinegun bullet"
	headshot_state = HEADSHOT_OVERLAY_MEDIUM

	accuracy = HIT_ACCURACY_TIER_1
	accuracy_var_low = PROJECTILE_VARIANCE_TIER_8
	accuracy_var_high = PROJECTILE_VARIANCE_TIER_6
	accurate_range = 14
	damage = 35
	penetration= ARMOR_PENETRATION_TIER_6
	shrapnel_chance = SHRAPNEL_CHANCE_TIER_2

/datum/ammo/bullet/caliber_7_62x54mmR/setup_faction_clash_values()
	. = ..()
	accurate_range = 14
