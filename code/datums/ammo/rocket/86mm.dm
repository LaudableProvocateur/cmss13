/datum/ammo/rocket/ltb
	name = "cannon round"
	icon_state = "ltb"
	flags_ammo_behavior = AMMO_EXPLOSIVE|AMMO_ROCKET|AMMO_STRIKES_SURFACE

	accuracy = HIT_ACCURACY_TIER_3
	accurate_range = 32
	max_range = 32
	damage = 25
	shell_speed = AMMO_SPEED_TIER_3

/datum/ammo/rocket/ltb/on_hit_mob(mob/mob, obj/projectile/projectile)
	cell_explosion(get_turf(mob), 220, 50, EXPLOSION_FALLOFF_SHAPE_LINEAR, null, projectile.weapon_cause_data)
	cell_explosion(get_turf(mob), 200, 100, EXPLOSION_FALLOFF_SHAPE_LINEAR, null, projectile.weapon_cause_data)

/datum/ammo/rocket/ltb/on_hit_obj(obj/object, obj/projectile/projectile)
	cell_explosion(get_turf(object), 220, 50, EXPLOSION_FALLOFF_SHAPE_LINEAR, null, projectile.weapon_cause_data)
	cell_explosion(get_turf(object), 200, 100, EXPLOSION_FALLOFF_SHAPE_LINEAR, null, projectile.weapon_cause_data)

/datum/ammo/rocket/ltb/on_hit_turf(turf/turf, obj/projectile/projectile)
	cell_explosion(get_turf(turf), 220, 50, EXPLOSION_FALLOFF_SHAPE_LINEAR, null, projectile.weapon_cause_data)
	cell_explosion(get_turf(turf), 200, 100, EXPLOSION_FALLOFF_SHAPE_LINEAR, null, projectile.weapon_cause_data)

/datum/ammo/rocket/ltb/do_at_max_range(obj/projectile/projectile)
	cell_explosion(get_turf(projectile), 220, 50, EXPLOSION_FALLOFF_SHAPE_LINEAR, null, projectile.weapon_cause_data)
	cell_explosion(get_turf(projectile), 200, 100, EXPLOSION_FALLOFF_SHAPE_LINEAR, null, projectile.weapon_cause_data)
