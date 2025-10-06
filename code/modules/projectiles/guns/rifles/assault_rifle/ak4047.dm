/obj/item/weapon/gun/rifle/ak4047
	name = "\improper AK-4047 pulse assault rifle"
	desc = "The UPP equivalent to the M41A Pulse Rifle, the AK-4047 is a cheap and reliable substitute. As such, the weapon often winds up in the hands of mercenaries and insurgents. While not as accurate as the M41, the AK-4047 is sturdier than the USCMC weapon. An AK-4047 still works after being thrown off a cliff and left underwater for a month."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/UPP/assault_rifles.dmi'
	icon_state = "ak4047"
	item_state = "ak4047"
	fire_sound = 'sound/weapons/gun_ak4047.ogg'
	reload_sound = 'sound/weapons/handling/m41_reload.ogg'
	unload_sound = 'sound/weapons/handling/m41_unload.ogg'
	current_mag = /obj/item/ammo_magazine/rifle/ak4047
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonet/upp,
		/obj/item/attachable/bayonet/co2,
		/obj/item/attachable/bayonet/antique,
		/obj/item/attachable/bayonet/custom,
		/obj/item/attachable/bayonet/custom/red,
		/obj/item/attachable/bayonet/custom/blue,
		/obj/item/attachable/bayonet/custom/black,
		/obj/item/attachable/bayonet/tanto,
		/obj/item/attachable/bayonet/tanto/blue,
		/obj/item/attachable/bayonet/rmc_replica,
		/obj/item/attachable/bayonet/rmc,
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/angledgrip,
		/obj/item/attachable/flashlight/grip,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/gyro,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/bipod,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/stock/rifle/collapsible/ak4047,
		/obj/item/attachable/attached_gun/grenade,
		/obj/item/attachable/attached_gun/flamer,
		/obj/item/attachable/attached_gun/flamer/advanced,
		/obj/item/attachable/attached_gun/shotgun,
		/obj/item/attachable/attached_gun/extinguisher,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/mini,
	)
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER
	map_specific_decoration = FALSE
	start_automatic = TRUE
	flags_equip_slot = SLOT_BACK
	starting_attachment_types = list(/obj/item/attachable/stock/rifle/collapsible/ak4047)

	pixel_x = -6
	hud_offset = -6

/obj/item/weapon/gun/rifle/ak4047/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 38, "muzzle_y" = 18,"rail_x" = 20, "rail_y" = 23, "under_x" = 24, "under_y" = 13, "stock_x" = 11, "stock_y" = 13, "special_x" = 33, "special_y" = 17)

/obj/item/weapon/gun/rifle/ak4047/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_11)
	set_burst_amount(BURST_AMOUNT_TIER_3)
	set_burst_delay(FIRE_DELAY_TIER_11)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4 + 2*HIT_ACCURACY_MULT_TIER_1
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_7
	scatter = SCATTER_AMOUNT_TIER_8
	burst_scatter_mult = SCATTER_AMOUNT_TIER_10
	scatter_unwielded = SCATTER_AMOUNT_TIER_2
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_2
	recoil_unwielded = RECOIL_AMOUNT_TIER_2

/obj/item/weapon/gun/rifle/ak4047/tactical
	current_mag = /obj/item/ammo_magazine/rifle/ak4047
	starting_attachment_types = list(/obj/item/attachable/reflex, /obj/item/attachable/suppressor, /obj/item/attachable/verticalgrip, /obj/item/attachable/stock/rifle/collapsible/ak4047)
