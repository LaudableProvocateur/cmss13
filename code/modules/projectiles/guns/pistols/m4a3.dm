/obj/item/weapon/gun/pistol/m4a3/m4a4
	name = "\improper M4A4 service pistol"
	desc = "An M4A4 service pistol, a standard issue sidearm of the USCM, an updated edition of the previous A3 model. Fires 9mm pistol rounds."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/USCM/pistols.dmi'
	icon_state = "m4a4"
	item_state = "m4a4"
	current_mag = /obj/item/ammo_magazine/pistol

/obj/item/weapon/gun/pistol/m4a3/m4a4/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 28, "muzzle_y" = 21,"rail_x" = 10, "rail_y" = 23, "under_x" = 21, "under_y" = 16, "stock_x" = 21, "stock_y" = 17)

/obj/item/weapon/gun/pistol/m4a3/training
	current_mag = /obj/item/ammo_magazine/m4a3/rubber

/obj/item/weapon/gun/pistol/m4a3/tactical
	starting_attachment_types = list(/obj/item/attachable/suppressor, /obj/item/attachable/reflex, /obj/item/attachable/lasersight)

/obj/item/weapon/gun/pistol/m4a3/custom
	name = "\improper M4A3 custom pistol"
	desc = "This M4A3 sports a nickel finish and faux ivory grips. This one is a slightly customized variant produced by a well known gunsmith on Gateway Station. These are commonly purchased by low level enlisted men and junior officers who have nothing better to spend their salary on. Chambered in 9mm."
	icon_state = "m4a3c"
	item_state = "m4a3c"

/obj/item/weapon/gun/pistol/m4a3/custom/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_12)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4
	accuracy_mult_unwielded = BASE_ACCURACY_MULT
	scatter = SCATTER_AMOUNT_TIER_6
	burst_scatter_mult = SCATTER_AMOUNT_TIER_6
	scatter_unwielded = SCATTER_AMOUNT_TIER_6
	damage_mult = BASE_BULLET_DAMAGE_MULT
