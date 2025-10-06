/obj/item/weapon/gun/rifle/nsg23
	name = "\improper NSG 23 assault rifle"
	desc = "A rare sight, this rifle is seen most commonly in the hands of Weyland-Yutani PMCs. Compared to the M41A MK2, it has noticeably improved handling and vastly improved performance at long and medium range, but compares similarly up close."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/WY/assault_rifles.dmi'
	icon_state = "nsg23"
	item_state = "nsg23"
	fire_sound = "gun_nsg23"
	reload_sound = 'sound/weapons/handling/nsg23_reload.ogg'
	unload_sound = 'sound/weapons/handling/nsg23_unload.ogg'
	cocked_sound = 'sound/weapons/handling/nsg23_cocked.ogg'
	force = 10
	aim_slowdown = SLOWDOWN_ADS_QUICK
	wield_delay = WIELD_DELAY_VERY_FAST
	current_mag = /obj/item/ammo_magazine/rifle/nsg23
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonet/upp,
		/obj/item/attachable/bayonet/co2,
		/obj/item/attachable/bayonet/antique,
		/obj/item/attachable/bayonet/wy,
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
		/obj/item/attachable/flashlight,
		/obj/item/attachable/bipod,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/attached_gun/flamer,
		/obj/item/attachable/attached_gun/flamer/advanced,
		/obj/item/attachable/attached_gun/grenade,
		/obj/item/attachable/attached_gun/extinguisher,
		/obj/item/attachable/scope/mini/nsg23,
		/obj/item/attachable/suppressor/nsg,
		/obj/item/attachable/attached_gun/shotgun/af13,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER|GUN_WY_RESTRICTED

	random_spawn_muzzle = list(
		/obj/item/attachable/suppressor/nsg,
		/obj/item/attachable/bayonet/wy,
		/obj/item/attachable/extended_barrel,
	)
	starting_attachment_types = list(
		/obj/item/attachable/scope/mini/nsg23,
		/obj/item/attachable/attached_gun/flamer/advanced,
	)
	start_semiauto = FALSE
	start_automatic = TRUE

/obj/item/weapon/gun/rifle/nsg23/Initialize(mapload, spawn_empty)
	. = ..()
	update_icon()

/obj/item/weapon/gun/rifle/nsg23/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 37, "muzzle_y" = 16, "rail_x" = 12,"rail_y" = 22, "under_x" = 26, "under_y" = 10, "stock_x" = 5, "stock_y" = 17)

/obj/item/weapon/gun/rifle/nsg23/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_10 + FIRE_DELAY_TIER_12/4)
	set_burst_amount(BURST_AMOUNT_TIER_3)
	set_burst_delay(FIRE_DELAY_TIER_10 + FIRE_DELAY_TIER_12/4)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_10
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_7
	scatter = SCATTER_AMOUNT_TIER_9
	burst_scatter_mult = SCATTER_AMOUNT_TIER_10
	scatter_unwielded = SCATTER_AMOUNT_TIER_2
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_5
	recoil = RECOIL_AMOUNT_TIER_5 + RECOIL_AMOUNT_TIER_5/10
	recoil_unwielded = RECOIL_AMOUNT_TIER_2
	damage_falloff_mult = 0
	fa_max_scatter = SCATTER_AMOUNT_TIER_5

/obj/item/weapon/gun/rifle/nsg23/cqc
	starting_attachment_types = list(
		/obj/item/attachable/attached_gun/shotgun/af13,
		/obj/item/attachable/suppressor/nsg,
		/obj/item/attachable/reflex,
	)

//has no scope or underbarrel
/obj/item/weapon/gun/rifle/nsg23/stripped
	starting_attachment_types = list() //starts with the stock anyways due to handle_starting_attachment()

/obj/item/weapon/gun/rifle/nsg23/no_lock
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER
	starting_attachment_types = list(
		/obj/item/attachable/scope/mini/nsg23,
		/obj/item/attachable/attached_gun/flamer,//non-op flamer for normal spawns
	)

/obj/item/weapon/gun/rifle/nsg23/no_lock/stripped
	starting_attachment_types = list() //starts with the stock anyways due to handle_starting_attachment()
