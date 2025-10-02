/datum/ammo/bullet/sniper/anti_material_rifle/caliber_10x102mm
	damage = 400 // Fully intended to vaporize anything smaller than a mini cooper
	accurate_range_min = 10
	handful_state = "vulture_bullet"
	sound_hit = 'sound/bullets/bullet_vulture_impact.ogg'
	flags_ammo_behavior = AMMO_BALLISTIC|AMMO_SNIPER|AMMO_IGNORE_COVER|AMMO_ANTIVEHICLE

/datum/ammo/bullet/sniper/anti_material_rifle/caliber_10x102mm/on_hit_mob(mob/hit_mob, obj/projectile/bullet)
	. = ..()
	knockback(hit_mob, bullet, 30)
	hit_mob.apply_effect(3, SLOW)

/datum/ammo/bullet/sniper/anti_material_rifle/caliber_10x102mm/set_bullet_traits()
	. = ..()
	LAZYADD(traits_to_give, list(
		BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_penetrating/heavy)
	))

/datum/ammo/bullet/sniper/anti_material_rifle/caliber_10x102mm/holo_target
	name = "holo-targeting anti-materiel sniper bullet"
	damage = 60 // it's a big bullet but its purpose is to support marines, not to kill enemies by itself
	/// inflicts this many holo stacks per bullet hit
	var/holo_stacks = 333
	/// modifies the default cap limit of 100 by this amount
	var/bonus_damage_cap_increase = 233
	/// multiplies the default drain of 5 holo stacks per second by this amount
	var/stack_loss_multiplier = 2

/datum/ammo/bullet/sniper/anti_material_rifle/caliber_10x102mm/holo_target/on_hit_mob(mob/hit_mob, obj/projectile/bullet)
	hit_mob.AddComponent(/datum/component/bonus_damage_stack, holo_stacks, world.time, bonus_damage_cap_increase, stack_loss_multiplier)
	playsound(hit_mob, 'sound/weapons/gun_vulture_mark.ogg', 40)
	to_chat(hit_mob, isxeno(hit_mob) ? SPAN_XENOHIGHDANGER("It feels as if we were MARKED FOR DEATH!") : SPAN_HIGHDANGER("It feels as if you were MARKED FOR DEATH!"))
	hit_mob.balloon_alert_to_viewers("marked for death!")

// the effect should be limited to one target, with IFF to compensate how hard it will be to hit these shots
/datum/ammo/bullet/sniper/anti_material_rifle/caliber_10x102mm/holo_target/set_bullet_traits()
	LAZYADD(traits_to_give, list(
		BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_iff)
	))
