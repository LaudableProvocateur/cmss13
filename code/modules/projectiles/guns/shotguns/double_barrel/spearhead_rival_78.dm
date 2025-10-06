/obj/item/weapon/gun/shotgun/double/spearhead
	name = "\improper Spearhead Rival 78"
	desc = "A double barrel shotgun produced by Spearhead. Archaic, sturdy, affordable. Only holds two 12g shells at a time."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/colony/shotguns.dmi'
	icon_state = "dshotgun"
	item_state = "dshotgun"

	current_mag = /obj/item/ammo_magazine/internal/shotgun/double
	fire_sound = 'sound/weapons/gun_shotgun_heavy.ogg'
	break_sound = 'sound/weapons/handling/gun_mou_open.ogg'
	seal_sound = 'sound/weapons/handling/gun_mou_close.ogg'//replace w/ uniques
	cocked_sound = null //We don't want this.
	attachable_allowed = list(
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
		/obj/item/attachable/gyro,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/stock/double,
	)

	flags_gun_features = GUN_CAN_POINTBLANK|GUN_INTERNAL_MAG
	has_open_icon = TRUE
	civilian_usable_override = TRUE // Come on. It's THE survivor shotgun.
	additional_fire_group_delay = 1.5 SECONDS

/obj/item/weapon/gun/shotgun/double/spearhead/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 32, "muzzle_y" = 19,"rail_x" = 11, "rail_y" = 20, "under_x" = 15, "under_y" = 14, "stock_x" = 13, "stock_y" = 14)

/obj/item/weapon/gun/shotgun/double/spearhead/set_gun_config_values()
	..()
	set_burst_amount(BURST_AMOUNT_TIER_1)
	set_fire_delay(FIRE_DELAY_TIER_SHOTGUN_COMBAT) // Fires .6 seconds faster than an m37, but only two bullets. Same as MK221.
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_3
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_10
	scatter = SCATTER_AMOUNT_TIER_6
	burst_scatter_mult = SCATTER_AMOUNT_TIER_10
	scatter_unwielded = SCATTER_AMOUNT_TIER_2
	damage_mult = BASE_BULLET_DAMAGE_MULT
	recoil = RECOIL_AMOUNT_TIER_4
	recoil_unwielded = RECOIL_AMOUNT_TIER_2

/obj/item/weapon/gun/shotgun/double/spearhead/with_stock/handle_starting_attachment()
	. = ..()
	var/obj/item/attachable/stock/double/S = new(src)
	S.hidden = FALSE
	S.flags_attach_features &= ~ATTACH_REMOVABLE
	S.Attach(src)
	update_attachable(S.slot)

/obj/item/weapon/gun/shotgun/double/spearhead/damaged
	name = "semi-sawn-off Spearhead Rival 78"
	desc = "A double barrel shotgun produced by Spearhead. Archaic, sturdy, affordable. For some reason it seems that someone tried to saw through the barrel and gave up halfway through. This probably isn't going to be the greatest gun for combat.."
	icon_state = "dshotgun_bad"

/obj/item/weapon/gun/shotgun/double/spearhead/damaged/set_gun_config_values()
	..()
	set_burst_amount(BURST_AMOUNT_TIER_1)
	set_fire_delay(FIRE_DELAY_TIER_SHOTGUN_SLOW)
	accuracy_mult = BASE_ACCURACY_MULT
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_10
	scatter = SCATTER_AMOUNT_TIER_7
	scatter_unwielded = SCATTER_AMOUNT_TIER_1
	damage_mult = BASE_BULLET_DAMAGE_MULT - BULLET_DAMAGE_MULT_TIER_7
	recoil = RECOIL_AMOUNT_TIER_3
	recoil_unwielded = RECOIL_AMOUNT_TIER_1

/obj/item/weapon/gun/shotgun/double/spearhead/sawn
	name = "\improper sawn-off Spearhead Rival 78"
	desc = "A double barrel shotgun produced by Spearhead. Archaic, sturdy, affordable. It has been artificially shortened to reduce range but increase damage and spread."
	icon_state = "sshotgun"
	item_state = "sshotgun"
	flags_equip_slot = SLOT_WAIST
	flags_gun_features = GUN_CAN_POINTBLANK|GUN_INTERNAL_MAG

/obj/item/weapon/gun/shotgun/double/spearhead/sawn/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 28, "muzzle_y" = 19, "rail_x" = 11, "rail_y" = 20, "under_x" = 15, "under_y" = 14,  "stock_x" = 18, "stock_y" = 16)

/obj/item/weapon/gun/shotgun/double/spearhead/sawn/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_SHOTGUN_COMBAT)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_3 - HIT_ACCURACY_MULT_TIER_5
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_10
	scatter = SCATTER_AMOUNT_TIER_2
	burst_scatter_mult = SCATTER_AMOUNT_TIER_10
	scatter_unwielded = SCATTER_AMOUNT_TIER_2
	damage_mult = BASE_BULLET_DAMAGE_MULT // Less barrel = less velocity
	recoil = RECOIL_AMOUNT_TIER_1
	recoil_unwielded = RECOIL_AMOUNT_TIER_1
	wield_delay = WIELD_DELAY_FAST
