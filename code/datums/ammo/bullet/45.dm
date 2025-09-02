// Used by the hipower
// I know that the 'high power' in the name is supposed to mean its 'impressive' magazine capacity
// but this is CM, half our guns have baffling misconceptions and mistakes (how do you grab the type-71?) so it's on-brand.
// maybe in the far flung future of 2280 someone screwed up the design.

/datum/ammo/bullet/caliber_9x19mm/highpower
	name = "high-powered pistol bullet"
	headshot_state = HEADSHOT_OVERLAY_MEDIUM

	accuracy = HIT_ACCURACY_TIER_3
	damage = 36
	penetration = ARMOR_PENETRATION_TIER_5
	damage_falloff = DAMAGE_FALLOFF_TIER_7
/datum/ammo/bullet/caliber_9x19mm/smart
	name = "smartpistol bullet"
	flags_ammo_behavior = AMMO_BALLISTIC

	accuracy = HIT_ACCURACY_TIER_8
	damage = 30
	penetration = 20
	shrapnel_chance = SHRAPNEL_CHANCE_TIER_2
