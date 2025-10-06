
/obj/item/weapon/gun/smg
	item_icons = list(
		WEAR_BACK = 'icons/mob/humans/onmob/clothing/back/guns_by_type/smgs.dmi',
		WEAR_J_STORE = 'icons/mob/humans/onmob/clothing/suit_storage/guns_by_type/smgs.dmi',
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/weapons/guns/smgs_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/weapons/guns/smgs_righthand.dmi'
	)
	mouse_pointer = 'icons/effects/mouse_pointer/pistol_mouse.dmi'

	reload_sound = 'sound/weapons/handling/smg_reload.ogg'
	unload_sound = 'sound/weapons/handling/smg_unload.ogg'
	cocked_sound = 'sound/weapons/gun_cocked2.ogg'
	fire_sound = 'sound/weapons/gun_m39.ogg'

	force = 5
	w_class = SIZE_LARGE
	movement_onehanded_acc_penalty_mult = 4
	aim_slowdown = SLOWDOWN_ADS_QUICK
	wield_delay = WIELD_DELAY_VERY_FAST
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/magnetic_harness,
	)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK
	gun_category = GUN_CATEGORY_SMG
	start_automatic = TRUE

/obj/item/weapon/gun/smg/Initialize(mapload, spawn_empty)
	. = ..()
	if(current_mag && current_mag.current_rounds > 0)
		load_into_chamber()

/obj/item/weapon/gun/smg/unique_action(mob/user)
	cock(user)

/obj/item/weapon/gun/smg/set_gun_config_values()
	..()
	movement_onehanded_acc_penalty_mult = 4
	fa_max_scatter = SCATTER_AMOUNT_TIER_5
