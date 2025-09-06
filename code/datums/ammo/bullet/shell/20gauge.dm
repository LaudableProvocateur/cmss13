// 20 Gauge Shotgun Shells

/*

ES7-Beanbag - Contains Electrified Stunning Beanbags.
-
ES7-Slug - Contains Electrified Stunning Slugs.

*/
/datum/ammo/bullet/gauge_20/es7_beanbag
	name = "electrostatic shock slug"
	headshot_state = HEADSHOT_OVERLAY_LIGHT //Electric version of the bean bag.
	handful_state = "shock_slug"
	icon_state = "cm_laser"
	sound_override = 'sound/weapons/gun_es7.ogg'
	flags_ammo_behavior = AMMO_ENERGY|AMMO_IGNORE_RESIST
	sound_hit = "energy_hit"
	sound_miss = "energy_miss"
	sound_bounce = "energy_bounce"
	max_range = 12
	shrapnel_chance = 0
	damage = 0
	stamina_damage = 50
	hit_effect_color = "#00aeff"
	accuracy = HIT_ACCURACY_TIER_3
	shell_speed = AMMO_SPEED_TIER_4
	handful_state = "shock_slug"

/datum/ammo/bullet/gauge_20/es7_beanbag/on_hit_mob(mob/mobs, obj/projectile/P)
	if(!mobs || mobs == P.firer)
		return
	if(!isyautja(mobs) && !isxeno(mobs))
		mobs.emote("pain")
		mobs.sway_jitter(2,1)

	if(ishuman(mobs))
		var/mob/living/carbon/human/humanus = mobs
		shake_camera(humanus, 2, 1)
		humanus.disable_special_items() // Disables scout cloak
		humanus.make_jittery(40)

/datum/ammo/bullet/gauge_20/es7_slug
	name = "electrostatic solid slug"
	icon_state = "bullet_iff"
	handful_state = "es7_slug"
	sound_miss = "energy_miss"
	sound_bounce = "energy_bounce"
	hit_effect_color = "#00aeff"
	sound_override = 'sound/weapons/gun_es7lethal.ogg'
	accurate_range = 8
	max_range = 8
	damage = 60
	stamina_damage = 25
	penetration = ARMOR_PENETRATION_TIER_8
	accuracy = HIT_ACCURACY_TIER_5

/datum/ammo/bullet/gauge_20/es7_slug/on_hit_mob(mob/mobs,obj/projectile/P)
	if(!mobs || mobs == P.firer)
		return
	if(!isyautja(mobs) && !isxeno(mobs))
		mobs.emote("pain")
		mobs.sway_jitter(2,1)

	if(ishuman(mobs))
		var/mob/living/carbon/human/humanus = mobs
		shake_camera(humanus, 2, 1)
		humanus.disable_special_items() // Disables scout cloak
		humanus.make_jittery(40)

	knockback(mobs, P, 6)

/datum/ammo/bullet/gauge_20/es7_slug/knockback_effects(mob/living/living_mob, obj/projectile/fired_projectile)
	if(iscarbonsizexeno(living_mob))
		var/mob/living/carbon/xenomorph/target = living_mob
		to_chat(target, SPAN_XENODANGER("You are shaken and slowed by the sudden impact!"))
		target.KnockDown(0.5) // If you ask me the KD should be left out, but players like their visual cues
		target.Stun(0.5)
		target.apply_effect(1, SUPERSLOW)
		target.apply_effect(3, SLOW)
	else
		if(!isyautja(living_mob)) //Not predators.
			living_mob.apply_effect(1, SUPERSLOW)
			living_mob.apply_effect(2, SLOW)
			to_chat(living_mob, SPAN_HIGHDANGER("The impact knocks you off-balance!"))
		living_mob.apply_stamina_damage(fired_projectile.ammo.damage, fired_projectile.def_zone, ARMOR_BULLET)

/datum/ammo/bullet/gauge_20/beanbag
	name = "beanbag slug"
	headshot_state = HEADSHOT_OVERLAY_LIGHT //It's not meant to kill people... but if you put it in your mouth, it will.
	handful_state = "beanbag_slug"
	icon_state = "beanbag"
	flags_ammo_behavior = AMMO_BALLISTIC|AMMO_IGNORE_RESIST
	sound_override = 'sound/weapons/gun_shotgun_riot.ogg'

	max_range = 12
	shrapnel_chance = 0
	damage = 0
	stamina_damage = 35 // this is a 20 gauge slug, not a 12 gauge one.
	accuracy = HIT_ACCURACY_TIER_5 // this is a 20 gauge slug, not a 12 gauge one.
	shell_speed = AMMO_SPEED_TIER_5 // this is a 20 gauge slug, not a 12 gauge one.
	handful_state = "beanbag_slug"

/datum/ammo/bullet/gauge_20/beanbag/on_hit_mob(mob/M, obj/projectile/P)
	if(!M || M == P.firer)
		return
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		shake_camera(H, 2, 1)
