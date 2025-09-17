// 7.62x25mm Tokarev
// Used by
/*

used in type19.dm
used in ppsh-17b.dm

*/
/datum/ammo/bullet/smg/caliber_7_62x25mm
	name = "simple submachinegun bullet"
	damage = 35
	accurate_range = 7
	effective_range_max = 10
	penetration = ARMOR_PENETRATION_TIER_4
	damage_falloff = DAMAGE_FALLOFF_TIER_6
	scatter = SCATTER_AMOUNT_TIER_6
/datum/ammo/bullet/pistol/caliber_7_62x25mm/highimpact
	name = "high-impact pistol bullet"
	sound_override = 'sound/weapons/gun_DE50.ogg'
	penetration = ARMOR_PENETRATION_TIER_6
	debilitate = list(0,1.5,0,0,0,1,0,0)
	flags_ammo_behavior = AMMO_BALLISTIC
/datum/ammo/bullet/pistol/caliber_7_62x25mm
	name = "heavy pistol bullet"
	headshot_state = HEADSHOT_OVERLAY_MEDIUM
	accuracy = -HIT_ACCURACY_TIER_3
	accuracy_var_low = PROJECTILE_VARIANCE_TIER_6
	damage = 55
	penetration = ARMOR_PENETRATION_TIER_3
	shrapnel_chance = SHRAPNEL_CHANCE_TIER_2
