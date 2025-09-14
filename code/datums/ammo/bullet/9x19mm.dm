// Do note that 9x19mm or 9mm parabelum or 9mm luger or 9mm NATO is often abbreviated.
/datum/ammo/bullet/pistol/caliber_9x19mm
	name = "pistol bullet"
	headshot_state = HEADSHOT_OVERLAY_MEDIUM
	accuracy = -HIT_ACCURACY_TIER_3
	accuracy_var_low = PROJECTILE_VARIANCE_TIER_6
	damage = 40
	penetration= ARMOR_PENETRATION_TIER_2
	shrapnel_chance = SHRAPNEL_CHANCE_TIER_2
//2020 rebalance: is supposed to counter runners and lurkers, dealing high damage to the only castes with no armor.
//Limited by its lack of versatility and lower supply, so marines finally have an answer for flanker castes that isn't just buckshot.

/datum/ammo/bullet/pistol/caliber_9x19mm/hollow
	name = "hollowpoint pistol bullet"

	damage = 55 //hollowpoint is strong
	penetration = 0 //hollowpoint can't pierce armor!
	shrapnel_chance = SHRAPNEL_CHANCE_TIER_3 //hollowpoint causes shrapnel

// Used by M4A3 AP and mod88
/datum/ammo/bullet/pistol/caliber_9x19mm/ap
	name = "armor-piercing pistol bullet"

	damage = 25
	accuracy = HIT_ACCURACY_TIER_2
	penetration= ARMOR_PENETRATION_TIER_8
	shrapnel_chance = SHRAPNEL_CHANCE_TIER_2

/datum/ammo/bullet/pistol/caliber_9x19mm/ap/penetrating
	name = "wall-penetrating pistol bullet"
	shrapnel_chance = 0

	damage = 30
	penetration = ARMOR_PENETRATION_TIER_10

/datum/ammo/bullet/pistol/caliber_9x19mm/ap/penetrating/set_bullet_traits()
	. = ..()
	LAZYADD(traits_to_give, list(
		BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_penetrating)
	))

/datum/ammo/bullet/pistol/caliber_9x19mm/ap/toxin
	name = "toxic pistol bullet"
	var/acid_per_hit = 10
	var/organic_damage_mult = 3

/datum/ammo/bullet/pistol/caliber_9x19mm/ap/toxin/on_hit_mob(mob/M, obj/projectile/P)
	. = ..()
	M.AddComponent(/datum/component/status_effect/toxic_buildup, acid_per_hit)

/datum/ammo/bullet/pistol/caliber_9x19mm/ap/toxin/on_hit_turf(turf/T, obj/projectile/P)
	. = ..()
	if(T.turf_flags & TURF_ORGANIC)
		P.damage *= organic_damage_mult

/datum/ammo/bullet/pistol/caliber_9x19mm/ap/toxin/on_hit_obj(obj/O, obj/projectile/P)
	. = ..()
	if(O.flags_obj & OBJ_ORGANIC)
		P.damage *= organic_damage_mult

/datum/ammo/bullet/pistol/caliber_9x19mm/le
	name = "armor-shredding pistol bullet"

	damage = 15
	penetration = ARMOR_PENETRATION_TIER_4
	pen_armor_punch = 3

/datum/ammo/bullet/pistol/caliber_9x19mm/rubber
	name = "rubber pistol bullet"
	sound_override = 'sound/weapons/gun_c99.ogg'

	damage = 0
	stamina_damage = 25
	shrapnel_chance = 0

/datum/ammo/bullet/pistol/caliber_9x19mm/rubber/es4
	name = "stun pistol bullet"
	icon_state = "cm_laser"
	sound_override = null
	flags_ammo_behavior = AMMO_ENERGY|AMMO_IGNORE_RESIST
	sound_hit = "energy_hit"
	sound_miss = "energy_miss"
	sound_bounce = "energy_bounce"
	hit_effect_color = "#00aeff"
	stamina_damage = 30
	accuracy = HIT_ACCURACY_TIER_4
/datum/ammo/bullet/pistol/caliber_9x19mm/incendiary
	name = "incendiary pistol bullet"
	damage_type = BURN
	shrapnel_chance = 0
	flags_ammo_behavior = AMMO_BALLISTIC

	accuracy = HIT_ACCURACY_TIER_3
	damage = 20

/datum/ammo/bullet/pistol/caliber_9x19mm/incendiary/set_bullet_traits()
	..()
	LAZYADD(traits_to_give, list(
		BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_incendiary)
	))
/datum/ammo/bullet/pistol/caliber_9x19mm/squash
	name = "squash-head pistol bullet"
	headshot_state = HEADSHOT_OVERLAY_MEDIUM
	debilitate = list(0,0,0,0,0,0,0,2)

	effective_range_max = 6
	accuracy = HIT_ACCURACY_TIER_4
	damage = 45
	penetration= ARMOR_PENETRATION_TIER_6
	shrapnel_chance = SHRAPNEL_CHANCE_TIER_2
	damage_falloff = DAMAGE_FALLOFF_TIER_6

/datum/ammo/bullet/pistol/caliber_9x19mm/squash/toxin
	name = "toxic squash-head pistol bullet"
	var/acid_per_hit = 10
	var/organic_damage_mult = 3

/datum/ammo/bullet/pistol/caliber_9x19mm/squash/toxin/on_hit_mob(mob/M, obj/projectile/P)
	. = ..()
	M.AddComponent(/datum/component/status_effect/toxic_buildup, acid_per_hit)

/datum/ammo/bullet/pistol/caliber_9x19mm/squash/toxin/on_hit_turf(turf/T, obj/projectile/P)
	. = ..()
	if(T.turf_flags & TURF_ORGANIC)
		P.damage *= organic_damage_mult

/datum/ammo/bullet/pistol/caliber_9x19mm/squash/toxin/on_hit_obj(obj/O, obj/projectile/P)
	. = ..()
	if(O.flags_obj & OBJ_ORGANIC)
		P.damage *= organic_damage_mult

/datum/ammo/bullet/pistol/caliber_9x19mm/squash/penetrating
	name = "wall-penetrating squash-head pistol bullet"
	shrapnel_chance = 0
	penetration = ARMOR_PENETRATION_TIER_10

/datum/ammo/bullet/pistol/caliber_9x19mm/squash/penetrating/set_bullet_traits()
	. = ..()
	LAZYADD(traits_to_give, list(
		BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_penetrating)
	))

/datum/ammo/bullet/pistol/caliber_9x19mm/squash/incendiary
	name = "incendiary squash-head pistol bullet"
	damage_type = BURN
	shrapnel_chance = 0
	flags_ammo_behavior = AMMO_BALLISTIC
	accuracy = HIT_ACCURACY_TIER_3
	damage = 35

/datum/ammo/bullet/pistol/caliber_9x19mm/squash/incendiary/set_bullet_traits()
	..()
	LAZYADD(traits_to_give, list(
		BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_incendiary)
	))

/datum/ammo/bullet/pistol/caliber_9x19mm/squash/rubber
	name = "rubber squash-head pistol bullet"
	damage_type = BURN
	shrapnel_chance = 0
	sound_override = 'sound/weapons/gun_c99.ogg'
	damage = 2
	stamina_damage = 40
