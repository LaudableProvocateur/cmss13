/obj/item/ammo_magazine/m4a3
	name = "\improper M4A3 magazine (9mm)"
	desc = "A 9mm pistol magazine for the M4A3."
	caliber = "9mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/pistols.dmi'
	icon_state = "m4a3"
	max_rounds = 12
	w_class = SIZE_SMALL
	default_ammo = /datum/ammo/bullet/caliber_9x19mm
	gun_type = /obj/item/weapon/gun/pistol/m4a3
	ammo_band_icon = "+m4a3_band"
	ammo_band_icon_empty = "+m4a3_band_e"

/obj/item/ammo_magazine/m4a3/hp
	name = "\improper M4A3 hollowpoint magazine (9mm)"
	desc = "A hollow-point 9mm pistol magazine for the M4A3. These hollow-point bullets have noticeably higher stopping power on unarmored targets, and noticeably less on armored targets."
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/hollow
	ammo_band_color = AMMO_BAND_COLOR_HOLLOWPOINT

/obj/item/ammo_magazine/m4a3/ap
	name = "\improper M4A3 AP magazine (9mm)"
	desc = "An armor-piercing 9mm pistol magazine for the M4A3. These armor-piercing rounds have noticeably higher stopping power on armored targets, and noticeably less on unarmored targets."
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/ap
	ammo_band_color = AMMO_BAND_COLOR_AP

/obj/item/ammo_magazine/m4a3/rubber
	name = "\improper M4A3 Rubber magazine (9mm)"
	desc = "A 9mm pistol magazine for the M4A3. This one contains rubber bullets."
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/rubber
	ammo_band_color = AMMO_BAND_COLOR_RUBBER

/obj/item/ammo_magazine/m4a3/incendiary
	name = "\improper M4A3 incendiary magazine (9mm)"
	desc = "An incendiary 9mm pistol magazine for the M4A3."
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/incendiary
	ammo_band_color = AMMO_BAND_COLOR_INCENDIARY

/obj/item/ammo_magazine/m4a3/penetrating
	name = "\improper M4A3 wall-penetrating magazine (9mm)"
	desc = "A wall-penetrating 9mm pistol magazine for the M4A3."
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/ap/penetrating
	ammo_band_color = AMMO_BAND_COLOR_PENETRATING

/obj/item/ammo_magazine/m4a3/toxin
	name = "\improper M4A3 toxin magazine (9mm)"
	desc = "A toxin 9mm pistol magazine for the M4A3."
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/ap/toxin
	ammo_band_color = AMMO_BAND_COLOR_TOXIN
