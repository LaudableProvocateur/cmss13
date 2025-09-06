

//Minigun

/obj/item/ammo_magazine/minigun
	name = "rotating ammo drum (7.62x51mm)"
	desc = "A huge 7.62x51mm ammo drum for a huge rotary machine gun."
	caliber = "7.62x51mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/event.dmi'
	icon_state = "painless" //PLACEHOLDER

	matter = list("metal" = 10000)
	default_ammo = /datum/ammo/bullet/caliber_7_62x51mm
	max_rounds = 300
	reload_delay = 24 //Hard to reload.
	gun_type = /obj/item/weapon/gun/minigun
	w_class = SIZE_MEDIUM

//M60

/obj/item/ammo_magazine/m60
	name = "M60 ammo box (7.62x51mm)"
	desc = "A blast from the past, chambered in 7.62x51mm NATO."
	caliber = "7.62x51mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/colony/machineguns.dmi'
	icon_state = "m60" //PLACEHOLDER

	matter = list("metal" = 10000)
	default_ammo = /datum/ammo/bullet/caliber_7_62x51mm
	max_rounds = 100
	reload_delay = 8
	gun_type = /obj/item/weapon/gun/m60

/obj/item/ammo_magazine/pkp
	name = "QYJ-72 ammo box (7.62x54mmR)"
	desc = "A 7.62x54mmR 250-round box magazine for the UPP's standard GPMG, the QYJ-72."
	caliber = "7.62x54mmR"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/UPP/machineguns.dmi'
	icon_state = "qjy72"

	matter = list("metal" = 10000)
	default_ammo = /datum/ammo/bullet/caliber_7_62x54mmR
	max_rounds = 250
	reload_delay = 12
	gun_type = /obj/item/weapon/gun/pkp

//rocket launchers

/obj/item/ammo_magazine/rifle/grenadespawner
	AUTOWIKI_SKIP(TRUE)

	name = "\improper GRENADE SPAWNER AMMO"
	desc = "OH GOD OH FUCK"
	default_ammo = /datum/ammo/grenade_container/rifle
	ammo_band_color = AMMO_BAND_COLOR_LIGHT_EXPLOSIVE

/obj/item/ammo_magazine/rifle/huggerspawner
	AUTOWIKI_SKIP(TRUE)

	name = "\improper HUGGER SPAWNER AMMO"
	desc = "OH GOD OH FUCK"
	default_ammo = /datum/ammo/hugger_container
	ammo_band_color = AMMO_BAND_COLOR_SUPER

//pill gun

/obj/item/ammo_magazine/internal/pillgun
	name = "pill tube"
	desc = "An internal magazine. It is not supposed to be seen or removed."
	default_ammo = /datum/ammo/pill
	caliber = "pill"
	max_rounds = 1
	chamber_closed = FALSE

	var/list/pills

/obj/item/ammo_magazine/internal/pillgun/Initialize(mapload, spawn_empty)
	. = ..()
	current_rounds = LAZYLEN(pills)

/obj/item/ammo_magazine/internal/pillgun/Entered(Obj, OldLoc)
	. = ..()
	if(!istype(Obj, /obj/item/reagent_container/pill))
		return

	LAZYADD(pills, Obj)
	current_rounds = LAZYLEN(pills)

/obj/item/ammo_magazine/internal/pillgun/Exited(Obj, newloc)
	. = ..()
	if(!istype(Obj, /obj/item/reagent_container/pill))
		return

	LAZYREMOVE(pills, Obj)
	current_rounds = LAZYLEN(pills)

/obj/item/ammo_magazine/internal/pillgun/super
	max_rounds = 5

/obj/item/ammo_magazine/rifle/xm51
	name = "\improper XM51 magazine (16g)"
	desc = "A 16 gauge shotgun magazine."
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/shotguns.dmi'
	icon_state = "xm51"
	caliber = "16g"
	w_class = SIZE_MEDIUM
	default_ammo = /datum/ammo/bullet/gauge_16/breaching
	max_rounds = 12
	gun_type = /obj/item/weapon/gun/rifle/xm51
	transfer_handful_amount = 6

/obj/item/ammo_magazine/rifle/xm51/cmb
	name = "\improper Model 1771 magazine (16g breaching)"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/colony/shotguns.dmi'
	icon_state = "m51b"

/obj/item/ammo_magazine/rifle/xm51/cmb/rubber
	name = "\improper Model 1771 magazine (16g rubber buckshot)"
	desc = "A 16 gauge rubber buckshot shotgun magazine."
	icon_state = "m51b_rubber"
	gun_type = /obj/item/weapon/gun/rifle/xm51/cmb
	default_ammo = /datum/ammo/bullet/gauge_8/rubber

//-------------------------------------------------------
//P9 SHARP Rifle

/obj/item/ammo_magazine/rifle/sharp
	name = "sharp rifle magazine"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/grenade_launchers.dmi'
	icon_state = "sharp_explosive_mag"
	item_state = "sharprifle"
	caliber = "Dart"
	w_class = SIZE_MEDIUM
	max_rounds = 10
	default_ammo = /datum/ammo/rifle/sharp/explosive
	gun_type = /obj/item/weapon/gun/rifle/sharp
	transfer_handful_amount = 5
	description_ammo = "darts"

/obj/item/ammo_magazine/rifle/sharp/explosive
	name = "\improper 9X-E sticky explosive dart magazine"
	desc = "A specialized explosive sticky dart magazine for the SHARP rifle."

/obj/item/ammo_magazine/rifle/sharp/incendiary
	name = "\improper 9X-T sticky incendiary dart magazine"
	desc = "A specialized incendiary dart magazine for the SHARP rifle."
	icon_state = "sharp_incendiary_mag"
	default_ammo = /datum/ammo/rifle/sharp/incendiary

/obj/item/ammo_magazine/rifle/sharp/flechette
	name = "\improper 9X-F flechette dart magazine"
	desc = "A specialized flechette dart magazine for the SHARP rifle."
	icon_state = "sharp_flechette_mag"
	default_ammo = /datum/ammo/rifle/sharp/flechette
