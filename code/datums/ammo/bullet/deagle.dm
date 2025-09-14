/datum/ammo/bullet/pistol/deagle //Commander's variant
	name = ".50 heavy pistol bullet"
	damage = 60
	headshot_state = HEADSHOT_OVERLAY_HEAVY
	accuracy = -HIT_ACCURACY_TIER_3
	accuracy_var_low = PROJECTILE_VARIANCE_TIER_6
	penetration = ARMOR_PENETRATION_TIER_6
	shrapnel_chance = SHRAPNEL_CHANCE_TIER_5

/datum/ammo/bullet/pistol/deagle/highimpact
	name = ".50 high-impact pistol bullet"
	penetration = ARMOR_PENETRATION_TIER_4
	debilitate = list(0,1.5,0,0,0,1,0,0)
	flags_ammo_behavior = AMMO_BALLISTIC

/datum/ammo/bullet/pistol/deagle/highimpact/ap
	name = ".50 high-impact armor piercing pistol bullet"
	penetration = ARMOR_PENETRATION_TIER_10
	damage = 50

/datum/ammo/bullet/pistol/deagle/highimpact/upp
	name = "high-impact pistol bullet"
	sound_override = 'sound/weapons/gun_DE50.ogg'
	penetration = ARMOR_PENETRATION_TIER_6
	debilitate = list(0,1.5,0,0,0,1,0,0)
	flags_ammo_behavior = AMMO_BALLISTIC

/datum/ammo/bullet/pistol/deagle/highimpact/New()
	..()
	RegisterSignal(src, COMSIG_AMMO_POINT_BLANK, PROC_REF(handle_battlefield_execution))

/datum/ammo/bullet/pistol/deagle/highimpact/on_hit_mob(mob/M, obj/projectile/P)
	knockback(M, P, 4)

/datum/ammo/bullet/pistol/deagle
	name = ".50 heavy pistol bullet"
	damage = 45
	headshot_state = HEADSHOT_OVERLAY_HEAVY
	accuracy = -HIT_ACCURACY_TIER_3
	accuracy_var_low = PROJECTILE_VARIANCE_TIER_6
	penetration = ARMOR_PENETRATION_TIER_6
	shrapnel_chance = SHRAPNEL_CHANCE_TIER_5
