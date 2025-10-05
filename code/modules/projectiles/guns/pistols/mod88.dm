/obj/item/weapon/gun/pistol/mod88
	name = "\improper 88 Mod 4 combat pistol"
	desc = "Standard issue USCM firearm. Also found in the hands of Weyland-Yutani PMC teams. Fires 9mm armor shredding rounds and is capable of 3-round burst."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/WY/pistols.dmi'
	icon_state = "_88m4" // to comply with css standards
	item_state = "_88m4"
	fire_sound = "88m4"
	firesound_volume = 20
	reload_sound = 'sound/weapons/gun_88m4_reload.ogg'
	unload_sound = 'sound/weapons/gun_88m4_unload.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/mod88
	force = 8
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_ONE_HAND_WIELDED|GUN_AMMO_COUNTER
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/compensator,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/reflex,
		/obj/item/attachable/reddot,
		/obj/item/attachable/burstfire_assembly,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/flashlight/grip,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/stock/mod88,
	)

/obj/item/weapon/gun/pistol/mod88/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 27, "muzzle_y" = 21,"rail_x" = 8, "rail_y" = 22, "under_x" = 21, "under_y" = 18, "stock_x" = 18, "stock_y" = 15)


/obj/item/weapon/gun/pistol/mod88/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_11)
	set_burst_amount(BURST_AMOUNT_TIER_3)
	set_burst_delay(FIRE_DELAY_TIER_11)
	accuracy_mult = BASE_ACCURACY_MULT
	accuracy_mult_unwielded = BASE_ACCURACY_MULT
	scatter = SCATTER_AMOUNT_TIER_7
	burst_scatter_mult = SCATTER_AMOUNT_TIER_7
	scatter_unwielded = SCATTER_AMOUNT_TIER_7
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_4


/obj/item/weapon/gun/pistol/mod88/training
	current_mag = /obj/item/ammo_magazine/pistol/mod88/rubber


/obj/item/weapon/gun/pistol/mod88/flashlight/handle_starting_attachment()
	..()
	var/obj/item/attachable/flashlight/flashlight = new(src)
	flashlight.Attach(src)
	update_attachable(flashlight.slot)
