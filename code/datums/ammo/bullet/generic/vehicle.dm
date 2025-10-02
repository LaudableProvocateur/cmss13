/datum/ammo/bullet/vehicle
	name = "autocannon bullet"
	icon_state = "autocannon"
	sound_hit  = 'sound/weapons/sting_boom_small1.ogg'
	damage_falloff = 0
	flags_ammo_behavior = AMMO_BALLISTIC
	accurate_range_min = 4

	accuracy = HIT_ACCURACY_TIER_8
	scatter = 0
	damage = 60
	damage_var_high = PROJECTILE_VARIANCE_TIER_8
	penetration = ARMOR_PENETRATION_TIER_6
	accurate_range = 32
	max_range = 32
	shell_speed = AMMO_SPEED_TIER_6
