/datum/ammo/bullet/rifle/caliber_10x24mm
	name = "rifle bullet"
	headshot_state = HEADSHOT_OVERLAY_MEDIUM

	damage = 40
	penetration = ARMOR_PENETRATION_TIER_1
	accurate_range = 16
	accuracy = HIT_ACCURACY_TIER_4
	scatter = SCATTER_AMOUNT_TIER_10
	shell_speed = AMMO_SPEED_TIER_6
	effective_range_max = 7
	damage_falloff = DAMAGE_FALLOFF_TIER_7
	max_range = 24 //So S8 users don't have their bullets magically disappaer at 22 tiles (S8 can see 24 tiles)

/datum/ammo/bullet/rifle/caliber_10x24mm/holo_target
	name = "holo-targeting rifle bullet"
	damage = 30
	/// inflicts this many holo stacks per bullet hit
	var/holo_stacks = 10
	/// modifies the default cap limit of 100 by this amount
	var/bonus_damage_cap_increase = 0
	/// multiplies the default drain of 5 holo stacks per second by this amount
	var/stack_loss_multiplier = 1

/datum/ammo/bullet/rifle/caliber_10x24mm/holo_target/on_hit_mob(mob/hit_mob, obj/projectile/bullet)
	. = ..()
	hit_mob.AddComponent(/datum/component/bonus_damage_stack, holo_stacks, world.time, bonus_damage_cap_increase, stack_loss_multiplier)

/datum/ammo/bullet/rifle/caliber_10x24mm/holo_target/hunting
	name = "holo-targeting hunting bullet"
	damage = 25
	holo_stacks = 15

/datum/ammo/bullet/rifle/caliber_10x24mm/explosive
	name = "explosive rifle bullet"

	damage = 25
	accurate_range = 22
	accuracy = 0
	shell_speed = AMMO_SPEED_TIER_4
	damage_falloff = DAMAGE_FALLOFF_TIER_9

/datum/ammo/bullet/rifle/caliber_10x24mm/explosive/on_hit_mob(mob/M, obj/projectile/P)
	cell_explosion(get_turf(M), 80, 40, EXPLOSION_FALLOFF_SHAPE_LINEAR, P.dir, P.weapon_cause_data)

/datum/ammo/bullet/rifle/caliber_10x24mm/explosive/on_hit_obj(obj/O, obj/projectile/P)
	cell_explosion(get_turf(O), 80, 40, EXPLOSION_FALLOFF_SHAPE_LINEAR, P.dir, P.weapon_cause_data)

/datum/ammo/bullet/rifle/caliber_10x24mm/explosive/on_hit_turf(turf/T, obj/projectile/P)
	if(T.density)
		cell_explosion(T, 80, 40, EXPLOSION_FALLOFF_SHAPE_LINEAR, P.dir, P.weapon_cause_data)

/datum/ammo/bullet/rifle/caliber_10x24mm/ap
	name = "armor-piercing rifle bullet"

	damage = 30
	penetration = ARMOR_PENETRATION_TIER_8

// Basically AP but better. Focused at taking out armour temporarily
/datum/ammo/bullet/rifle/caliber_10x24mm/ap/toxin
	name = "toxic rifle bullet"
	var/acid_per_hit = 7
	var/organic_damage_mult = 3

/datum/ammo/bullet/rifle/caliber_10x24mm/ap/toxin/on_hit_mob(mob/M, obj/projectile/P)
	. = ..()
	M.AddComponent(/datum/component/status_effect/toxic_buildup, acid_per_hit)

/datum/ammo/bullet/rifle/caliber_10x24mm/ap/toxin/on_hit_turf(turf/T, obj/projectile/P)
	. = ..()
	if(T.turf_flags & TURF_ORGANIC)
		P.damage *= organic_damage_mult

/datum/ammo/bullet/rifle/caliber_10x24mm/ap/toxin/on_hit_obj(obj/O, obj/projectile/P)
	. = ..()
	if(O.flags_obj & OBJ_ORGANIC)
		P.damage *= organic_damage_mult


/datum/ammo/bullet/rifle/caliber_10x24mm/ap/penetrating
	name = "wall-penetrating rifle bullet"
	shrapnel_chance = 0

	damage = 35
	penetration = ARMOR_PENETRATION_TIER_10

/datum/ammo/bullet/rifle/caliber_10x24mm/ap/penetrating/set_bullet_traits()
	. = ..()
	LAZYADD(traits_to_give, list(
		BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_penetrating)
	))

/datum/ammo/bullet/rifle/caliber_10x24mm/le
	name = "armor-shredding rifle bullet"

	damage = 20
	penetration = ARMOR_PENETRATION_TIER_4
	pen_armor_punch = 5

/datum/ammo/bullet/rifle/caliber_10x24mm/heap
	name = "high-explosive armor-piercing rifle bullet"

	headshot_state = HEADSHOT_OVERLAY_HEAVY
	damage = 55//big damage, doesn't actually blow up because thats stupid.
	penetration = ARMOR_PENETRATION_TIER_8

/datum/ammo/bullet/rifle/caliber_10x24mm/rubber
	name = "rubber rifle bullet"
	sound_override = 'sound/weapons/gun_c99.ogg'

	damage = 0
	stamina_damage = 15
	shrapnel_chance = 0

/datum/ammo/bullet/rifle/caliber_10x24mm/incendiary
	name = "incendiary rifle bullet"
	damage_type = BURN
	shrapnel_chance = 0
	flags_ammo_behavior = AMMO_BALLISTIC

	damage = 30
	shell_speed = AMMO_SPEED_TIER_4
	accuracy = -HIT_ACCURACY_TIER_2
	damage_falloff = DAMAGE_FALLOFF_TIER_10

/datum/ammo/bullet/rifle/caliber_10x24mm/incendiary/set_bullet_traits()
	. = ..()
	LAZYADD(traits_to_give, list(
		BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_incendiary)
	))
