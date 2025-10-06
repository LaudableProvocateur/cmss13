/obj/item/weapon/gun/rifle/rmc_f90
	name = "\improper F903A1 Rifle"
	desc = "The standard issue rifle of the royal marines. Uniquely the royal marines are the only modern military to not use a pulse weapon. Uses 10x24mm caseless ammunition."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/TWE/assault_rifles.dmi'
	icon_state = "aug"
	item_state = "aug"
	fire_sound = "gun_pulse"
	reload_sound = 'sound/weapons/handling/m41_reload.ogg'
	unload_sound = 'sound/weapons/handling/m41_unload.ogg'
	current_mag = /obj/item/ammo_magazine/rifle/rmc_f90
	flags_equip_slot = NO_FLAGS
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
		/obj/item/attachable/bayonet/co2,
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/magnetic_harness,
	)
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER
	map_specific_decoration = FALSE
	aim_slowdown = SLOWDOWN_ADS_QUICK

/obj/item/weapon/gun/rifle/rmc_f90/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 33, "muzzle_y" = 16,"rail_x" = 15, "rail_y" = 21, "under_x" = 24, "under_y" = 13, "stock_x" = 24, "stock_y" = 13)


/obj/item/weapon/gun/rifle/rmc_f90/set_gun_config_values()
	..()
	fire_delay = FIRE_DELAY_TIER_11
	burst_amount = BURST_AMOUNT_TIER_3
	burst_delay = FIRE_DELAY_TIER_11
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4 + 2*HIT_ACCURACY_MULT_TIER_1
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_7
	scatter = SCATTER_AMOUNT_TIER_8
	burst_scatter_mult = SCATTER_AMOUNT_TIER_10
	scatter_unwielded = SCATTER_AMOUNT_TIER_2
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_2
	recoil_unwielded = RECOIL_AMOUNT_TIER_2

/obj/item/weapon/gun/rifle/rmc_f90/a_grip
	name = "\improper F903A2 Rifle"
	desc = "A non-standard issue rifle of the royal marines the F903A2 is currently being phased into the royal marines as their new mainline rifle but currently only sees use by unit leaders. Uniquely the royal marines are the only modern military to not use a pulse weapon. Uses 10x24mm caseless ammunition."
	icon_state = "aug_com"
	item_state = "aug_com"
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/extended_barrel,
	)

/obj/item/weapon/gun/rifle/rmc_f90/a_grip/handle_starting_attachment()
	..()
	var/obj/item/attachable/angledgrip/f90_agrip = new(src)
	f90_agrip.flags_attach_features &= ~ATTACH_REMOVABLE
	f90_agrip.hidden = TRUE
	f90_agrip.Attach(src)
	update_attachable(f90_agrip.slot)

/obj/item/weapon/gun/rifle/rmc_f90/scope
	name = "\improper F903A1 Marksman Rifle"
	desc = "A variation of the F903 rifle used by the royal marines commando. This weapon only accepts the smaller 20 round magazines of 10x24mm."
	icon_state = "aug_dmr"
	item_state = "aug_dmr"
	attachable_allowed = null
	current_mag = /obj/item/ammo_magazine/rifle/rmc_f90/marksman

/obj/item/weapon/gun/rifle/rmc_f90/scope/set_gun_config_values()
	..()
	fire_delay = FIRE_DELAY_TIER_11
	burst_amount = 0
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4 + 2*HIT_ACCURACY_MULT_TIER_1
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_7
	scatter = SCATTER_AMOUNT_TIER_8
	scatter_unwielded = SCATTER_AMOUNT_TIER_2
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_6
	recoil_unwielded = RECOIL_AMOUNT_TIER_2
	damage_falloff_mult = 0

/obj/item/weapon/gun/rifle/rmc_f90/scope/handle_starting_attachment()
	..()
	var/obj/item/attachable/scope/mini/f90/f90_scope = new(src)
	var/obj/item/attachable/angledgrip/f90_agrip = new(src)
	f90_scope.flags_attach_features &= ~ATTACH_REMOVABLE
	f90_agrip.flags_attach_features &= ~ATTACH_REMOVABLE
	f90_scope.hidden = TRUE
	f90_agrip.hidden = TRUE
	f90_agrip.Attach(src)
	f90_scope.Attach(src)
	update_attachable(f90_agrip.slot)
	update_attachable(f90_scope.slot)

/obj/item/weapon/gun/rifle/rmc_f90/shotgun
	name = "\improper F903A1/B 'Breacher' Rifle"
	desc = "A variation of the F903 rifle used by the royal marines commando. Modified to be used in one hand with a shield. Uses 10x24mm caseless ammunition."
	icon_state = "aug_mkey"
	item_state = "aug_mkey"
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
	)

/obj/item/weapon/gun/rifle/rmc_f90/shotgun/set_gun_config_values()
	..()
	fire_delay = FIRE_DELAY_TIER_11
	burst_amount = BURST_AMOUNT_TIER_3
	burst_delay = FIRE_DELAY_TIER_11
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4 + 2*HIT_ACCURACY_MULT_TIER_1
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_2
	scatter = SCATTER_AMOUNT_TIER_8
	burst_scatter_mult = SCATTER_AMOUNT_TIER_10
	scatter_unwielded = SCATTER_AMOUNT_TIER_2
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_2
	recoil_unwielded = RECOIL_OFF

/obj/item/weapon/gun/rifle/rmc_f90/shotgun/handle_starting_attachment()
	..()
	var/obj/item/attachable/attached_gun/shotgun/f90_shotgun = new(src)
	f90_shotgun.flags_attach_features &= ~ATTACH_REMOVABLE
	f90_shotgun.hidden = TRUE
	f90_shotgun.Attach(src)
	update_attachable(f90_shotgun.slot)
