// Do note that 9x19mm or 9mm parabelum or 9mm luger or 9mm NATO is often abbreviated.
/datum/ammo/bullet/pistol
	name = "pistol bullet"
	headshot_state = HEADSHOT_OVERLAY_MEDIUM
	accuracy = -HIT_ACCURACY_TIER_3
	accuracy_var_low = PROJECTILE_VARIANCE_TIER_6
	damage = 40
	penetration= ARMOR_PENETRATION_TIER_2
	shrapnel_chance = SHRAPNEL_CHANCE_TIER_2
/datum/ammo/bullet/pistol/setup_faction_clash_values()
	. = ..()
	accuracy += 20
	accurate_range -= 2 //we want pistols to be more accurate but only at short range
