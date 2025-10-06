/datum/ammo/bullet/re700
	name = "rotary cannon bullet"
	icon_state = "autocannon"
	damage_falloff = 0
	flags_ammo_behavior = AMMO_BALLISTIC

	accuracy = HIT_ACCURACY_TIER_7
	scatter = 0
	damage = 30
	damage_var_high = PROJECTILE_VARIANCE_TIER_8
	penetration = ARMOR_PENETRATION_TIER_3
	accurate_range = 10
	max_range = 12
	shell_speed = AMMO_SPEED_TIER_6

/datum/ammo/bullet/pistol/mankey
	name = "live monkey"
	icon_state = "monkey1"
	ping = null //no bounce off.
	damage_type = BURN
	debilitate = list(4,4,0,0,0,0,0,0)
	flags_ammo_behavior = AMMO_IGNORE_ARMOR

	damage = 15
	damage_var_high = PROJECTILE_VARIANCE_TIER_5
	shell_speed = AMMO_SPEED_TIER_2

/datum/ammo/bullet/pistol/mankey/set_bullet_traits()
	. = ..()
	LAZYADD(traits_to_give, list(
		BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_incendiary)
	))

/datum/ammo/bullet/pistol/mankey/on_hit_mob(mob/M,obj/projectile/P)
	if(P && P.loc && !M.stat && !istype(M,/mob/living/carbon/human/monkey))
		P.visible_message(SPAN_DANGER("The [src] chimpers furiously!"))
		new /mob/living/carbon/human/monkey(P.loc)
