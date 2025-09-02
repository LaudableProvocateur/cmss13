/obj/item/ammo_magazine/pistol/mod88
	name = "\improper 88M4 AP magazine (9mm)"
	desc = "A 9mm pistol magazine for the Mod88."
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/ap
	caliber = "9mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/WY/pistols.dmi'
	icon_state = "88m4"
	max_rounds = 19
	gun_type = /obj/item/weapon/gun/pistol/mod88
	ammo_band_icon = "+88m4_band"
	ammo_band_icon_empty = "+88m4_band_e"
	ammo_band_color = AMMO_BAND_COLOR_AP

/obj/item/ammo_magazine/pistol/mod88/normalpoint // Unused
	name = "\improper 88M4 FMJ magazine (9mm)"
	default_ammo = /datum/ammo/bullet/caliber_9x19mm
	caliber = "9mm"
	ammo_band_color = null

/obj/item/ammo_magazine/pistol/mod88/normalpoint/extended // Unused
	name = "\improper 88M4 FMJ extended magazine (9mm)"
	icon_state = "88m4_mag_ex"
	default_ammo = /datum/ammo/bullet/caliber_9x19mm
	caliber = "9mm"

/obj/item/ammo_magazine/pistol/mod88/toxin
	name = "\improper 88M4 toxic magazine (9mm)"
	desc = "A toxin 9mm pistol magazine for the Mod88."
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/ap/toxin
	ammo_band_color = AMMO_BAND_COLOR_TOXIN

/obj/item/ammo_magazine/pistol/mod88/penetrating
	name = "\improper 88M4 wall-penetrating magazine (9mm)"
	desc = "A wall-penetrating 9mm pistol magazine for the Mod88."
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/ap/penetrating
	ammo_band_color = AMMO_BAND_COLOR_PENETRATING

/obj/item/ammo_magazine/pistol/mod88/incendiary
	name = "\improper 88M4 incendiary magazine (9mm)"
	desc = "An incendiary 9mm pistol magazine for the Mod88."
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/incendiary
	ammo_band_color = AMMO_BAND_COLOR_INCENDIARY

/obj/item/ammo_magazine/pistol/mod88/rubber
	name = "\improper 88M4 rubber magazine (9mm)"
	desc = "A 9mm pistol magazine for the Mod88. This one contains rubber bullets."
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/rubber
	ammo_band_color = AMMO_BAND_COLOR_RUBBER
