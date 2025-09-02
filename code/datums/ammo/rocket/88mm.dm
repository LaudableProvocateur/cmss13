/datum/ammo/rocket/wp/upp
	name = "extreme-intensity incendiary rocket"
	flags_ammo_behavior = AMMO_ROCKET|AMMO_EXPLOSIVE|AMMO_STRIKES_SURFACE
	damage_type = BURN

	accuracy_var_low = PROJECTILE_VARIANCE_TIER_6
	accurate_range = 8
	damage = 150
	max_range = 10

/datum/ammo/rocket/wp/upp/set_bullet_traits()
	. = ..()
	LAZYADD(traits_to_give, list(
		BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_incendiary)
	))

/datum/ammo/rocket/wp/upp/drop_flame(turf/turf, datum/cause_data/cause_data)
	playsound(turf, 'sound/weapons/gun_flamethrower3.ogg', 75, 1, 7)
	if(!istype(turf))
		return
	smoke.set_up(1, turf)
	smoke.start()
	var/datum/reagent/napalm/upp/reagent = new()
	new /obj/flamer_fire(turf, cause_data, reagent, 3)

/datum/ammo/rocket/wp/upp/on_hit_mob(mob/mob, obj/projectile/projectile)
	drop_flame(get_turf(mob), projectile.weapon_cause_data)

/datum/ammo/rocket/wp/upp/on_hit_obj(obj/object, obj/projectile/projectile)
	drop_flame(get_turf(object), projectile.weapon_cause_data)

/datum/ammo/rocket/wp/upp/on_hit_turf(turf/turf, obj/projectile/projectile)
	drop_flame(turf, projectile.weapon_cause_data)

/datum/ammo/rocket/wp/upp/do_at_max_range(obj/projectile/projectile)
	drop_flame(get_turf(projectile), projectile.weapon_cause_data)
