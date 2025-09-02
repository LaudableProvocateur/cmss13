/datum/ammo/bullet/revolver/small/cmb
	damage = 60

/datum/ammo/bullet/revolver/small/hollowpoint
	name = "small hollowpoint revolver bullet"
	headshot_state = HEADSHOT_OVERLAY_MEDIUM

	damage = 75 // way too strong because it's hard to make a good balance between HP and normal with this system, but the damage falloff is really strong
	penetration = 0
	damage_falloff = DAMAGE_FALLOFF_TIER_6
