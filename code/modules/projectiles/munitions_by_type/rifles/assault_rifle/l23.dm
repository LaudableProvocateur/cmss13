/obj/item/ammo_magazine/rifle/l23
	name = "\improper L23 magazine (8.88x51mm)"
	desc = "An 8.88x51mm L23 assault rifle magazine."
	caliber = "8.88x51mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/TWE/assault_rifles.dmi'
	icon_state = "l23"
	item_state = "l23"
	default_ammo = /datum/ammo/bullet/smg/caliber_8_88mm
	max_rounds = 30
	gun_type = /obj/item/weapon/gun/rifle/l23
	ammo_band_icon = "+l23_band"
	ammo_band_icon_empty = "+l23_band_e"

/obj/item/ammo_magazine/rifle/l23/extended
	name = "\improper L23 high-capacity drum magazine (8.88x51mm)"
	desc = "An 8.88x51mm L23 assault rifle magazine. This one contains 45 bullets."
	icon_state = "l23_ext"
	item_state = "l23_ext"
	bonus_overlay = "l23_ext_overlay"
	max_rounds = 45

/obj/item/ammo_magazine/rifle/l23/ap
	name = "\improper L23 armor-piercing magazine (8.88x51mm)"
	desc = "An armor-piercing 8.88x51mm L23 assault rifle magazine."
	default_ammo = /datum/ammo/bullet/smg/caliber_8_88mm/ap
	ammo_band_color = AMMO_BAND_COLOR_AP

/obj/item/ammo_magazine/rifle/l23/heap
	name = "\improper L23 HEAP magazine (8.88x51mm)"
	desc = "A high-explosive armor-piercing 8.88x51mm L23 assault rifle magazine."
	default_ammo = /datum/ammo/bullet/smg/caliber_8_88mm/heap
	ammo_band_color = AMMO_BAND_COLOR_HEAP

/obj/item/ammo_magazine/rifle/l23/incendiary
	name = "\improper L23 incindiary magazine (8.88x51mm)"
	desc = "A white phosphorus-tipped incendiary 8.88x51mm L23 assault rifle magazine."
	default_ammo = /datum/ammo/bullet/smg/caliber_8_88mm/incendiary
	ammo_band_color = AMMO_BAND_COLOR_INCENDIARY

/obj/item/ammo_magazine/rifle/l23/rubber
	name = "\improper L23 practice magazine (8.88x51mm)"
	desc = "An L23 assault rifle magazine. This one is loaded with rubber bullets."
	default_ammo = /datum/ammo/bullet/smg/caliber_8_88mm/rubber
	ammo_band_color = AMMO_BAND_COLOR_RUBBER

/obj/item/ammo_magazine/rifle/l23/toxin
	name = "\improper L23 toxin magazine (8.88x51mm)"
	desc = "A toxin 8.88x51mm L23 assault rifle magazine."
	default_ammo = /datum/ammo/bullet/smg/caliber_8_88mm/ap/toxin
	ammo_band_color = AMMO_BAND_COLOR_TOXIN
