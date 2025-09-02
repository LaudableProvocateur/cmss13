/obj/item/ammo_magazine/sniper
	name = "\improper M42A marksman magazine (10x28mm Caseless)"
	desc = "A magazine of 10x28mm caseless sniper rifle ammo. An aimed shot with it will deal significant damage."
	caliber = "10x28mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/marksman_rifles.dmi'
	icon_state = "m42c" //PLACEHOLDER
	w_class = SIZE_MEDIUM
	max_rounds = 15
	default_ammo = /datum/ammo/bullet/sniper
	gun_type = /obj/item/weapon/gun/rifle/sniper/M42A
	ammo_band_icon = "+m42c_band"
	ammo_band_icon_empty = "+m42c_band_e"

/obj/item/ammo_magazine/sniper/incendiary
	name = "\improper M42A incendiary magazine (10x28mm)"
	desc = "An incendiary magazine of 10x28mm sniper rifle ammo. An aimed shot with it will temporarily blind the target and light them heavily on fire."
	default_ammo = /datum/ammo/bullet/sniper/incendiary
	ammo_band_color = AMMO_BAND_COLOR_INCENDIARY

/obj/item/ammo_magazine/sniper/flak
	name = "\improper M42A flak magazine (10x28mm)"
	desc = "A flak magazine of 10x28mm sniper rifle ammo. An aimed shot with it will temporarily slow the target, as well as inflicting backlash to anyone nearby."
	default_ammo = /datum/ammo/bullet/sniper/flak
	ammo_band_color = AMMO_BAND_COLOR_IMPACT
