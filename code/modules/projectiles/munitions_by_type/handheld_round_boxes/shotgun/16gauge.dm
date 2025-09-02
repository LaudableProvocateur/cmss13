/obj/item/ammo_magazine/shotgun/light/breaching
	name = "box of breaching shells"
	desc = "A box filled with breaching shotgun shells. 16 Gauge."
	icon_state = "breaching"
	item_state = "breaching"
	max_rounds = 30 //6 handfuls of 6 shells, 12 rounds in a XM51 mag
	transfer_handful_amount = 6
	default_ammo = /datum/ammo/bullet/shotgun/light/breaching
	handful_state = "breaching_shell"
	caliber = "16g"
/obj/item/ammo_magazine/handful/shotgun/light/breaching
	name = "handful of breaching shells (16g)"
	icon_state = "breaching_shell_6"
	handful_state = "breaching_shell"
	max_rounds = 6 //XM51 magazines are 12 rounds total, two handfuls should be enough to reload a mag
	current_rounds = 6
	transfer_handful_amount = 6
	default_ammo = /datum/ammo/bullet/shotgun/light/breaching
	caliber = "16g"
	gun_type = /obj/item/weapon/gun/rifle/xm51

/obj/item/ammo_magazine/handful/shotgun/light/breaching/rubber
	name = "handful of rubber buckshot shells (16g)"
	icon_state = "rubbershot_shell_6"
	handful_state = "rubbershot_shell"
	default_ammo = /datum/ammo/bullet/shotgun/light/rubber
