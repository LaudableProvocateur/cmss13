/obj/item/ammo_magazine/gauge_16
	name = "box of generic shells"
	desc = "You shouldn't be seeing this"
	icon_state = "breaching"
	item_state = "breaching"
	max_rounds = 30 //6 handfuls of 6 shells, 12 rounds in a XM51 mag
	transfer_handful_amount = 6
	default_ammo = /datum/ammo/bullet/gauge_16
	handful_state = "breaching_shell"
	caliber = "16g"
/obj/item/ammo_magazine/gauge_16/breaching
	name = "box of breaching shells"
	desc = "A box filled with breaching shotgun shells. 16 Gauge."
	icon_state = "breaching"
	item_state = "breaching"
	max_rounds = 30 //6 handfuls of 6 shells, 12 rounds in a XM51 mag
	transfer_handful_amount = 6
	default_ammo = /datum/ammo/bullet/gauge_16/breaching
	handful_state = "breaching_shell"
	caliber = "16g"
/obj/item/ammo_magazine/gauge_16/rubber
	name = "box of rubber shells"
	desc = "A box filled with rubber shotgun shells. 16 Gauge."
	icon_state = "breaching"
	item_state = "breaching"
	max_rounds = 30 //6 handfuls of 6 shells, 12 rounds in a XM51 mag
	transfer_handful_amount = 6
	default_ammo = /datum/ammo/bullet/gauge_16/rubber
	handful_state = "breaching_shell"
	caliber = "16g"
/obj/item/ammo_magazine/handful/gauge_16/breaching
	name = "handful of breaching shells (16g)"
	icon_state = "breaching_shell_6"
	handful_state = "breaching_shell"
	max_rounds = 6 //XM51 magazines are 12 rounds total, two handfuls should be enough to reload a mag
	current_rounds = 6
	transfer_handful_amount = 6
	default_ammo = /datum/ammo/bullet/gauge_16/breaching
	caliber = "16g"
	gun_type = /obj/item/weapon/gun/rifle/xm51

/obj/item/ammo_magazine/handful/gauge_16/rubber
	name = "handful of rubber buckshot shells (16g)"
	icon_state = "rubbershot_shell_6"
	handful_state = "rubbershot_shell"
	default_ammo = /datum/ammo/bullet/gauge_8/rubber
