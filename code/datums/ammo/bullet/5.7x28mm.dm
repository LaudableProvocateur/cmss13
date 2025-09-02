// Used by
/*

p90.dm
p90_twe.dm

*/

/datum/ammo/bullet/smg/caliber_5_7x28mm
	name = "5.7x28mm bullet"

	damage = 22
	accurate_range = 5
	effective_range_max = 8
	penetration = ARMOR_PENETRATION_TIER_2
	damage_falloff = DAMAGE_FALLOFF_TIER_6
	scatter = SCATTER_AMOUNT_TIER_6

/datum/ammo/bullet/smg/caliber_5_7x28mm/ap
	name = "5.7x28mm armour piercing bullet"

	damage = 20
	accurate_range = 5
	effective_range_max = 8
	penetration = ARMOR_PENETRATION_TIER_4
	damage_falloff = DAMAGE_FALLOFF_TIER_6
	scatter = SCATTER_AMOUNT_TIER_6
