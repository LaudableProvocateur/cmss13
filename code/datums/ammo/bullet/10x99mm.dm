/datum/ammo/bullet/sniper/anti_material_rifle/caliber_10x99mm
	name = "anti-materiel sniper bullet"

	shrapnel_chance = 0 // This isn't leaving any shrapnel.
	accuracy = HIT_ACCURACY_TIER_8
	damage = 125
	shell_speed = AMMO_SPEED_TIER_6
	penetration = ARMOR_PENETRATION_TIER_10 + ARMOR_PENETRATION_TIER_5

/datum/ammo/bullet/sniper/anti_material_rifle/caliber_10x99mm/super_sonic
	name = "supersonic sniper bullet"

	shrapnel_chance = 0 // This isn't leaving any shrapnel.
	accuracy = HIT_ACCURACY_TIER_8
	damage = 150
	shell_speed = AMMO_SPEED_TIER_6 + AMMO_SPEED_TIER_2
	penetration = ARMOR_PENETRATION_TIER_10 + ARMOR_PENETRATION_TIER_5

/datum/ammo/bullet/sniper/anti_material_rifle/caliber_10x99mm/super_sonic/set_bullet_traits()
	. = ..()
	LAZYADD(traits_to_give, list(
		BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_penetrating)
	))

/datum/ammo/bullet/sniper/anti_material_rifle/caliber_10x99mm/super_sonic/on_hit_mob(mob/M,obj/projectile/P)
	if((P.projectile_flags & PROJECTILE_BULLSEYE) && M == P.original)
		var/mob/living/L = M
		var/size_damage_mod = 0.5
		if(isxeno(M))
			var/mob/living/carbon/xenomorph/target = M
			if(target.mob_size >= MOB_SIZE_XENO)
				size_damage_mod += 0.5
			if(target.mob_size >= MOB_SIZE_BIG)
				size_damage_mod += 1
			L.apply_armoured_damage(damage*size_damage_mod, ARMOR_BULLET, BRUTE, null, penetration)
		else
			L.apply_armoured_damage(damage, ARMOR_BULLET, BRUTE, null, penetration)
		// 150% damage to runners (225), 300% against Big xenos (450), and 200% against all others (300). -Kaga
		to_chat(P.firer, SPAN_WARNING("Bullseye!"))
