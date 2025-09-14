/obj/item/ammo_magazine/revolver
	name = "\improper Generic speed loader"
	desc = "You shouldn't be seeing this..."

	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/revolvers.dmi'
	icon_state = "m44"

	item_state = "generic_speedloader"
	item_icons = list(
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_righthand.dmi'
		)

	w_class = SIZE_SMALL
	flags_equip_slot = NO_FLAGS

	caliber = "N/A"
	max_rounds = 7
	gun_type = /obj/item/weapon/gun/revolver/m44

	ammo_band_icon = "+m44_tip"
	ammo_band_icon_empty = "empty"

/obj/item/ammo_magazine/internal/revolver
	name = "revolver cylinder"
	default_ammo = /datum/ammo/bullet/revolver/m44
	max_rounds = 6
	gun_type = /obj/item/weapon/gun/revolver
