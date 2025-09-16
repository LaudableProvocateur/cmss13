// THE MOST AGGREGIOUS FUCKUP IN THE AMMO DEFINITIONS FILE, BEING RELEVANT TO SEVERAL FIREARMS SIMULTANIOUSLY.
// Deagle .50 "this includes the basic deagle and extends into the CO deagle but does not include BASIC co deagle ammo.  Horrible.."
// KT-42 .44 "common ammo caliber, but sourced of the exact same bullets as the deagle."
// M1911 .45 "common ammo caliber, also extends into CO m1911."  FIXED!!
// Type 73 7.62x25mm Tokarev "Another case of this pistol bullet being used, does NOT extend into the type 74 HI IMPACT"


/datum/ammo/bullet/pistol/heavy
	name = "heavy pistol bullet"
	headshot_state = HEADSHOT_OVERLAY_MEDIUM
	accuracy = -HIT_ACCURACY_TIER_3
	accuracy_var_low = PROJECTILE_VARIANCE_TIER_6
	damage = 55
	penetration = ARMOR_PENETRATION_TIER_3
	shrapnel_chance = SHRAPNEL_CHANCE_TIER_2

/datum/ammo/bullet/pistol/heavy/highimpact
	name = "high-impact pistol bullet"
	debilitate = list(0,0.2,0,0,0,1,0,0)

/datum/ammo/bullet/pistol/heavy/highimpact/ap
	name = "high-impact armor-piercing pistol bullet"
	penetration = ARMOR_PENETRATION_TIER_10
	damage = 40
/datum/ammo/bullet/pistol/heavy/highimpact/New()
	..()
	RegisterSignal(src, COMSIG_AMMO_POINT_BLANK, PROC_REF(handle_battlefield_execution))
