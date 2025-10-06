/obj/item/weapon/gun/pistol/cz81
	name = "\improper CZ-81 machine pistol"
	desc = "A robust, 20th century firearm that's a combination of pistol and submachinegun. Fires .32ACP caliber rounds from a 20-round magazine."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/colony/smgs.dmi'
	icon_state = "skorpion"
	item_state = "skorpion"
	item_icons = list(
		WEAR_J_STORE = 'icons/mob/humans/onmob/clothing/suit_storage/guns_by_type/smgs.dmi',
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/weapons/guns/smgs_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/weapons/guns/smgs_righthand.dmi'
	)
	fire_sound = 'sound/weapons/gun_skorpion.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/cz_81
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_ONE_HAND_WIELDED
	attachable_allowed = list(
		/obj/item/attachable/reddot, //Rail
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/suppressor, //Muzzle
		/obj/item/attachable/compensator,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/lasersight, //Underbarrel
		/obj/item/attachable/burstfire_assembly,
	)
	start_semiauto = FALSE
	start_automatic = TRUE

/obj/item/weapon/gun/pistol/cz81/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 29, "muzzle_y" = 18,"rail_x" = 16, "rail_y" = 21, "under_x" = 23, "under_y" = 15, "stock_x" = 23, "stock_y" = 15)

/obj/item/weapon/gun/pistol/cz81/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_11)
	fa_scatter_peak = 15 //shots
	fa_max_scatter = SCATTER_AMOUNT_TIER_5

	accuracy_mult = BASE_ACCURACY_MULT
	scatter = SCATTER_AMOUNT_TIER_7
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_2
