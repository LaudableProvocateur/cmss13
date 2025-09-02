/datum/ammo/bullet/shotgun/light/breaching
	name = "light breaching shell"
	icon_state = "flechette"
	handful_state = "breaching_shell"
	multiple_handful_name = TRUE
	bonus_projectiles_type = /datum/ammo/bullet/shotgun/light/breaching/spread

	accuracy_var_low = PROJECTILE_VARIANCE_TIER_6
	accuracy_var_high = PROJECTILE_VARIANCE_TIER_6
	damage = 55
	max_range = 5
	bonus_projectiles_amount = EXTRA_PROJECTILES_TIER_3
	penetration = ARMOR_PENETRATION_TIER_1

/datum/ammo/bullet/shotgun/light/breaching/spread
	name = "additional light breaching fragments"
	bonus_projectiles_amount = 0
	accuracy_var_low = PROJECTILE_VARIANCE_TIER_6
	accuracy_var_high = PROJECTILE_VARIANCE_TIER_6
	scatter = SCATTER_AMOUNT_TIER_3
	damage = 10

/datum/ammo/bullet/shotgun/light/rubber
	name = "rubber buckshot shell"
	icon_state = "buckshot"
	handful_state = "rubbershot_shell"
	multiple_handful_name = TRUE
	bonus_projectiles_type = /datum/ammo/bullet/shotgun/light/rubber/spread
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

/datum/ammo/bullet/shotgun/light/rubber/spread
	name = "additional rubber buckshot"
	bonus_projectiles_amount = 0
	scatter = SCATTER_AMOUNT_TIER_3
	stamina_damage = 10
