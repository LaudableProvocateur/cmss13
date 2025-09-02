/obj/item/ammo_magazine/lever_action/xm88
	name = "box of .458 SOCOM rounds"
	desc = "A box filled with handfuls of .458 SOCOM rounds, designed for use with the XM88 heavy rifle."
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/marksman_rifles.dmi'
	icon_state = "458-box"
	item_state = "458-box"
	default_ammo = /datum/ammo/bullet/lever_action/xm88
	max_rounds = 100
	caliber = ".458"
	gun_type = /obj/item/weapon/gun/lever_action/xm88
	handful_state = "boomslang_bullet"
/obj/item/ammo_magazine/internal/lever_action/xm88
	name = "\improper XM88 heavy rifle tube"
	desc = "An internal magazine. It is not supposed to be seen or removed."
	default_ammo = /datum/ammo/bullet/lever_action/xm88
	caliber = ".458"
	max_rounds = 9
	chamber_closed = 0
/obj/item/ammo_magazine/handful/lever_action/xm88
	name = "handful of .458 SOCOM rounds (.458)"
	desc = "A handful of .458 SOCOM rounds, designed for the XM88 heavy rifle."
	caliber = ".458"
	icon_state = "marksman_lever_action_bullet_9"
	default_ammo = /datum/ammo/bullet/lever_action/xm88
	handful_state = "boomslang_bullet"
