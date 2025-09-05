// Used by
/*

used in basira_armstrong.dm

*/
/datum/ammo/bullet/rifle/caliber_6_5mm
	name = "crude sniper bullet"
	damage = 42
	penetration = ARMOR_PENETRATION_TIER_6

/datum/ammo/bullet/rifle/caliber_6_5mm/on_hit_mob(mob/M, obj/projectile/P)
	. = ..()
	pushback(M, P, 3)
