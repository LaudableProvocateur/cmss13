//M4A3 45 //Inspired by the 1911

/obj/item/ammo_magazine/pistol/m1911
	name = "\improper M1911 magazine (.45)"
	desc = "A magazine for the legendary M1911 pistol. Holds eight standard rounds."
	default_ammo = /datum/ammo/bullet/pistol/caliber_11_43x23mm
	caliber = ".45"
	icon_state = "m4a345"//rename later
	max_rounds = 8
	gun_type = /obj/item/weapon/gun/pistol/m1911
	ammo_band_icon = "+m4a345_band"
	ammo_band_icon_empty = "+m4a345_band_e"

/obj/item/ammo_magazine/pistol/m1911/highimpact
	name = "\improper M1911 high-impact magazine (.45)"
	desc = "A magazine for the legendary M1911 pistol. Holds eight concussive rounds that can briefly knock people down."
	default_ammo = /datum/ammo/bullet/pistol/caliber_11_43x23mm/highimpact
	ammo_band_color = AMMO_BAND_COLOR_HIGH_IMPACT

/obj/item/ammo_magazine/pistol/m1911/highimpact/ap
	name = "\improper M1911 high-impact armor-piercing magazine (.45)"
	desc = "A magazine for the legendary M1911 pistol. Holds eight concussive armor-piercing rounds that can briefly knock people down."
	default_ammo = /datum/ammo/bullet/pistol/caliber_11_43x23mm/highimpact/ap
	ammo_band_color = AMMO_BAND_COLOR_HIGH_IMPACT_AP
