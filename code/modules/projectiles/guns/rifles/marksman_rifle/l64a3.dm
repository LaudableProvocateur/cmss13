/obj/item/weapon/gun/rifle/l64a3
	name = "\improper L64A3 battle rifle"
	desc = "A lightweight designated marksman rifle developed by Howatomo Precision Machining for the Royal Marines and Imperial Armed Space Forces. valued for its reliability."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/TWE/marksman_rifles.dmi'
	item_icons = list(
		WEAR_BACK = 'icons/mob/humans/onmob/clothing/back/guns_by_type/marksman_rifles.dmi',
		WEAR_J_STORE = 'icons/mob/humans/onmob/clothing/suit_storage/guns_by_type/marksman_rifles.dmi',
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/weapons/guns/marksman_rifles_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/weapons/guns/marksman_rifles_righthand.dmi'
	)
	icon_state = "l42a3"
	item_state = "l42a3"
	reload_sound = 'sound/weapons/handling/rmcdmr_reload.ogg'
	unload_sound = 'sound/weapons/handling/rmcdmr_unload.ogg'
	fire_sound = "gun_l64"
	current_mag = /obj/item/ammo_magazine/rifle/l64

	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/suppressor/nsg,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonet/upp,
		/obj/item/attachable/bayonet/co2,
		/obj/item/attachable/bayonet/rmc,
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/bipod,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/scope/mini/nsg23,
		/obj/item/attachable/scope/variable_zoom/twe,
		/obj/item/attachable/flashlight/grip,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/angledgrip,
	)

	accepted_ammo = list(
		/obj/item/ammo_magazine/rifle/l64,
		/obj/item/ammo_magazine/rifle/l64/ap,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER
	wield_delay = WIELD_DELAY_VERY_FAST
	aim_slowdown = SLOWDOWN_ADS_QUICK

/obj/item/weapon/gun/rifle/l64a3/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 37, "muzzle_y" = 16, "rail_x" = 17, "rail_y" = 22, "under_x" = 27, "under_y" = 14, "stock_x" = 22, "stock_y" = 10)

/obj/item/weapon/gun/rifle/l64a3/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_9)
	set_burst_amount(0)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_6
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_5
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_10 + BULLET_DAMAGE_MULT_TIER_4
	recoil = RECOIL_AMOUNT_TIER_3 + RECOIL_AMOUNT_TIER_5/2
	recoil_unwielded = RECOIL_AMOUNT_TIER_2
	damage_falloff_mult = 0
	scatter = SCATTER_AMOUNT_TIER_8


/obj/item/weapon/gun/rifle/l64a3/marksman
	name = "\improper L64A3 battle rifle"
	desc = "A lightweight designated marksman rifle developed by Howatomo Precision Machining for the Royal Marines and Imperial Armed Space Forces.  Reliable and deadly."

	current_mag = /obj/item/ammo_magazine/rifle/l64/ap

	random_spawn_chance = 100 //L42A3 always spawns with attachments
	random_spawn_muzzle = list(
		/obj/item/attachable/suppressor/nsg,
	)

	random_spawn_under = list(
		/obj/item/attachable/bipod,
	)

/obj/item/weapon/gun/rifle/l64a3/marksman/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_11)

/obj/item/weapon/gun/rifle/l64a3/marksman/handle_starting_attachment() //Adds Marksman DMR's standard attachments.
	..()
	var/obj/item/attachable/scope/variable_zoom/twe/SC = new(src)
	SC.flags_attach_features &= ~ATTACH_REMOVABLE
	SC.Attach(src)
	update_attachable(SC.slot)
