/obj/item/weapon/gun/bolt_action/basira_armstrong
	name = "\improper Basira-Armstrong bolt-action hunting rifle"
	desc = "Named after its eccentric designers, the Basira-Armstrong is a cheap but reliable civilian bolt-action rifle frequently found in the outer colonies. Despite its legally-mandated limited magazine capacity, its light weight and legendary accuracy makes it popular among hunters and competitive shooters."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/colony/marksman_rifles.dmi'
	icon_state = "boltaction"
	item_state = "hunting"
	item_icons = list(
		WEAR_BACK = 'icons/mob/humans/onmob/clothing/back/guns_by_type/marksman_rifles.dmi',
		WEAR_J_STORE = 'icons/mob/humans/onmob/clothing/suit_storage/guns_by_type/marksman_rifles.dmi',
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/weapons/guns/marksman_rifles_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/weapons/guns/marksman_rifles_righthand.dmi'
	)
	mouse_pointer = 'icons/effects/mouse_pointer/sniper_mouse.dmi'

	pixel_x = -6
	hud_offset = -6

	flags_equip_slot = SLOT_BACK
	w_class = SIZE_LARGE
	force = 5
	flags_gun_features = GUN_CAN_POINTBLANK|GUN_WIELDED_FIRING_ONLY
	gun_category = GUN_CATEGORY_RIFLE
	aim_slowdown = SLOWDOWN_ADS_RIFLE
	wield_delay = WIELD_DELAY_NORMAL
	current_mag = /obj/item/ammo_magazine/rifle/boltaction
	attachable_allowed = list(
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonet/co2,
		/obj/item/attachable/bayonet/upp,
		/obj/item/attachable/bayonet/antique,
		/obj/item/attachable/bayonet/custom,
		/obj/item/attachable/bayonet/wy,
		/obj/item/attachable/bayonet/custom/red,
		/obj/item/attachable/bayonet/custom/blue,
		/obj/item/attachable/bayonet/custom/black,
		/obj/item/attachable/bayonet/tanto,
		/obj/item/attachable/bayonet/tanto/blue,
		/obj/item/attachable/bayonet/rmc_replica,
		/obj/item/attachable/bayonet/rmc,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/scope/mini/hunting,
	)
	starting_attachment_types = list(/obj/item/attachable/scope/mini/hunting)
	aim_slowdown = SLOWDOWN_ADS_RIFLE
	wield_delay = WIELD_DELAY_NORMAL
	civilian_usable_override = TRUE
	unacidable = TRUE // Like other 1-of-a-kind weapons, it can't be gotten rid of that fast
	explo_proof = TRUE

	cocked_sound = 'sound/weapons/gun_cocked2.ogg'
	fire_sound = 'sound/weapons/gun_boltaction.ogg'
	open_bolt_sound ='sound/weapons/handling/gun_boltaction_open.ogg'
	close_bolt_sound ='sound/weapons/handling/gun_boltaction_close.ogg'

	bolted = TRUE // FALSE IS OPEN, TRUE IS CLOSE
	bolt_delay
	recent_cycle //world.time to see when they last bolted it.
	/// If this gun should change icon states when the bolt is open
	has_openbolt_icon = TRUE

/obj/item/weapon/gun/bolt_action/basira_armstrong/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 45, "muzzle_y" = 17,"rail_x" = 18, "rail_y" = 18, "under_x" = 38, "under_y" = 14, "stock_x" = 20, "stock_y" = 9)

/obj/item/weapon/gun/bolt_action/basira_armstrong/set_gun_config_values()
	..()
	set_burst_amount(0)
	set_fire_delay(FIRE_DELAY_TIER_4)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_7
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_10 - HIT_ACCURACY_MULT_TIER_3
	scatter = SCATTER_AMOUNT_TIER_9
	burst_scatter_mult = SCATTER_AMOUNT_TIER_6
	scatter_unwielded = SCATTER_AMOUNT_TIER_10
	movement_onehanded_acc_penalty_mult = MOVEMENT_ACCURACY_PENALTY_MULT_TIER_2
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_8
	recoil = RECOIL_OFF
	recoil_unwielded = RECOIL_AMOUNT_TIER_0
