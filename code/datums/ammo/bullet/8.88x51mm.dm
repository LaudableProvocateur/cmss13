/datum/ammo/bullet/smg/caliber_8_88mm
	name = "8.88mm rifle bullet"

	damage = 50
	penetration = ARMOR_PENETRATION_TIER_2

/datum/ammo/bullet/smg/caliber_8_88mm/ap
	name = "8.88mm armor-piercing rifle bullet"

	damage = 40
	penetration = ARMOR_PENETRATION_TIER_10

/datum/ammo/bullet/smg/caliber_8_88mm/heap
	name = "8.88mm high-explosive armor-piercing rifle bullet"

	headshot_state = HEADSHOT_OVERLAY_HEAVY
	damage = 65
	penetration = ARMOR_PENETRATION_TIER_10

/datum/ammo/bullet/smg/caliber_8_88mm/incendiary
	name = "incendiary rifle bullet"
	damage_type = BURN
	shrapnel_chance = 0
	flags_ammo_behavior = AMMO_BALLISTIC

	damage = 40
	shell_speed = AMMO_SPEED_TIER_4
	accuracy = -HIT_ACCURACY_TIER_2
	damage_falloff = DAMAGE_FALLOFF_TIER_10

/datum/ammo/bullet/smg/caliber_8_88mm/incendiary/set_bullet_traits()
	. = ..()
	LAZYADD(traits_to_give, list(
		BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_incendiary)
	))

/datum/ammo/bullet/smg/caliber_8_88mm/ap/toxin
	name = "toxic rifle bullet"
	var/acid_per_hit = 7
	var/organic_damage_mult = 3

/datum/ammo/bullet/smg/caliber_8_88mm/ap/toxin/on_hit_mob(mob/M, obj/projectile/P)
	. = ..()
	M.AddComponent(/datum/component/status_effect/toxic_buildup, acid_per_hit)

/datum/ammo/bullet/smg/caliber_8_88mm/ap/toxin/on_hit_turf(turf/T, obj/projectile/P)
	. = ..()
	if(T.turf_flags & TURF_ORGANIC)
		P.damage *= organic_damage_mult

/datum/ammo/bullet/smg/caliber_8_88mm/ap/toxin/on_hit_obj(obj/O, obj/projectile/P)
	. = ..()
	if(O.flags_obj & OBJ_ORGANIC)
		P.damage *= organic_damage_mult

/datum/ammo/bullet/smg/caliber_8_88mm/rubber
	name = "8.88mm rubber rifle bullet"
	sound_override = 'sound/weapons/gun_c99.ogg'

	damage = 0
	stamina_damage = 22
	shrapnel_chance = 0
/datum/ammo/bullet/smg/caliber_8_51mm

	name = "8.88x51 squash-head bullet"

	damage = 40
	penetration = ARMOR_PENETRATION_TIER_1

/datum/ammo/bullet/smg/caliber_8_51mm/ap
	name = "8.88x51 armour piercing squash-head bullet"

	damage = 30
	penetration = ARMOR_PENETRATION_TIER_8
