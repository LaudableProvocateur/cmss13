/datum/ammo/bullet/shotgun/heavy/buckshot
	name = "heavy buckshot shell"
	icon_state = "buckshot"
	handful_state = "heavy_buckshot"
	multiple_handful_name = TRUE
	bonus_projectiles_type = /datum/ammo/bullet/shotgun/heavy/buckshot/spread
	bonus_projectiles_amount = EXTRA_PROJECTILES_TIER_3
	accurate_range = 3
	max_range = 3
	damage = 75
	penetration = 0
	shell_speed = AMMO_SPEED_TIER_2
	damage_armor_punch = 0
	pen_armor_punch = 0

/datum/ammo/bullet/shotgun/heavy/buckshot/on_hit_mob(mob/M,obj/projectile/P)
	knockback(M,P)

/datum/ammo/bullet/shotgun/heavy/buckshot/spread
	name = "additional heavy buckshot"
	max_range = 4
	scatter = SCATTER_AMOUNT_TIER_1
	bonus_projectiles_amount = 0

//basically the same
/datum/ammo/bullet/shotgun/heavy/buckshot/dragonsbreath
	name = "dragon's breath shell"
	handful_state = "heavy_dragonsbreath"
	multiple_handful_name = TRUE
	damage_type = BURN
	damage = 60
	accurate_range = 3
	max_range = 4
	bonus_projectiles_type = /datum/ammo/bullet/shotgun/heavy/buckshot/dragonsbreath/spread

/datum/ammo/bullet/shotgun/heavy/buckshot/dragonsbreath/set_bullet_traits()
	. = ..()
	LAZYADD(traits_to_give, list(
		BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_incendiary)
	))

/datum/ammo/bullet/shotgun/heavy/buckshot/dragonsbreath/spread
	name = "additional dragon's breath"
	bonus_projectiles_amount = 0
	accurate_range = 4
	max_range = 5 //make use of the ablaze property
	shell_speed = AMMO_SPEED_TIER_4 // so they hit before the main shell stuns


/datum/ammo/bullet/shotgun/heavy/slug
	name = "heavy shotgun slug"
	handful_state = "heavy_slug"

	accurate_range = 7
	max_range = 8
	damage = 90 //ouch.
	penetration = ARMOR_PENETRATION_TIER_6
	damage_armor_punch = 2

/datum/ammo/bullet/shotgun/heavy/slug/on_hit_mob(mob/M,obj/projectile/P)
	knockback(M, P, 7)

/datum/ammo/bullet/shotgun/heavy/slug/knockback_effects(mob/living/living_mob, obj/projectile/fired_projectile)
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

/datum/ammo/bullet/shotgun/heavy/beanbag
	name = "heavy beanbag slug"
	icon_state = "beanbag"
	headshot_state = HEADSHOT_OVERLAY_MEDIUM
	handful_state = "heavy_beanbag"
	flags_ammo_behavior = AMMO_BALLISTIC|AMMO_IGNORE_RESIST
	sound_override = 'sound/weapons/gun_shotgun_riot.ogg'

	max_range = 7
	shrapnel_chance = 0
	damage = 0
	stamina_damage = 100
	accuracy = HIT_ACCURACY_TIER_2
	shell_speed = AMMO_SPEED_TIER_2

/datum/ammo/bullet/shotgun/heavy/beanbag/on_hit_mob(mob/M, obj/projectile/P)
	if(!M || M == P.firer)
		return
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		shake_camera(H, 2, 1)

/datum/ammo/bullet/shotgun/heavy/flechette
	name = "heavy flechette shell"
	icon_state = "flechette"
	handful_state = "heavy_flechette"
	multiple_handful_name = TRUE
	bonus_projectiles_type = /datum/ammo/bullet/shotgun/heavy/flechette_spread

	accuracy_var_low = PROJECTILE_VARIANCE_TIER_3
	accuracy_var_high = PROJECTILE_VARIANCE_TIER_3
	max_range = 12
	damage = 45
	damage_var_low = PROJECTILE_VARIANCE_TIER_8
	damage_var_high = PROJECTILE_VARIANCE_TIER_8
	penetration = ARMOR_PENETRATION_TIER_10
	bonus_projectiles_amount = EXTRA_PROJECTILES_TIER_2

/datum/ammo/bullet/shotgun/heavy/flechette/setup_faction_clash_values()
	. = ..()
	damage *= 0.7

/datum/ammo/bullet/shotgun/heavy/flechette_spread
	name = "additional heavy flechette"
	icon_state = "flechette"
	accuracy_var_low = PROJECTILE_VARIANCE_TIER_6
	accuracy_var_high = PROJECTILE_VARIANCE_TIER_6
	max_range = 12
	damage = 45
	damage_var_low = PROJECTILE_VARIANCE_TIER_8
	damage_var_high = PROJECTILE_VARIANCE_TIER_8
	penetration = ARMOR_PENETRATION_TIER_10
	scatter = SCATTER_AMOUNT_TIER_4

/datum/ammo/bullet/shotgun/heavy/flechette_spread/setup_faction_clash_values()
	. = ..()
	damage *= 0.7
