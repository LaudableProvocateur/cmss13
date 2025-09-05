/obj/item/ammo_magazine/revolver/m44
	name = "\improper M44 speed loader (.44)"
	desc = "A 7-round .44 revolver speed loader."

	default_ammo = /datum/ammo/bullet/revolver
	caliber = ".44"
	flags_equip_slot = NO_FLAGS
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/revolvers.dmi'
	icon_state = "m44"
	item_state = "generic_speedloader"
	item_icons = list(
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_righthand.dmi'
		)
	w_class = SIZE_SMALL
	max_rounds = 7
	gun_type = /obj/item/weapon/gun/revolver/m44

	ammo_band_icon = "+m44_tip"
	ammo_band_icon_empty = "empty"

/obj/item/ammo_magazine/revolver/m44/marksman
	name = "\improper M44 marksman speed loader (.44)"
	desc = "A 7-round .44 revolver speed loader containing long-range armor-piercing marksman bullets."
	default_ammo = /datum/ammo/bullet/revolver/marksman
	caliber = ".44"
	ammo_band_color = REVOLVER_TIP_COLOR_MARKSMAN

/obj/item/ammo_magazine/revolver/m44/heavy
	name = "\improper M44 heavy speed loader (.44)"
	desc = "A 7-round .44 revolver speed loader containing heavy bullets. While less damaging than traditional .44 rounds, they deliver a higher stopping power."
	default_ammo = /datum/ammo/bullet/revolver/heavy
	caliber = ".44"
	ammo_band_color = REVOLVER_TIP_COLOR_HEAVY

/obj/item/ammo_magazine/revolver/m44/incendiary
	name = "\improper M44 incendiary speed loader (.44)"
	desc = "a 7-round .44 revolver speed loader containing incendiary bullets."
	default_ammo = /datum/ammo/bullet/revolver/incendiary
	ammo_band_color = REVOLVER_TIP_COLOR_INCENDIARY

/obj/item/ammo_magazine/revolver/m44/marksman/toxin
	name = "\improper M44 toxic speed loader (.44)"
	desc = "a 7-round .44 revolver speed loader containing toxin bullets."
	default_ammo = /datum/ammo/bullet/revolver/marksman/toxin
	ammo_band_color = REVOLVER_TIP_COLOR_TOXIN

/obj/item/ammo_magazine/revolver/m44/penetrating
	name = "\improper M44 wall-penetrating speed loader (.44)"
	desc = "A 7-round .44 revolver speed loader containing wall-penetrating bullets."
	default_ammo = /datum/ammo/bullet/revolver/penetrating
	ammo_band_color = REVOLVER_TIP_COLOR_PENETRATING

/obj/item/ammo_magazine/internal/revolver/m44
	caliber = ".44"
	max_rounds = 7
	gun_type = /obj/item/weapon/gun/revolver/m44

/obj/item/ammo_magazine/internal/revolver/m44/pkd
	max_rounds = 8
	caliber = ".44 sabot"

/obj/item/ammo_magazine/internal/revolver/m44/marksman
	default_ammo = /datum/ammo/bullet/revolver/marksman //because the starting m44 custom revolver belt is full of marksman ammo, but your gun would have normal ammo loaded
