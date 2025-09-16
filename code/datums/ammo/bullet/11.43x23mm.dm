// .45 ACP / 11.43x23mm
/*
Used By
SU-6
M1911
HI-POW Magnum
*/

/*

REBALANCE INFORMATION : This is one of the ammo types that is seen in many places, most notably the afformentioned firearms.
SU-6 : It was quite anomalous amongst weapons using .45 acp in that it dealt less damage than a normal bullet.
However, as far as it being an IFF weapon, I think a good argument can be made that USCM issue IFF weapons decrease
muzzle velocity in the "encoding" process, and consequently the weapon itself makes the bullet less damaging and more accurate.
Thusly I moved its modifiers into the SU-6 itself "NEEDS TESTED"

M1911 : The m1911 is the base ammo type used for this bullet rework, thusly it hasn't really changed much.

HI-POW Magnum : The HI-POW was previously a high ap low damage pistol that required manual chambering after each shot,
it has been changed to basically be the m1911 but requiring manual chambering with a bit more magazine capacity and a better firerate.

As all of these weapons now use the same ammunition type, if you spawn with a HIPOW or an M1911 somehow, you can get more ammo by raiding preps for SU-6 ammo, which is a huge boon.

*/
/datum/ammo/bullet/pistol/caliber_11_43x23mm
	name = ".45 ACP Bullet"
	headshot_state = HEADSHOT_OVERLAY_MEDIUM

	accuracy = HIT_ACCURACY_TIER_3
	accuracy_var_low = PROJECTILE_VARIANCE_TIER_6
	damage = 55
	penetration = ARMOR_PENETRATION_TIER_3
	shrapnel_chance = SHRAPNEL_CHANCE_TIER_2
/datum/ammo/bullet/pistol/caliber_11_43x23mm/highimpact
	name = ".45 ACP HIP Bullet"
	debilitate = list(0,0.2,0,0,0,1,0,0)

/datum/ammo/bullet/pistol/caliber_11_43x23mm/highimpact/ap
	name = ".45 ACP HIAP Bullet"
	penetration = ARMOR_PENETRATION_TIER_10
	damage = 40

/datum/ammo/bullet/pistol/caliber_11_43x23mm/highimpact/New()
	..()
	RegisterSignal(src, COMSIG_AMMO_POINT_BLANK, PROC_REF(handle_battlefield_execution))
