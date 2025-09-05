/obj/item/ammo_magazine/rifle/m16
	name = "\improper M16 magazine (5.56x45mm)"
	desc = "A 5.56x45mm magazine for the M16 assault rifle."
	caliber = "5.56x45mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/colony/assault_rifles.dmi'
	icon_state = "m16"
	default_ammo = /datum/ammo/bullet/rifle
	max_rounds = 20
	gun_type = /obj/item/weapon/gun/rifle/m16
	w_class = SIZE_MEDIUM
	ammo_band_icon = "+m16_band"
	ammo_band_icon_empty = "+m16_band_e"

/obj/item/ammo_magazine/rifle/m16/ap
	name = "\improper M16 AP magazine (5.56x45mm)"
	desc = "An armor-piercing 5.56x45mm magazine for the M16 assault rifle."
	caliber = "5.56x45mm"
	default_ammo = /datum/ammo/bullet/rifle/ap
	max_rounds = 20
	gun_type = /obj/item/weapon/gun/rifle/m16
	w_class = SIZE_MEDIUM
	ammo_band_color = AMMO_BAND_COLOR_AP

/obj/item/ammo_magazine/rifle/m16/ext
	name = "\improper M16 extended magazine (5.56x45mm)"
	desc = "An extended 5.56x45mm magazine for the M16 assault rifle. This one contains 30 bullets."
	icon_state = "m16_ext"
	item_state = "m16_ext"
	bonus_overlay = "m16_ext_overlay"
	max_rounds = 30
