/obj/item/ammo_magazine/shell_box
	name = "box of generic shells"
	desc = "You shouldn't be seeing this, if you are, you should probably report it to someone/something who can fix it."

	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/shotguns.dmi'
	icon_state = "generic"
	item_state = "generic"
	item_icons = list(
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_righthand.dmi'
		)
	handful_state = "generic_shells"

	default_ammo = /datum/ammo/bullet/shell
	gun_type = /obj/item/weapon/gun/shotgun

	max_rounds = 25 // Real shotgun boxes are usually 5 or 25 rounds. This works with the new system, five handfuls.
	transfer_handful_amount = 5
	caliber = ""

	w_class = SIZE_LARGE // Can't throw it in your pocket, friend.
	flags_magazine = AMMUNITION_REFILLABLE|AMMUNITION_HANDFUL_BOX

/obj/item/ammo_magazine/shell_box/attack_self(mob/user)
	if(current_rounds == 0)
		new /obj/item/stack/sheet/cardboard(user.loc)
		qdel(src)
	else
		return ..()

/obj/item/ammo_magazine/shell_box/gauge_8
	name = "box of generic shells (8g)"
	desc = "You shouldn't be seeing this, if you are, you should probably report it to someone/something who can fix it."

	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/UPP/shotguns.dmi' // uses a unique spritesheet

	default_ammo = /datum/ammo/bullet/shell/gauge_8
	gun_type = /obj/item/weapon/gun/shotgun

	max_rounds = 20
	transfer_handful_amount = 4
	caliber = "8g"

/obj/item/ammo_magazine/shell_box/gauge_12
	name = "box of generic shells (12g)"
	desc = "You shouldn't be seeing this, if you are, you should probably report it to someone/something who can fix it."

	default_ammo = /datum/ammo/bullet/shell/gauge_12
	gun_type = /obj/item/weapon/gun/shotgun

	max_rounds = 25 // Real shotgun boxes are usually 5 or 25 rounds. This works with the new system, five handfuls.
	transfer_handful_amount = 5
	caliber = "12g"

/obj/item/ammo_magazine/shell_box/gauge_16
	name = "box of generic shells (16g)"
	desc = "You shouldn't be seeing this, if you are, you should probably report it to someone/something who can fix it."

	default_ammo = /datum/ammo/bullet/shell/gauge_16
	gun_type = /obj/item/weapon/gun/shotgun

	max_rounds = 30
	transfer_handful_amount = 6
	caliber = "16g"

/obj/item/ammo_magazine/shell_box/gauge_20
	name = "box of generic shells (20g)"
	desc = "You shouldn't be seeing this, if you are, you should probably report it to someone/something who can fix it."

	default_ammo = /datum/ammo/bullet/shell/gauge_20
	gun_type = /obj/item/weapon/gun/shotgun

	max_rounds = 30
	transfer_handful_amount = 6
	caliber = ""
