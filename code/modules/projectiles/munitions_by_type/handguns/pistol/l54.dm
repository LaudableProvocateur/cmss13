/obj/item/ammo_magazine/pistol/l54
	name = "\improper L54 magazine (9mm)"
	desc = "A pistol magazine that fits the L54."
	caliber = "9mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/TWE/pistols.dmi'
	icon_state = "l54"
	max_rounds = 12
	w_class = SIZE_SMALL
	default_ammo = /datum/ammo/bullet/caliber_9x19mm
	gun_type = /obj/item/weapon/gun/pistol/l54
	ammo_band_icon = "+l54_band"
	ammo_band_icon_empty = "+l54_band_e"

/obj/item/ammo_magazine/pistol/l54_custom
	name = "\improper L54-S magazine (.9x20mm)"
	desc = "A modified L54 pistol magazine loaded with proprietary .9x20mm ammunition. Incompatible with standard 9mm weapons or magazines."
	caliber = "9mm (special)"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/TWE/pistols.dmi'
	icon_state = "l54"
	max_rounds = 12
	w_class = SIZE_SMALL
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/caliber_9x20mm
	gun_type = /obj/item/weapon/gun/pistol/l54_custom
	ammo_band_icon = "+l54_band"
	ammo_band_icon_empty = "+l54_band_e"
	ammo_band_color = AMMO_BAND_COLOR_HIGH_VELOCITY

/obj/item/ammo_magazine/pistol/l54/hp
	name = "\improper L54 hollowpoint magazine (9mm)"
	desc = "A pistol magazine for the L54. This one contains hollowpoint bullets, which have noticeably higher stopping power on unarmored targets, and noticeably less on armored targets."
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/hollow
	ammo_band_color = AMMO_BAND_COLOR_HOLLOWPOINT

/obj/item/ammo_magazine/pistol/l54/ap
	name = "\improper L54 AP magazine (9mm)"
	desc = "A pistol magazine for the L54. This one contains armor-piercing bullets, which have noticeably higher stopping power on well-armored targets, and noticeably less on unarmored or lightly-armored targets."
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/ap
	ammo_band_color = AMMO_BAND_COLOR_AP

/obj/item/ammo_magazine/pistol/l54/rubber
	name = "\improper L54 Rubber magazine (9mm)"
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/rubber
	ammo_band_color = AMMO_BAND_COLOR_RUBBER

/obj/item/ammo_magazine/pistol/l54/incendiary
	name = "\improper L54 incendiary magazine (9mm)"
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/incendiary
	ammo_band_color = AMMO_BAND_COLOR_INCENDIARY

/obj/item/ammo_magazine/pistol/l54/penetrating
	name = "\improper L54 wall-penetrating magazine (9mm)"
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/ap/penetrating
	ammo_band_color = AMMO_BAND_COLOR_PENETRATING

/obj/item/ammo_magazine/pistol/l54/toxin
	name = "\improper L54 toxin magazine (9mm)"
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/ap/toxin
	ammo_band_color = AMMO_BAND_COLOR_TOXIN
