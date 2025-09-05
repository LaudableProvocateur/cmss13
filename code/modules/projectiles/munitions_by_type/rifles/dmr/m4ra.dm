/obj/item/ammo_magazine/rifle/m4ra
	name = "\improper M4RA magazine (10x24mm)"
	desc = "A magazine of 10x24mm rounds for use in the M4RA battle rifle."
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/marksman_rifles.dmi'
	icon_state = "m4ra"
	default_ammo = /datum/ammo/bullet/rifle
	max_rounds = 25
	gun_type = /obj/item/weapon/gun/rifle/m4ra
	bonus_overlay_icon = 'icons/obj/items/weapons/guns/guns_by_faction/USCM/marksman_rifles.dmi'
	ammo_band_icon = "+m4ra_band"
	ammo_band_icon_empty = "+m4ra_band_e"

/obj/item/ammo_magazine/rifle/m4ra/ap
	name = "\improper M4RA armor-piercing magazine (10x24mm)"
	desc = "A magazine of armor-piercing 10x24mm rounds for use in the M4RA battle rifle."
	default_ammo = /datum/ammo/bullet/rifle/ap
	max_rounds = 25
	ammo_band_color = AMMO_BAND_COLOR_AP

/obj/item/ammo_magazine/rifle/m4ra/extended
	name = "\improper M4RA extended magazine (10x24mm)"
	desc = "An extended magazine of 10x24mm rounds for use in the M4RA battle rifle. Holds an additional 10 rounds, up to 35."
	icon_state = "m4ra_extended"
	bonus_overlay = "m4ra_ex"
	max_rounds = 35

/obj/item/ammo_magazine/rifle/m4ra/rubber
	name = "M4RA rubber magazine (10x24mm)"
	desc = "A magazine of less than lethal rubber 10x24mm rounds for use in the M4RA battle rifle."
	default_ammo = /datum/ammo/bullet/rifle/rubber
	ammo_band_color = AMMO_BAND_COLOR_RUBBER

/obj/item/ammo_magazine/rifle/m4ra/heap
	name = "\improper M4RA high-explosive armor-piercing magazine (10x24mm)"
	desc = "A magazine of high-explosive armor-piercing 10x24mm rounds for use in the M4RA battle rifle."
	default_ammo = /datum/ammo/bullet/rifle/heap
	ammo_band_color = AMMO_BAND_COLOR_HEAP

/obj/item/ammo_magazine/rifle/m4ra/penetrating
	name = "\improper M4RA wall-penetrating magazine (10x24mm)"
	desc = "A magazine of wall-penetrating 10x24mm rounds for use in the M4RA battle rifle."
	default_ammo = /datum/ammo/bullet/rifle/ap/penetrating
	ammo_band_color = AMMO_BAND_COLOR_PENETRATING

/obj/item/ammo_magazine/rifle/m4ra/incendiary
	name = "\improper M4RA incendiary magazine (10x24mm)"
	desc = "A magazine of incendiary 10x24mm rounds for use in the M4RA battle rifle."
	default_ammo = /datum/ammo/bullet/rifle/incendiary
	ammo_band_color = AMMO_BAND_COLOR_INCENDIARY
