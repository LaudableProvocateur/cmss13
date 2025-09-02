/obj/item/ammo_magazine/rifle/m4ra/custom
	name = "\improper A19 HV magazine (10x24mm)"
	desc = "A high-velocity 10x24mm magazine of A19 rounds for use in the M4RA custom battle rifle. The M4RA custom battle rifle is the only gun that can chamber these rounds."
	icon_state = "a19"
	default_ammo = /datum/ammo/bullet/rifle/m4ra
	max_rounds = 18
	gun_type = /obj/item/weapon/gun/rifle/m4ra_custom
	ammo_band_icon = "+a19_band"
	ammo_band_icon_empty = "+a19_band_e"

/obj/item/ammo_magazine/rifle/m4ra/custom/incendiary
	name = "\improper A19 HV incendiary magazine (10x24mm)"
	desc = "An incendiary magazine of A19 HV rounds for use in the M4RA battle rifle. The M4RA custom battle rifle is the only gun that can chamber these rounds."
	default_ammo = /datum/ammo/bullet/rifle/m4ra/incendiary
	max_rounds = 18
	gun_type = /obj/item/weapon/gun/rifle/m4ra_custom
	ammo_band_color = AMMO_BAND_COLOR_INCENDIARY

/obj/item/ammo_magazine/rifle/m4ra/custom/impact
	name = "\improper A19 HV high impact magazine (10x24mm)"
	desc = "A high-impact magazine of A19 rounds for use in the M4RA battle rifle. The M4RA custom battle rifle is the only gun that can chamber these rounds."
	default_ammo = /datum/ammo/bullet/rifle/m4ra/impact
	max_rounds = 18
	gun_type = /obj/item/weapon/gun/rifle/m4ra_custom
	ammo_band_color = AMMO_BAND_COLOR_HIGH_IMPACT
