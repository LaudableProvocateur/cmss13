// Used by
/*

Used by rifles.dm
technically used by the type71

*/
/datum/ammo/bullet/rifle/caliber_5_45x39mm
	name = "heavy rifle bullet"

	damage = 55
	penetration = ARMOR_PENETRATION_TIER_3

/datum/ammo/bullet/rifle/caliber_5_45x39mm/setup_faction_clash_values()
	if(penetration <= ARMOR_PENETRATION_TIER_3) //so we only reduce AP of normal ammo here
		penetration = ARMOR_PENETRATION_TIER_1
	. = ..()

/datum/ammo/bullet/rifle/caliber_5_45x39mm/ap
	name = "heavy armor-piercing rifle bullet"

	damage = 40
	penetration = ARMOR_PENETRATION_TIER_10


/datum/ammo/bullet/rifle/caliber_5_45x39mm/heap
	name = "heavy high-explosive armor-piercing rifle bullet"

	headshot_state = HEADSHOT_OVERLAY_HEAVY
	damage = 65
	penetration = ARMOR_PENETRATION_TIER_10
