/obj/item/weapon/gun/rifle/l23
	name = "\improper L23 assault rifle"
	desc = "A rare sight, this rifle is seen most commonly in the hands of Three World Empire RMCs. Compared to the M41A MK2, it has noticeably improved handling and vastly improved performance. This one is painted in RMC's purple-blue camouflage"
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/TWE/assault_rifles.dmi'
	icon_state = "l23"
	item_state = "l23"
	fire_sound = "gun_nsg23"
	reload_sound = 'sound/weapons/handling/nsg23_reload.ogg'
	unload_sound = 'sound/weapons/handling/nsg23_unload.ogg'
	cocked_sound = 'sound/weapons/handling/nsg23_cocked.ogg'
	aim_slowdown = SLOWDOWN_ADS_QUICK
	wield_delay = WIELD_DELAY_VERY_FAST
	current_mag = /obj/item/ammo_magazine/rifle/l23
	force = 10

	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/suppressor/nsg,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonet/rmc,
		/obj/item/attachable/bayonet/upp,
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/bipod,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/attached_gun/flamer,
		/obj/item/attachable/attached_gun/flamer/advanced,
		/obj/item/attachable/attached_gun/grenade,
		/obj/item/attachable/attached_gun/grenade/u1rmc,
		/obj/item/attachable/attached_gun/shotgun,
		/obj/item/attachable/attached_gun/shotgun/af13,
		/obj/item/attachable/attached_gun/extinguisher,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/angledgrip,
		/obj/item/attachable/scope/mini/nsg23,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/scope/variable_zoom/twe,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER

	random_spawn_chance = 100 //L23 always spawns with attachments (for proper NSG underrail offsets it's X=23 Y=13)
	random_spawn_under = list(
		/obj/item/attachable/attached_gun/grenade/u1rmc,
		/obj/item/attachable/attached_gun/flamer/advanced,
		/obj/item/attachable/attached_gun/shotgun/af13,
	)
	random_spawn_rail = list(
		/obj/item/attachable/reflex,
		/obj/item/attachable/scope/mini,
	)
	random_spawn_muzzle = list(
		/obj/item/attachable/suppressor/nsg,
	)
	start_semiauto = FALSE
	start_automatic = TRUE

/obj/item/weapon/gun/rifle/l23/Initialize(mapload, spawn_empty)
	. = ..()
	update_icon()

/obj/item/weapon/gun/rifle/l23/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 37, "muzzle_y" = 16, "rail_x" = 14, "rail_y" = 21, "under_x" = 26, "under_y" = 10, "stock_x" = 5, "stock_y" = 17)

/obj/item/weapon/gun/rifle/l23/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_11 + FIRE_DELAY_TIER_12/4)
	set_burst_amount(BURST_AMOUNT_TIER_3)
	set_burst_delay(FIRE_DELAY_TIER_SG + FIRE_DELAY_TIER_12/4)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_10
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_7
	scatter = SCATTER_AMOUNT_TIER_9
	burst_scatter_mult = SCATTER_AMOUNT_TIER_10
	scatter_unwielded = SCATTER_AMOUNT_TIER_2
	damage_mult = BASE_BULLET_DAMAGE_MULT
	recoil = RECOIL_AMOUNT_TIER_2_5
	recoil_unwielded = RECOIL_AMOUNT_TIER_1
	damage_falloff_mult = 0
	fa_max_scatter = SCATTER_AMOUNT_TIER_5

//***************************************************************//
/obj/item/weapon/gun/rifle/l23/breacher // One-handed UBS rifle
	name = "\improper L23-B assault rifle"
	desc = "A rare sight, this rifle is seen most commonly in the hands of Three World Empire RMCs. This particular model was modified to facilitate RMC operations in tight quarters, allowing for it to be fired one-handed. This however crippled its stopping power due to a shorter barrel needed to make it compact. Burst fire still kicks like a mule. Compared to the M41A MK2, it has noticeably improved handling and vastly improved performance. This one is painted in RMC's purple-blue camouflage"
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/TWE/assault_rifles.dmi'
	icon_state = "l23"
	item_state = "l23"
	fire_sound = "gun_nsg23"
	reload_sound = 'sound/weapons/handling/nsg23_reload.ogg'
	unload_sound = 'sound/weapons/handling/nsg23_unload.ogg'
	cocked_sound = 'sound/weapons/handling/nsg23_cocked.ogg'
	aim_slowdown = SLOWDOWN_ADS_QUICK
	wield_delay = WIELD_DELAY_VERY_FAST
	current_mag = /obj/item/ammo_magazine/rifle/l23/extended

	attachable_allowed = list(
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonet/rmc,
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/attached_gun/shotgun/af13b,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/angledgrip,
		/obj/item/attachable/scope/mini/nsg23,
		/obj/item/attachable/scope/mini,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER
	auto_retrieval_slot = WEAR_J_STORE

	random_spawn_chance = 100 //L23 always spawns with attachments (for proper NSG underrail offsets it's X=23 Y=13)

	random_spawn_rail = list(
		/obj/item/attachable/reflex,
	)
	random_spawn_muzzle = list(
		/obj/item/attachable/bayonet/rmc,
	)
	start_semiauto = FALSE
	start_automatic = TRUE

/obj/item/weapon/gun/rifle/l23/breacher/set_gun_config_values()
	..()
	fire_delay = FIRE_DELAY_TIER_11 + FIRE_DELAY_TIER_12/4
	burst_amount = BURST_AMOUNT_TIER_3
	burst_delay = FIRE_DELAY_TIER_SG + FIRE_DELAY_TIER_12/4
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4 + 2*HIT_ACCURACY_MULT_TIER_1
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_2
	scatter = SCATTER_AMOUNT_TIER_8
	burst_scatter_mult = SCATTER_AMOUNT_TIER_10
	scatter_unwielded = SCATTER_AMOUNT_TIER_2
	damage_mult = BASE_BULLET_DAMAGE_MULT
	recoil = RECOIL_AMOUNT_TIER_4
	recoil_unwielded = RECOIL_AMOUNT_TIER_4

/obj/item/weapon/gun/rifle/l23/breacher/handle_starting_attachment() //Adds L23-B's breaching shotgun
	..()
	var/obj/item/attachable/attached_gun/shotgun/af13b/S = new(src)
	S.flags_attach_features &= ~ATTACH_REMOVABLE
	S.Attach(src)
	update_attachable(S.slot)

/obj/item/weapon/gun/rifle/l23/leader
	starting_attachment_types = list(
		/obj/item/attachable/attached_gun/flamer/advanced,
	)
