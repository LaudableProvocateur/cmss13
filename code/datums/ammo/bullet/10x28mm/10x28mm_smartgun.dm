// The M250 10x28mm Caseless round, the main high caliber, high yield round of the USCM.
/datum/ammo/bullet/smartgun
	name = "smartgun tracer bullet"
	icon_state = "bullet_iff"
	flags_ammo_behavior = AMMO_BALLISTIC

	damage_falloff = DAMAGE_FALLOFF_TIER_9
	max_range = 12
	accuracy = HIT_ACCURACY_TIER_4
	damage = 30
	penetration = 0
	effective_range_max = 1

/datum/ammo/bullet/smartgun/alt
	name = "smartgun bullet"
	icon_state = "redbullet"

	damage_falloff = DAMAGE_FALLOFF_TIER_6
	effective_range_max = 7

/datum/ammo/bullet/smartgun/setup_faction_clash_values()
	. = ..()
	max_range = 17
	accurate_range = 12
	effective_range_max = 12

/datum/ammo/bullet/smartgun/armor_piercing
	name = "\improper AP smartgun tracer bullet"
	icon_state = "bullet_ap_iff"

	damage_falloff = DAMAGE_FALLOFF_TIER_9_5
	accurate_range = 12
	accuracy = HIT_ACCURACY_TIER_2
	damage = 20
	penetration = ARMOR_PENETRATION_TIER_8
	damage_armor_punch = 1

/datum/ammo/bullet/smartgun/armor_piercing/alt
	name = "\improper AP smartgun bullet"
	icon_state = "bullet"

	damage_falloff = DAMAGE_FALLOFF_TIER_7
	effective_range_max = 7

/datum/ammo/bullet/smartgun/dirty
	name = "irradiated smartgun tracer bullet"
	icon_state = "bullet_iff"
	debilitate = list(0,0,0,3,0,0,0,1)

	shrapnel_chance = SHRAPNEL_CHANCE_TIER_7
	accurate_range = 32
	accuracy = HIT_ACCURACY_TIER_3
	damage_falloff = DAMAGE_FALLOFF_TIER_9
	damage = 40
	penetration = 0

/datum/ammo/bullet/smartgun/dirty/alt
	name = "irradiated smartgun bullet"
	icon_state = "redbullet"

	damage_falloff = DAMAGE_FALLOFF_TIER_6
	effective_range_max = 7

/datum/ammo/bullet/smartgun/dirty/armor_piercing
	name = "irradiated AP smartgun tracer bullet"
	icon_state = "bullet_ap_iff"
	debilitate = list(0,0,0,3,0,0,0,1)

	accurate_range = 22
	accuracy = HIT_ACCURACY_TIER_3
	damage_falloff = DAMAGE_FALLOFF_TIER_9_5
	damage = 30
	penetration = ARMOR_PENETRATION_TIER_7
	damage_armor_punch = 3

/datum/ammo/bullet/smartgun/dirty/armor_piercing/alt
	name = "irradiated AP smartgun bullet"
	icon_state = "bullet"

	damage_falloff = DAMAGE_FALLOFF_TIER_7
	effective_range_max = 7

/datum/ammo/bullet/smartgun/holo_target //Royal marines smartgun bullet has only diff between regular ammo is this one does holostacks
	name = "holo-targeting smartgun tracer bullet"
	icon_state = "bullet_iff"

	damage = 30
	/// inflicts this many holo stacks per bullet hit
	var/holo_stacks = 15
	/// modifies the default cap limit of 100 by this amount
	var/bonus_damage_cap_increase = 0
	/// multiplies the default drain of 5 holo stacks per second by this amount
	var/stack_loss_multiplier = 1

/datum/ammo/bullet/smartgun/holo_target/alt
	name = "holo-targeting smartgun bullet"
	icon_state = "redbullet"

	damage_falloff = DAMAGE_FALLOFF_TIER_6
	effective_range_max = 7

/datum/ammo/bullet/smartgun/holo_target/on_hit_mob(mob/hit_mob, obj/projectile/bullet)
	. = ..()
	hit_mob.AddComponent(/datum/component/bonus_damage_stack, holo_stacks, world.time, bonus_damage_cap_increase, stack_loss_multiplier)

/datum/ammo/bullet/smartgun/holo_target/ap
	name = "holo-targeting AP smartgun tracer bullet"
	icon_state = "bullet_ap_iff"

	// Same as /datum/ammo/bullet/smartgun/armor_piercing
	damage_falloff = DAMAGE_FALLOFF_TIER_9_5
	accurate_range = 12
	accuracy = HIT_ACCURACY_TIER_2
	damage = 20
	penetration = ARMOR_PENETRATION_TIER_8
	damage_armor_punch = 1

/datum/ammo/bullet/smartgun/holo_target/ap/alt
	name = "holo-targeting AP smartgun bullet"
	icon_state = "bullet"

	// Same as /datum/ammo/bullet/smartgun/armor_piercing/alt
	damage_falloff = DAMAGE_FALLOFF_TIER_7
	effective_range_max = 7

/datum/ammo/bullet/smartgun/heap
	name = "high-explosive armor-piercing smartgun bullet"
	icon_state = "bullet"

	headshot_state = HEADSHOT_OVERLAY_HEAVY
	damage = 50//big damage, doesn't actually blow up because thats stupid.
	penetration = ARMOR_PENETRATION_TIER_8



/datum/ammo/bullet/smartgun/m56_fpw
	name = "\improper M56 FPW bullet"
	icon_state = "redbullet"
	flags_ammo_behavior = AMMO_BALLISTIC

	max_range = 7
	accuracy = HIT_ACCURACY_TIER_7
	damage = 35
	penetration = ARMOR_PENETRATION_TIER_1
