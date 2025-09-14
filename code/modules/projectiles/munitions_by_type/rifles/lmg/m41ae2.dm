/obj/item/ammo_magazine/rifle/lmg
	name = "\improper M41AE2 ammo box (10x24mm)"
	desc = "A semi-rectangular 10x24mm box magazine for the M41AE2 Heavy Pulse Rifle."
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/machineguns.dmi'
	icon_state = "m41ae2"
	max_rounds = 300
	gun_type = /obj/item/weapon/gun/rifle/lmg
	flags_magazine = AMMUNITION_CANNOT_REMOVE_BULLETS|AMMUNITION_REFILLABLE|AMMUNITION_SLAP_TRANSFER
	ammo_band_icon = "+m41ae2_band"
	ammo_band_icon_empty = "+m41ae2_band_e"

/obj/item/ammo_magazine/rifle/lmg/holo_target
	name = "\improper M41AE2 ammo box (10x24mm holo-target)"
	desc = "A semi-rectangular holo-targeting box magazine for the M41AE2 Heavy Pulse Rifle."
	default_ammo = /datum/ammo/bullet/rifle/caliber_10x24mm/holo_target
	max_rounds = 200
	ammo_band_color = AMMO_BAND_COLOR_HOLOTARGETING

/obj/item/ammo_magazine/rifle/lmg/ap
	name = "\improper M41AE2 ammo box (10x24mm armor-piercing)"
	desc = "A semi-rectangular armor-piercing box magazine for the M41AE2 Heavy Pulse Rifle."
	default_ammo = /datum/ammo/bullet/rifle/caliber_10x24mm/ap
	max_rounds = 300
	ammo_band_color = AMMO_BAND_COLOR_AP

/obj/item/ammo_magazine/rifle/lmg/heap
	name = "\improper M41AE2 ammo box (10x24mm high-explosive armor-piercing)"
	desc = "A semi-rectangular box magazine for the M41AE2 Heavy Pulse Rifle. This one contains the standard armor-piercing explosive tipped round of the USCM."
	default_ammo = /datum/ammo/bullet/rifle/caliber_10x24mm/heap
	max_rounds = 300
	gun_type = /obj/item/weapon/gun/rifle/lmg
	ammo_band_color = AMMO_BAND_COLOR_HEAP
