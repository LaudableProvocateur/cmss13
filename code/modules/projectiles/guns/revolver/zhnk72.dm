/obj/item/weapon/gun/revolver/upp
	name = "\improper ZHNK-72 revolver"
	desc = "The ZHNK-72 is a UPP designed revolver. The ZHNK-72 is used by the UPP armed forces in a policing role as well as limited numbers in the hands of SNCOs."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/UPP/revolvers.dmi'
	icon_state = "zhnk72"
	item_state = "zhnk72"

	fire_sound = "gun_pkd" //sounds stolen from bladerunner revolvers bc they arent used and sound awesome
	fire_rattle = 'sound/weapons/gun_pkd_fire01_rattle.ogg'
	reload_sound = 'sound/weapons/handling/pkd_speed_load.ogg'
	cocked_sound = 'sound/weapons/handling/pkd_cock.wav'
	unload_sound = 'sound/weapons/handling/pkd_open_chamber.ogg'
	chamber_close_sound = 'sound/weapons/handling/pkd_close_chamber.ogg'
	hand_reload_sound = 'sound/weapons/gun_revolver_load3.ogg'
	current_mag = /obj/item/ammo_magazine/internal/revolver/zhnk_72
	force = 8
	attachable_allowed = list(
		/obj/item/attachable/reddot, // Rail
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/bayonet, // Muzzle
		/obj/item/attachable/bayonet/upp,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/lasersight, // Underbarrel
		)

/obj/item/weapon/gun/revolver/upp/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 28, "muzzle_y" = 21,"rail_x" = 14, "rail_y" = 23, "under_x" = 19, "under_y" = 17, "stock_x" = 24, "stock_y" = 19)

/obj/item/weapon/gun/revolver/upp/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_9)
	accuracy_mult = BASE_ACCURACY_MULT
	scatter = SCATTER_AMOUNT_TIER_6
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_4
	recoil = 0
	recoil_unwielded = 0

/obj/item/weapon/gun/revolver/upp/shrapnel
	current_mag = /obj/item/ammo_magazine/internal/revolver/zhnk_72/shrapnel
	random_spawn_chance = 100
	random_under_chance = 100
	random_spawn_under = list(
		/obj/item/attachable/lasersight,
	)
