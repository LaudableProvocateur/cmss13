/datum/ammo/bullet/revolver/mateba
	name = ".454 heavy revolver bullet"

	damage = 60
	damage_var_low = PROJECTILE_VARIANCE_TIER_8
	damage_var_high = PROJECTILE_VARIANCE_TIER_6
	penetration = ARMOR_PENETRATION_TIER_4
	headshot_state = HEADSHOT_OVERLAY_HEAVY

/datum/ammo/bullet/revolver/mateba/New()
	..()
	RegisterSignal(src, COMSIG_AMMO_POINT_BLANK, PROC_REF(handle_battlefield_execution))

/datum/ammo/bullet/revolver/mateba/highimpact
	name = ".454 heavy high-impact revolver bullet"
	debilitate = list(0,2,0,0,0,1,0,0)
	penetration = ARMOR_PENETRATION_TIER_5
	flags_ammo_behavior = AMMO_BALLISTIC

/datum/ammo/bullet/revolver/mateba/highimpact/ap
	name = ".454 heavy high-impact armor piercing revolver bullet"
	penetration = ARMOR_PENETRATION_TIER_10
	damage = 50

/datum/ammo/bullet/revolver/mateba/highimpact/on_hit_mob(mob/M, obj/projectile/P)
	knockback(M, P, 4)

/datum/ammo/bullet/revolver/mateba/highimpact/explosive //if you ever put this in normal gameplay, i am going to scream
	name = ".454 heavy explosive revolver bullet"
	damage = 100
	damage_var_low = PROJECTILE_VARIANCE_TIER_10
	damage_var_high = PROJECTILE_VARIANCE_TIER_1
	penetration = ARMOR_PENETRATION_TIER_10
	flags_ammo_behavior = AMMO_EXPLOSIVE|AMMO_BALLISTIC

/datum/ammo/bullet/revolver/mateba/highimpact/explosive/on_hit_mob(mob/M, obj/projectile/P)
	..()
	cell_explosion(get_turf(M), 120, 30, EXPLOSION_FALLOFF_SHAPE_LINEAR, P.dir, P.weapon_cause_data)

/datum/ammo/bullet/revolver/mateba/highimpact/explosive/on_hit_obj(obj/O, obj/projectile/P)
	..()
	cell_explosion(get_turf(O), 120, 30, EXPLOSION_FALLOFF_SHAPE_LINEAR, P.dir, P.weapon_cause_data)

/datum/ammo/bullet/revolver/mateba/highimpact/explosive/on_hit_turf(turf/T, obj/projectile/P)
	..()
	cell_explosion(T, 120, 30, EXPLOSION_FALLOFF_SHAPE_LINEAR, P.dir, P.weapon_cause_data)
