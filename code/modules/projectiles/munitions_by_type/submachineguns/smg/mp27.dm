/obj/item/ammo_magazine/smg/mp27
	name = "\improper MP27 magazine (4.6x30mm)"
	desc = "A 4.6mm magazine for the MP27. Fires large, heavy bullets that have noticeable punch for an SMG but also have equally noticeable scatter and a loss of accuracy."
	default_ammo = /datum/ammo/bullet/caliber_4_6x30mm
	caliber = "4.6x30mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/colony/smgs.dmi'
	icon_state = "mp7_30"
	gun_type = /obj/item/weapon/gun/smg/mp27
	max_rounds = 30 //Also comes in 20 and 40.
	bonus_overlay = "mp7_30_overlay"
	var/random_magazine = TRUE

/obj/item/ammo_magazine/smg/mp27/Initialize(mapload, spawn_empty)
	. = ..()
	if(random_magazine)
		var/capacity = pick(20, 30, 40)
		name = "\improper MP27 [capacity]-round magazine (4.6x30mm)"
		desc = "A [capacity]-round 4.6mm magazine for the MP27. Fires large, heavy bullets that have noticeable punch for an SMG but also have equally noticeable scatter and a loss of accuracy. Due to a factory blueprint mixup, 20, 30, and 40-round magazines were all manufactured and sold in the same boxes, leading to a class act lawsuit that bankrupted the company."
		caliber = "4.6x30mm"
		base_mag_icon = "mp7_[capacity]"
		icon_state = "mp7_[capacity]"
		bonus_overlay = "mp7_[capacity]_overlay"
		current_rounds = capacity
		max_rounds = capacity
		random_magazine = FALSE
