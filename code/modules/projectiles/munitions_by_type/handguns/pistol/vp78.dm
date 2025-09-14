/obj/item/ammo_magazine/pistol/vp78
	name = "\improper VP78 magazine (9mm)"
	desc = "A 9mm pistol magazine for the VP78."
	default_ammo = /datum/ammo/bullet/pistol/caliber_9x19mm/squash
	caliber = "9mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/WY/pistols.dmi'
	icon_state = "vp78"
	max_rounds = 18
	gun_type = /obj/item/weapon/gun/pistol/vp78
	ammo_band_icon = "+vp78_band"
	ammo_band_icon_empty = "+vp78_band_e"

/obj/item/ammo_magazine/pistol/vp78/toxin
	name = "\improper VP78 toxic magazine (9mm)"
	desc = "A toxin 9mm pistol magazine for the VP78."
	default_ammo = /datum/ammo/bullet/pistol/caliber_9x19mm/squash/toxin
	ammo_band_color = AMMO_BAND_COLOR_TOXIN

/obj/item/ammo_magazine/pistol/vp78/penetrating
	name = "\improper VP78 wall-penetrating magazine (9mm)"
	desc = "A wall-penetrating 9mm pistol magazine for the VP78."
	default_ammo = /datum/ammo/bullet/pistol/caliber_9x19mm/squash/penetrating
	ammo_band_color = AMMO_BAND_COLOR_PENETRATING

/obj/item/ammo_magazine/pistol/vp78/incendiary
	name = "\improper VP78 incendiary magazine (9mm)"
	desc = "An incendiary 9mm pistol magazine for the VP78."
	default_ammo = /datum/ammo/bullet/pistol/caliber_9x19mm/squash/incendiary
	ammo_band_color = AMMO_BAND_COLOR_INCENDIARY

/obj/item/ammo_magazine/pistol/vp78/rubber
	name = "\improper VP78 rubber magazine (9mm)"
	desc = "A 9mm pistol magazine for the VP78. This one is loaded with rubber bullets."
	default_ammo = /datum/ammo/bullet/pistol/caliber_9x19mm/squash/rubber
	ammo_band_color = AMMO_BAND_COLOR_RUBBER
