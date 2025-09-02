/datum/ammo/bullet/revolver/caliber_7_62x38mmR
	name = "heavy revolver bullet"
	headshot_state = HEADSHOT_OVERLAY_MEDIUM
	penetration = ARMOR_PENETRATION_TIER_4
	damage = 70


/datum/ammo/bullet/revolver/caliber_7_62x38mmR/shrapnel
	name = "shrapnel shot"
	headshot_state = HEADSHOT_OVERLAY_HEAVY //Gol-dang shotgun blow your fething head off.
	debilitate = list(0,0,0,0,0,0,0,0)
	icon_state = "shrapnelshot"
	handful_state = "shrapnel"
	bonus_projectiles_type = /datum/ammo/bullet/revolver/caliber_7_62x38mmR/shrapnel_bits

	max_range = 6
	damage = 40 // + TIER_4 * 3
	damage_falloff = DAMAGE_FALLOFF_TIER_7
	penetration = ARMOR_PENETRATION_TIER_8
	bonus_projectiles_amount = EXTRA_PROJECTILES_TIER_3
	shrapnel_chance = 100
	shrapnel_type = /obj/item/shard/shrapnel/upp
	//roughly 90 or so damage with the additional shrapnel, around 130 in total with primary round

/datum/ammo/bullet/revolver/caliber_7_62x38mmR/shrapnel/on_hit_mob(mob/M, obj/projectile/P)
	pushback(M, P, 1)

/datum/ammo/bullet/revolver/caliber_7_62x38mmR/shrapnel_bits
	name = "small shrapnel"
	icon_state = "shrapnelshot_bit"

	max_range = 6
	damage = 30
	penetration = ARMOR_PENETRATION_TIER_4
	scatter = SCATTER_AMOUNT_TIER_1
	bonus_projectiles_amount = 0
	shrapnel_type = /obj/item/shard/shrapnel/upp/bits
