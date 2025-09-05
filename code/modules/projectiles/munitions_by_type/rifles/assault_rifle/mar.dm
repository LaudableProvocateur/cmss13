/obj/item/ammo_magazine/rifle/mar40
	name = "\improper MAR magazine (7.62x39mm)"
	desc = "A 7.62x39mm magazine for the MAR series of firearms."
	caliber = "7.62x39mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/colony/assault_rifles.dmi'
	icon_state = "mar40"
	default_ammo = /datum/ammo/bullet/rifle/caliber_7_62x39mm
	max_rounds = 40
	gun_type = /obj/item/weapon/gun/rifle/mar40
	w_class = SIZE_MEDIUM

/obj/item/ammo_magazine/rifle/mar40/extended
	name = "\improper MAR extended magazine (7.62x39mm)"
	desc = "A 7.62x39mm MAR magazine, this one carries more rounds than the average magazine."
	max_rounds = 60
	bonus_overlay = "mar40_ex"
	icon_state = "mar40_extended"

/obj/item/ammo_magazine/rifle/mar40/lmg
	name = "\improper MAR drum magazine (7.62x39mm)"
	desc = "A 7.62x39mm drum magazine for the MAR-50 LMG."
	caliber = "7.62x39mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/colony/machineguns.dmi'
	icon_state = "mar50"
	max_rounds = 100
	gun_type = /obj/item/weapon/gun/rifle/mar40/lmg
