/obj/item/ammo_magazine/rocket/m57a4
	name = "\improper 84mm thermobaric rocket array"
	desc = "A thermobaric rocket tube for an M57-A4 quad launcher with 4 warheads."
	caliber = "rocket array"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/event.dmi'
	icon_state = "quad_rocket"

	max_rounds = 4
	default_ammo = /datum/ammo/rocket/wp/quad
	gun_type = /obj/item/weapon/gun/launcher/rocket/m57a4
	reload_delay = 200

/obj/item/ammo_magazine/rocket/m57a4/update_icon()
	..()
	if(current_rounds <= 0)
		name = "\improper 84mm spent rocket array"
		desc = "A spent rocket tube assembly for the M57-A4 quad launcher. Activate in hand to disassemble for metal."
		icon_state = "quad_rocket_e"
