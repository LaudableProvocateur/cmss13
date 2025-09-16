// .44 MAGNUM or 10.9x33mmR
/*
KT-42 Auto Magnum
M44 Combat Revolver
*/

/*
The KT-42 and M44 are the only weapons actually implemented that use these bullets, the KT-42 had identical damage to the marksman bullet by default.
Thusly the KT-42 now mechanically disappates the bullets velocity to make its recoil managable.  Additionally becoming compatible with heavy and marksman rounds.
*/

// M44
/datum/ammo/bullet/revolver/caliber_10_9x33mmR
	name = ".44 Magnum bullet"
	headshot_state = HEADSHOT_OVERLAY_MEDIUM
	damage = 72
	penetration = ARMOR_PENETRATION_TIER_1
	accuracy = HIT_ACCURACY_TIER_1

/datum/ammo/bullet/revolver/caliber_10_9x33mmR/marksman
	name = ".44 Magnum Marksman bullet"
	damage = 55
	shrapnel_chance = 0
	damage_falloff = 0
	accurate_range = 12
	penetration = ARMOR_PENETRATION_TIER_7

/datum/ammo/bullet/revolver/caliber_10_9x33mmR/heavy
	name = ".44 Magnum Heavy bullet"

	damage = 35
	penetration = ARMOR_PENETRATION_TIER_4
	accuracy = HIT_ACCURACY_TIER_3

/datum/ammo/bullet/revolver/caliber_10_9x33mmR/heavy/on_hit_mob(mob/entity, obj/projectile/bullet)
	slowdown(entity, bullet)
	pushback(entity, bullet, 4)

/datum/ammo/bullet/revolver/caliber_10_9x33mmR/incendiary
	name = ".44 Magnum Incendiary bullet"
	damage = 40

/datum/ammo/bullet/revolver/caliber_10_9x33mmR/incendiary/set_bullet_traits()
	..()
	LAZYADD(traits_to_give, list(
		BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_incendiary)
	))

/datum/ammo/bullet/revolver/caliber_10_9x33mmR/marksman/toxin
	name = ".44 Magnum Toxin bullet"
	var/acid_per_hit = 10
	var/organic_damage_mult = 3

/datum/ammo/bullet/revolver/caliber_10_9x33mmR/marksman/toxin/on_hit_mob(mob/M, obj/projectile/P)
	. = ..()
	M.AddComponent(/datum/component/status_effect/toxic_buildup, acid_per_hit)

/datum/ammo/bullet/revolver/caliber_10_9x33mmR/marksman/toxin/on_hit_turf(turf/T, obj/projectile/P)
	. = ..()
	if(T.turf_flags & TURF_ORGANIC)
		P.damage *= organic_damage_mult

/datum/ammo/bullet/revolver/caliber_10_9x33mmR/marksman/toxin/on_hit_obj(obj/O, obj/projectile/P)
	. = ..()
	if(O.flags_obj & OBJ_ORGANIC)
		P.damage *= organic_damage_mult

/datum/ammo/bullet/revolver/caliber_10_9x33mmR/penetrating
	name = ".44 Magnum Penetrating bullet"
	shrapnel_chance = 0

	penetration = ARMOR_PENETRATION_TIER_10

/datum/ammo/bullet/revolver/caliber_10_9x33mmR/penetrating/set_bullet_traits()
	. = ..()
	LAZYADD(traits_to_give, list(
		BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_penetrating)
	))
