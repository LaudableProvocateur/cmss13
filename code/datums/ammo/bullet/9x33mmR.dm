// .357 Magnum, or 9x33mmR

/datum/ammo/bullet/revolver/caliber_9x33mmR
	name = "small revolver bullet"
	headshot_state = HEADSHOT_OVERLAY_LIGHT

	damage = 60

	penetration = ARMOR_PENETRATION_TIER_3

/datum/ammo/bullet/revolver/caliber_9x33mmR/hp
	name = "small hollowpoint revolver bullet"
	headshot_state = HEADSHOT_OVERLAY_MEDIUM

	damage = 75 // way too strong because it's hard to make a good balance between HP and normal with this system, but the damage falloff is really strong
	penetration = 0
	damage_falloff = DAMAGE_FALLOFF_TIER_6
