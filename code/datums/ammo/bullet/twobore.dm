/datum/ammo/bullet/shell/gauge_12/twobore
	name = "two bore bullet"
	icon_state = "autocannon"
	handful_state = "twobore"

	accurate_range = 8 //Big low-velocity projectile; this is for blasting dangerous game at close range.
	max_range = 14 //At this range, it's lost all its damage anyway.
	damage = 300 //Hits like a buckshot PB.
	penetration = ARMOR_PENETRATION_TIER_3
	damage_falloff = DAMAGE_FALLOFF_TIER_1 * 3 //It has a lot of energy, but the 26mm bullet drops off fast.
	effective_range_max = EFFECTIVE_RANGE_MAX_TIER_2 //Full damage up to this distance, then falloff for each tile beyond.
	var/hit_messages = list()

/datum/ammo/bullet/shell/gauge_12/twobore/on_hit_mob(mob/living/M, obj/projectile/P)
	var/mob/shooter = P.firer
	if(shooter && ismob(shooter) && HAS_TRAIT(shooter, TRAIT_TWOBORE_TRAINING) && M.stat != DEAD && prob(40)) //Death is handled by periodic life() checks so this should have a chance to fire on a killshot.
		if(!length(hit_messages)) //Pick and remove lines, refill on exhaustion.
			hit_messages = list("Got you!", "Aha!", "Bullseye!", "It's curtains for you, Sonny Jim!", "Your head will look fantastic on my wall!", "I have you now!", "You miserable coward! Come and fight me like a man!", "Tally ho!")
		var/message = pick_n_take(hit_messages)
		shooter.say(message)

	if(P.distance_travelled > 8)
		knockback(M, P, 12)

	else if(!M || M == P.firer || M.body_position == LYING_DOWN) //These checks are included in knockback and would be redundant above.
		return

	shake_camera(M, 3, 4)
	M.KnockDown(2) // If you ask me the KD should be left out, but players like their visual cues
	M.Stun(2)
	M.apply_effect(4, SLOW)
	if(iscarbonsizexeno(M))
		to_chat(M, SPAN_XENODANGER("The impact knocks you off your feet!"))
	else //This will hammer a Yautja as hard as a human.
		to_chat(M, SPAN_HIGHDANGER("The impact knocks you off your feet!"))

	step(M, get_dir(P.firer, M))

/datum/ammo/bullet/shell/gauge_12/twobore/knockback_effects(mob/living/living_mob, obj/projectile/fired_projectile)
	if(iscarbonsizexeno(living_mob))
		var/mob/living/carbon/xenomorph/target = living_mob
		to_chat(target, SPAN_XENODANGER("You are shaken and slowed by the sudden impact!"))
		target.KnockDown(0.5) // If you ask me the KD should be left out, but players like their visual cues
		target.Stun(0.5)
		target.apply_effect(2, SUPERSLOW)
		target.apply_effect(5, SLOW)
	else
		if(!isyautja(living_mob)) //Not predators.
			living_mob.apply_effect(1, SUPERSLOW)
			living_mob.apply_effect(2, SLOW)
			to_chat(living_mob, SPAN_HIGHDANGER("The impact knocks you off-balance!"))
		living_mob.apply_stamina_damage(fired_projectile.ammo.damage, fired_projectile.def_zone, ARMOR_BULLET)
