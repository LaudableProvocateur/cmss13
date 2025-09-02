/datum/ammo/bullet/sniper
	name = "sniper bullet"
	headshot_state = HEADSHOT_OVERLAY_HEAVY
	damage_falloff = 0
	flags_ammo_behavior = AMMO_BALLISTIC|AMMO_SNIPER|AMMO_IGNORE_COVER
	accurate_range_min = 4

	accuracy = HIT_ACCURACY_TIER_8
	accurate_range = 32
	max_range = 32
	scatter = 0
	damage = 70
	penetration= ARMOR_PENETRATION_TIER_10
	shell_speed = AMMO_SPEED_TIER_6
	damage_falloff = 0

/datum/ammo/bullet/sniper/on_hit_mob(mob/M,obj/projectile/P)
	if((P.projectile_flags & PROJECTILE_BULLSEYE) && M == P.original)
		var/mob/living/L = M
		L.apply_armoured_damage(damage*2, ARMOR_BULLET, BRUTE, null, penetration)
		to_chat(P.firer, SPAN_WARNING("Bullseye!"))

/datum/ammo/bullet/sniper/incendiary
	name = "incendiary sniper bullet"
	damage_type = BRUTE
	shrapnel_chance = 0
	flags_ammo_behavior = AMMO_BALLISTIC|AMMO_SNIPER|AMMO_IGNORE_COVER

	//Removed accuracy = 0, accuracy_var_high = Variance Tier 6, and scatter = 0. -Kaga
	damage = 60
	penetration = ARMOR_PENETRATION_TIER_4

/datum/ammo/bullet/sniper/incendiary/set_bullet_traits()
	. = ..()
	LAZYADD(traits_to_give, list(
		BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_incendiary)
	))

/datum/ammo/bullet/sniper/incendiary/on_hit_mob(mob/M,obj/projectile/P)
	if((P.projectile_flags & PROJECTILE_BULLSEYE) && M == P.original)
		var/mob/living/L = M
		var/blind_duration = 5
		if(isxeno(M))
			var/mob/living/carbon/xenomorph/target = M
			if(target.mob_size >= MOB_SIZE_BIG)
				blind_duration = 2
		L.AdjustEyeBlur(blind_duration)
		L.adjust_fire_stacks(10)
		to_chat(P.firer, SPAN_WARNING("Bullseye!"))

/datum/ammo/bullet/sniper/flak
	name = "flak sniper bullet"
	damage_type = BRUTE
	flags_ammo_behavior = AMMO_BALLISTIC|AMMO_SNIPER|AMMO_IGNORE_COVER

	accuracy = HIT_ACCURACY_TIER_8
	scatter = SCATTER_AMOUNT_TIER_8
	damage = 55
	damage_var_high = PROJECTILE_VARIANCE_TIER_8 //Documenting old code: This converts to a variance of 96-109% damage. -Kaga
	penetration = 0

/datum/ammo/bullet/sniper/flak/on_hit_mob(mob/M,obj/projectile/P)
	if((P.projectile_flags & PROJECTILE_BULLSEYE) && M == P.original)
		var/slow_duration = 7
		var/mob/living/L = M
		if(isxeno(M))
			var/mob/living/carbon/xenomorph/target = M
			if(target.mob_size >= MOB_SIZE_BIG)
				slow_duration = 4
		M.adjust_effect(slow_duration, SUPERSLOW)
		L.apply_armoured_damage(damage, ARMOR_BULLET, BRUTE, null, penetration)
		to_chat(P.firer, SPAN_WARNING("Bullseye!"))
	else
		burst(get_turf(M),P,damage_type, 2 , 2)
		burst(get_turf(M),P,damage_type, 1 , 2 , 0)

/datum/ammo/bullet/sniper/flak/on_near_target(turf/T, obj/projectile/P)
	burst(T,P,damage_type, 2 , 2)
	burst(T,P,damage_type, 1 , 2, 0)
	return 1

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

/datum/ammo/bullet/smartgun/m56_fpw
	name = "\improper M56 FPW bullet"
	icon_state = "redbullet"
	flags_ammo_behavior = AMMO_BALLISTIC

	max_range = 7
	accuracy = HIT_ACCURACY_TIER_7
	damage = 35
	penetration = ARMOR_PENETRATION_TIER_1

/datum/ammo/bullet/turret
	name = "autocannon bullet"
	icon_state = "redbullet" //Red bullets to indicate friendly fire restriction
	flags_ammo_behavior = AMMO_BALLISTIC|AMMO_IGNORE_COVER

	accurate_range = 22
	accuracy_var_low = PROJECTILE_VARIANCE_TIER_8
	accuracy_var_high = PROJECTILE_VARIANCE_TIER_8
	max_range = 22
	damage = 30
	penetration = ARMOR_PENETRATION_TIER_7
	damage_armor_punch = 0
	pen_armor_punch = 0
	shell_speed = 2*AMMO_SPEED_TIER_6
	accuracy = HIT_ACCURACY_TIER_5

/datum/ammo/bullet/turret/dumb
	icon_state = "bullet"
	flags_ammo_behavior = AMMO_BALLISTIC

/datum/ammo/bullet/machinegun //Adding this for the MG Nests (~Art)
	name = "machinegun bullet"
	icon_state = "bullet" // Keeping it bog standard with the turret but allows it to be changed

	accurate_range = 12
	damage = 36
	penetration= ARMOR_PENETRATION_TIER_10 //Bumped the penetration to serve a different role from sentries, MGs are a bit more offensive
	accuracy = HIT_ACCURACY_TIER_3

/datum/ammo/bullet/machinegun/setup_faction_clash_values()
	. = ..()
	accurate_range = 12 //we revert the reduction

/datum/ammo/bullet/machinegun/set_bullet_traits()
	. = ..()
	LAZYADD(traits_to_give, list(
		BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_iff)
	))

/datum/ammo/bullet/machinegun/doorgun
	flags_ammo_behavior = AMMO_BALLISTIC | AMMO_IGNORE_COVER

/datum/ammo/bullet/machinegun/auto // for M2C, automatic variant for M56D, stats for bullet should always be moderately overtuned to fulfill its ultra-offense + flank-push purpose
	name = "heavy machinegun bullet"

	accurate_range = 10
	damage =  50
	penetration = ARMOR_PENETRATION_TIER_6
	accuracy = -HIT_ACCURACY_TIER_2 // 75 accuracy
	shell_speed = AMMO_SPEED_TIER_2
	max_range = 15
	effective_range_max = 7
	damage_falloff = DAMAGE_FALLOFF_TIER_8
	scatter = 0

/datum/ammo/bullet/machinegun/auto/setup_faction_clash_values()
	accuracy = HIT_ACCURACY_TIER_4
	scatter = SCATTER_AMOUNT_TIER_5
	penetration = ARMOR_PENETRATION_TIER_2
	. = ..()

/datum/ammo/bullet/machinegun/auto/set_bullet_traits()
	return
