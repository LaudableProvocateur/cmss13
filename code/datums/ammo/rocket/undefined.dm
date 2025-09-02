/datum/ammo/rocket/ap/tank_towlauncher
	max_range = 8

/datum/ammo/rocket/brute
	flags_ammo_behavior = AMMO_SKIPS_ALIENS|AMMO_HITS_TARGET_TURF|AMMO_SNIPER //sniper as we want good acc
	name = "M5510 Laser-Guided Rocket"
	icon_state = "brute"
	///Chance per tile to spawn smoke
	var/smoke_chance = 30
	///Chance per tile to spawn sparks
	var/spark_chance = 30
	///Chance per tile to spawn flame tile
	var/fire_chance = 30
	///Chance for impacted object to be thrown
	var/throw_chance = 20
	///Damage in central area
	var/structure_damage = 1200
	///Lower bound of damage on left and right blast edge
	var/edge_lower_dmg = 400
	///Lower bound of damage on left and right blast edge
	var/edge_upper_dmg = 700
	///blast length, creates 3 wide 5x5 box fallowed by 3 wide blast
	var/max_distance = 7

/datum/ammo/rocket/brute/on_hit_mob(mob/mob, obj/projectile/projectile)
	INVOKE_ASYNC(src,PROC_REF(prime), mob, projectile)

/datum/ammo/rocket/brute/on_hit_obj(obj/object, obj/projectile/projectile)
	INVOKE_ASYNC(src,PROC_REF(prime), object, projectile)

/datum/ammo/rocket/brute/on_hit_turf(turf/turf, obj/projectile/projectile)
	INVOKE_ASYNC(src,PROC_REF(prime), turf, projectile)

/datum/ammo/rocket/brute/do_at_max_range(obj/projectile/projectile)
	INVOKE_ASYNC(src,PROC_REF(prime), null, projectile)

/datum/ammo/rocket/brute/proc/prime(atom/atom, obj/projectile/projectile)
	if(istype(projectile.firer, /mob/living/carbon))
		var/mob/living/carbon/firer = projectile.firer
		if(atom)
			log_game("[key_name(firer)] fired [name] targeting [atom], at [AREACOORD(atom)]")
			msg_admin_niche("[key_name(firer, TRUE)] fired [name] targeting [atom], at [ADMIN_VERBOSEJMP(atom)]")
			firer.attack_log += "\[[time_stamp()]\] <font color='red'> [key_name(firer)] fired [name] targeting [atom], at [AREACOORD(atom)]</font>"
		else
			log_game("[key_name(firer)] fired [name] at [AREACOORD(projectile)]")
			msg_admin_niche("[key_name(firer, TRUE)] fired [name] at [ADMIN_VERBOSEJMP(projectile)]")
			firer.attack_log += "\[[time_stamp()]\] <font color='red'> [key_name(firer)] fired [name] at [AREACOORD(projectile)]</font>"
	var/angle = projectile.angle
	var/right_angle = (angle + 90 ) % 360
	var/left_angle = (angle -90) % 360
	var/diagonal_left = (angle - 135) % 360
	var/diagonal_right = (angle + 135) % 360
	var/turf/initial_location = projectile.loc
	var/list/cleared_locations = list(initial_location)
	var/edge = FALSE
	for(var/i = 0 to max_distance)
		var/turf/new_turf = get_angle_target_turf(initial_location, angle , i)
		INVOKE_ASYNC(src, PROC_REF(detonate),new_turf, initial_location, cleared_locations)
		cleared_locations |= new_turf
		var/max_width = 2
		if(i == 1 || i == max_distance)
			max_width = 1
		for(var/ii = 1 to max_width)
			edge = FALSE
			if(ii == max_width)
				edge = TRUE
			var/turf/right_turf = get_angle_target_turf(new_turf, right_angle , ii)
			INVOKE_ASYNC(src, PROC_REF(detonate),right_turf, initial_location, cleared_locations)
			cleared_locations |= right_turf
			var/turf/left_turf = get_angle_target_turf(new_turf, left_angle , ii)
			INVOKE_ASYNC(src, PROC_REF(detonate),left_turf, initial_location, cleared_locations)
			cleared_locations |= left_turf
			if(i > 2)
				right_turf = get_angle_target_turf(new_turf, diagonal_right , ii)
				INVOKE_ASYNC(src, PROC_REF(detonate),right_turf, initial_location, cleared_locations,edge)
				left_turf = get_angle_target_turf(new_turf, diagonal_left , ii)
				INVOKE_ASYNC(src, PROC_REF(detonate),left_turf, initial_location, cleared_locations,edge)
				cleared_locations |= right_turf
				cleared_locations |= left_turf
		sleep(1) //for effect of traveling blastwave rather then instant action in whole impact area


/datum/ammo/rocket/brute/proc/detonate(turf/location, turf/initial_location, list/detonated_locations, edge = FALSE)
	if(location in detonated_locations)
		return


	if(prob(fire_chance))
		INVOKE_ASYNC(GLOBAL_PROC, GLOBAL_PROC_REF(flame_radius), null, 0, location, BURN_TIME_INSTANT, BURN_LEVEL_TIER_1, FLAMESHAPE_LINE, null, FIRE_VARIANT_DEFAULT)

	if(prob(spark_chance))
		var/datum/effect_system/spark_spread/spark = new /datum/effect_system/spark_spread
		spark.set_up(5, 1, location)
		spark.start()

	if(prob(smoke_chance))
		var/datum/effect_system/smoke_spread/smoke = new /datum/effect_system/smoke_spread
		smoke.set_up(0, 0, location, null, 3 DECISECONDS)
		smoke.start()

	if(edge)
		structure_damage = rand(edge_lower_dmg, edge_upper_dmg)
	if(istype(location,/turf/closed/wall))
		location.ex_act(structure_damage)
	for(var/obj/structure/structure in location.contents)
		structure.ex_act(structure_damage)
	if(location != initial_location)
		var/throw_direction = Get_Angle(initial_location, location)
		for(var/obj/atom in location.contents)
			if(atom.anchored)
				continue
			if(prob(throw_chance))
				continue
			atom.throw_atom(get_angle_target_turf(location,throw_direction,1),range = 1,speed = SPEED_INSTANT, spin = FALSE)
		for(var/mob/living/living in location.contents)
			if(prob(throw_chance + living.mob_size * 5 ))
				continue
			living.throw_atom(get_angle_target_turf(location,throw_direction,1),range = 1,speed = SPEED_INSTANT, spin = FALSE)

