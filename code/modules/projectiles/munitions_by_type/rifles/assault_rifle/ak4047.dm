/obj/item/ammo_magazine/rifle/ak4047
	name = "\improper AK-4047 magazine (10x24mm)"
	desc = "A rugged and reliable 40-round magazine designed for the AK-4047 series assault rifle. Built for durability, it can withstand harsh conditions and keep firing even in the worst environments."
	caliber = "10x24mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/UPP/assault_rifles.dmi'
	icon_state = "ak4047"
	item_state = "generic_mag"
	item_icons = list(
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_righthand.dmi'
		)
	w_class = SIZE_MEDIUM
	default_ammo = /datum/ammo/bullet/rifle
	max_rounds = 40
	gun_type = /obj/item/weapon/gun/rifle/ak4047
	ammo_band_icon = "+ak4047_band"
	ammo_band_icon_empty = "+ak4047_band_e"

/obj/item/ammo_magazine/rifle/ak4047/ap
	name = "\improper AK-4047 AP magazine (10x24mm)"
	desc = "A 10mm magazine containing armor piercing rounds for the AK-4047 rifle."
	default_ammo = /datum/ammo/bullet/rifle/ap
	ammo_band_color = AMMO_BAND_COLOR_AP

/obj/item/ammo_magazine/rifle/ak4047/heap
	name = "\improper AK-4047 HEAP magazine (10x24mm)"
	desc = "A 10mm magazine containing the standard high explosive armor piercing rounds for the AK-4047 rifle."
	default_ammo = /datum/ammo/bullet/rifle/heap
	ammo_band_color = AMMO_BAND_COLOR_HEAP

/obj/item/ammo_magazine/rifle/ak4047/incendiary
	name = "\improper AK-4047 incendiary magazine (10x24mm)"
	desc = "A 10mm assault rifle magazine containing the incendiary rounds for the AK-4047 rifle."
	default_ammo = /datum/ammo/bullet/rifle/incendiary
	ammo_band_color = AMMO_BAND_COLOR_INCENDIARY
