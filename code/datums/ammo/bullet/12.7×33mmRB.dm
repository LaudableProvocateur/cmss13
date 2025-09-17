// .50 Action Express / 12.7x33mmRB
/*
Used By
SU-6
M1911
HI-POW Magnum
*/

/*

First thing to define is this is not real "50 cal"
Its a bullet which is named .50 action express when its really a conventional 12.7x33mmRB bullet
That being said this bullet as far as bullets used in handguns is concerned is fucking SCARY powerful.
Even with two hands the form factor of a deagle would not allow an unskilled operator to fire the weapon without tremendous recoil.

The CO deagle is exempt from this because money solved the recoil problem via unknown means.

This deagle should be COMICALLY strong interms of sheer lethality.  And it should COMICALLY hard to use to match.

Additionally this deagle should overcome the AP issue through sheer fucking lethality as opposed to AP.

*/
/datum/ammo/bullet/pistol/caliber_12_7x33mmRB
	name = ".50 AE bullet"
	damage = 85
	headshot_state = HEADSHOT_OVERLAY_HEAVY
	accuracy = -HIT_ACCURACY_TIER_3
	accuracy_var_low = PROJECTILE_VARIANCE_TIER_6
	penetration = ARMOR_PENETRATION_TIER_3
	shrapnel_chance = SHRAPNEL_CHANCE_TIER_5
/datum/ammo/bullet/pistol/caliber_12_7x33mmRB/highimpact
	name = ".50 AE HIP bullet"
	penetration = ARMOR_PENETRATION_TIER_4
	debilitate = list(0,1.5,0,0,0,1,0,0)
	flags_ammo_behavior = AMMO_BALLISTIC

/datum/ammo/bullet/pistol/caliber_12_7x33mmRB/highimpact/ap
	name = ".50 AE HIAP bullet"
	penetration = ARMOR_PENETRATION_TIER_10
	damage = 65

/datum/ammo/bullet/pistol/caliber_12_7x33mmRB/highimpact/New()
	..()
	RegisterSignal(src, COMSIG_AMMO_POINT_BLANK, PROC_REF(handle_battlefield_execution))

/datum/ammo/bullet/pistol/caliber_12_7x33mmRB/highimpact/on_hit_mob(mob/M, obj/projectile/P)
	knockback(M, P, 4)
