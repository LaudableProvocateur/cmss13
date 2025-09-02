/datum/ammo/bullet/revolver
	name = "revolver bullet"
	headshot_state = HEADSHOT_OVERLAY_MEDIUM
	damage = 72
	penetration = ARMOR_PENETRATION_TIER_1
	accuracy = HIT_ACCURACY_TIER_1

/datum/ammo/bullet/revolver/marksman
	name = "marksman revolver bullet"
	damage = 55
	shrapnel_chance = 0
	damage_falloff = 0
	accurate_range = 12
	penetration = ARMOR_PENETRATION_TIER_7

/datum/ammo/bullet/revolver/heavy
	name = "heavy revolver bullet"

	damage = 35
	penetration = ARMOR_PENETRATION_TIER_4
	accuracy = HIT_ACCURACY_TIER_3

/datum/ammo/bullet/revolver/heavy/on_hit_mob(mob/entity, obj/projectile/bullet)
	slowdown(entity, bullet)
	pushback(entity, bullet, 4)

/datum/ammo/bullet/revolver/incendiary
	name = "incendiary revolver bullet"
	damage = 40

/datum/ammo/bullet/revolver/incendiary/set_bullet_traits()
	..()
	LAZYADD(traits_to_give, list(
		BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_incendiary)
	))

/datum/ammo/bullet/revolver/marksman/toxin
	name = "toxic revolver bullet"
	var/acid_per_hit = 10
	var/organic_damage_mult = 3

/datum/ammo/bullet/revolver/marksman/toxin/on_hit_mob(mob/M, obj/projectile/P)
	. = ..()
	M.AddComponent(/datum/component/status_effect/toxic_buildup, acid_per_hit)

/datum/ammo/bullet/revolver/marksman/toxin/on_hit_turf(turf/T, obj/projectile/P)
	. = ..()
	if(T.turf_flags & TURF_ORGANIC)
		P.damage *= organic_damage_mult

/datum/ammo/bullet/revolver/marksman/toxin/on_hit_obj(obj/O, obj/projectile/P)
	. = ..()
	if(O.flags_obj & OBJ_ORGANIC)
		P.damage *= organic_damage_mult

/datum/ammo/bullet/revolver/penetrating
	name = "wall-penetrating revolver bullet"
	shrapnel_chance = 0

	penetration = ARMOR_PENETRATION_TIER_10

/datum/ammo/bullet/revolver/penetrating/set_bullet_traits()
	. = ..()
	LAZYADD(traits_to_give, list(
		BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_penetrating)
	))
