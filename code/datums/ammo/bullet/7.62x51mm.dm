/datum/ammo/bullet/caliber_7_62x51mm
	name = "minigun bullet"
	headshot_state = HEADSHOT_OVERLAY_MEDIUM

	accuracy = -HIT_ACCURACY_TIER_3
	accuracy_var_low = PROJECTILE_VARIANCE_TIER_6
	accuracy_var_high = PROJECTILE_VARIANCE_TIER_6
	accurate_range = 12
	damage = 35
	penetration = ARMOR_PENETRATION_TIER_6

/datum/ammo/bullet/caliber_7_62x51mm/New()
	..()
	if(SSticker.mode && MODE_HAS_FLAG(MODE_FACTION_CLASH))
		damage = 15
	else if(SSticker.current_state < GAME_STATE_PLAYING)
		RegisterSignal(SSdcs, COMSIG_GLOB_MODE_PRESETUP, PROC_REF(setup_hvh_damage))

/datum/ammo/bullet/caliber_7_62x51mm/proc/setup_hvh_damage()
	SIGNAL_HANDLER
	if(MODE_HAS_FLAG(MODE_FACTION_CLASH))
		damage = 15
/datum/ammo/bullet/caliber_7_62x51mm
	name = "M60 bullet"
	headshot_state = HEADSHOT_OVERLAY_MEDIUM

	accuracy = HIT_ACCURACY_TIER_2
	accuracy_var_low = PROJECTILE_VARIANCE_TIER_8
	accuracy_var_high = PROJECTILE_VARIANCE_TIER_6
	accurate_range = 12
	damage = 45 //7.62x51 is scary
	penetration= ARMOR_PENETRATION_TIER_6
	shrapnel_chance = SHRAPNEL_CHANCE_TIER_2
/datum/ammo/bullet/caliber_7_62x51mm
	name = "minigun bullet"
	headshot_state = HEADSHOT_OVERLAY_MEDIUM
	icon_state = "bullet_large"

	accuracy = -HIT_ACCURACY_TIER_1
	accuracy_var_low = PROJECTILE_VARIANCE_TIER_8
	accuracy_var_high = PROJECTILE_VARIANCE_TIER_8
	accurate_range = 12
	damage = 40
	penetration = ARMOR_PENETRATION_TIER_6
	damage_armor_punch = 1

/datum/ammo/bullet/tank/setup_faction_clash_values()
	. = ..()
	damage = 15
