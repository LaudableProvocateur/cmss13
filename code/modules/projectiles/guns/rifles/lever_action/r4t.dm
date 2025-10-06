//===================THE R4T===================\\

/obj/item/weapon/gun/lever_action/r4t
	name = "R4T lever-action rifle"
	desc = "This lever-action was designed for small scout operations in harsh environments such as the jungle or particularly windy deserts, as such its internal mechanisms are simple yet robust."
	icon_state = "r4t"
	item_state = "r4t"
	flags_equip_slot = SLOT_BACK
	attachable_allowed = list(
		/obj/item/attachable/bayonet/upp, // Barrel
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonet/wy,
		/obj/item/attachable/bayonet/antique,
		/obj/item/attachable/bayonet/custom,
		/obj/item/attachable/bayonet/custom/red,
		/obj/item/attachable/bayonet/custom/blue,
		/obj/item/attachable/bayonet/custom/black,
		/obj/item/attachable/bayonet/tanto,
		/obj/item/attachable/bayonet/tanto/blue,
		/obj/item/attachable/bayonet/rmc_replica,
		/obj/item/attachable/bayonet/rmc,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/suppressor,
		/obj/item/attachable/compensator,
		/obj/item/attachable/reddot, // Rail
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/gyro, // Under
		/obj/item/attachable/lasersight,
		/obj/item/attachable/magnetic_harness/lever_sling,
		/obj/item/attachable/stock/r4t, // Stock
		)
	map_specific_decoration = TRUE
	flags_gun_features = GUN_CAN_POINTBLANK|GUN_INTERNAL_MAG|GUN_AMMO_COUNTER
	flags_gun_lever_action = MOVES_WHEN_LEVERING|DANGEROUS_TO_ONEHAND_LEVER
	civilian_usable_override = TRUE

/obj/item/weapon/gun/lever_action/r4t/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 33, "muzzle_y" = 19, "rail_x" = 11, "rail_y" = 21, "under_x" = 24, "under_y" = 16, "stock_x" = 15, "stock_y" = 14)
