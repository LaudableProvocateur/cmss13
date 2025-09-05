// 16 Gauge Shotgun Shells

/*

Breaching - Contains breaching flechettes.
-
Rubber - Contains rubber buckshot.

*/

// default the meta 12 gauge shell to be a slug with no on hit effects.
/datum/ammo/bullet/gauge_16
	name = "16 gauge generic"
	handful_state = "slug_shell"

	accurate_range = 8
	max_range = 8
	damage = 70
	penetration = ARMOR_PENETRATION_TIER_4
	accuracy = HIT_ACCURACY_TIER_3
	damage_armor_punch = 2
	handful_state = "slug_shell"
	headshot_state = HEADSHOT_OVERLAY_HEAVY

// faction clash universal shotgun stuff.
/datum/ammo/bullet/gauge_16/setup_faction_clash_values()
	. = ..()
	accuracy = accuracy * 2 + 85 //we revert accuracy reduction that is applied on other bullets shotguns are accurate but already have short range only

// 16 Gauge - Breaching Flechettes
/datum/ammo/bullet/gauge_16/breaching
	name = "light breaching shell"
	icon_state = "flechette"
	handful_state = "breaching_shell"
	multiple_handful_name = TRUE
	bonus_projectiles_type = /datum/ammo/bullet/gauge_16/breaching/spread

	accuracy_var_low = PROJECTILE_VARIANCE_TIER_6
	accuracy_var_high = PROJECTILE_VARIANCE_TIER_6
	damage = 55
	max_range = 5
	bonus_projectiles_amount = EXTRA_PROJECTILES_TIER_3
	penetration = ARMOR_PENETRATION_TIER_1

/datum/ammo/bullet/gauge_16/breaching/spread
	name = "additional light breaching fragments"
	bonus_projectiles_amount = 0
	accuracy_var_low = PROJECTILE_VARIANCE_TIER_6
	accuracy_var_high = PROJECTILE_VARIANCE_TIER_6
	scatter = SCATTER_AMOUNT_TIER_3
	damage = 10

// 16 Gauge - Rubber Buckshot
/datum/ammo/bullet/gauge_16/rubber
	name = "rubber buckshot shell"
	icon_state = "buckshot"
	handful_state = "rubbershot_shell"
	multiple_handful_name = TRUE
	bonus_projectiles_type = /datum/ammo/bullet/gauge_16/rubber/spread
	sound_override = 'sound/weapons/gun_shotgun_riot.ogg'
	headshot_state = HEADSHOT_OVERLAY_LIGHT  //It's not meant to kill people... but if you put it in your mouth, it will.
	accuracy = HIT_ACCURACY_TIER_3
	shell_speed = AMMO_SPEED_TIER_2
	max_range = 5
	shrapnel_chance = 0
	damage = 0
	stamina_damage = 35
	bonus_projectiles_amount = EXTRA_PROJECTILES_TIER_3
	penetration = ARMOR_PENETRATION_TIER_1

/datum/ammo/bullet/gauge_16/rubber/spread
	name = "additional rubber buckshot"
	bonus_projectiles_amount = 0
	scatter = SCATTER_AMOUNT_TIER_3
	stamina_damage = 10
