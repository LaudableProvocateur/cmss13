/obj/item/ammo_magazine/rifle/type71
	name = "\improper Type 71 magazine (5.45x39mm)"
	desc = "A 5.45x39mm high-capacity casket magazine for the Type 71 rifle."
	caliber = "5.45x39mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/UPP/assault_rifles.dmi'
	icon_state = "type71"
	ammo_band_icon = "+type71_band"
	ammo_band_icon_empty = "+type71_band_e"
	default_ammo = /datum/ammo/bullet/rifle/caliber_5_45x39mm
	max_rounds = 60
	gun_type = /obj/item/weapon/gun/rifle/type71

/obj/item/ammo_magazine/rifle/type71/ap
	name = "\improper Type 71 AP magazine (5.45x39mm)"
	desc = "An armor-piercing 5.45x39mm high-capacity casket magazine for the Type 71 rifle."
	default_ammo = /datum/ammo/bullet/rifle/caliber_5_45x39mm/ap
	ammo_band_color = AMMO_BAND_COLOR_AP

/obj/item/ammo_magazine/rifle/type71/heap
	name = "\improper Type 71 HEAP magazine (5.45x39mm)"
	desc = "A standard high-explosive armor-piercing 5.45x39mm high-capacity casket magazine for the Type 71 rifle."
	default_ammo = /datum/ammo/bullet/rifle/caliber_5_45x39mm/heap
	ammo_band_color = AMMO_BAND_COLOR_HEAP
