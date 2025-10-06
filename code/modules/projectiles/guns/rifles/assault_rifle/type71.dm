/obj/item/weapon/gun/rifle/type71
	name = "\improper Type 71 pulse rifle"
	desc = "The primary service rifle of the UPP space forces, the Type 71 is an ergonomic, lightweight pulse rifle chambered in 5.45x39mm. In accordance with doctrinal principles of overmatch and suppression, the rifle has a high rate of fire and a high-capacity casket magazine. Despite lackluster precision, an integrated recoil-dampening mechanism makes the rifle surprisingly controllable in bursts."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/UPP/assault_rifles.dmi'
	icon_state = "type71"
	item_state = "type71"

	pixel_x = -6
	hud_offset = -6

	fire_sound = 'sound/weapons/gun_type71.ogg'
	reload_sound = 'sound/weapons/handling/m41_reload.ogg'
	unload_sound = 'sound/weapons/handling/m41_unload.ogg'
	current_mag = /obj/item/ammo_magazine/rifle/type71
	wield_delay = WIELD_DELAY_FAST
	attachable_allowed = list(
		/obj/item/attachable/flashlight, // Rail
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/suppressor, // Muzzle
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
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/verticalgrip, // Underbarrel
		/obj/item/attachable/flashlight/grip,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/burstfire_assembly,
		/obj/item/attachable/attached_gun/flamer,
		/obj/item/attachable/attached_gun/flamer/advanced,
		/obj/item/attachable/attached_gun/extinguisher,
		)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER
	flags_equip_slot = SLOT_BACK
	start_automatic = TRUE

/obj/item/weapon/gun/rifle/type71/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 39, "muzzle_y" = 17, "rail_x" = 16, "rail_y" = 23, "under_x" = 26, "under_y" = 13, "stock_x" = 11, "stock_y" = 13)

/obj/item/weapon/gun/rifle/type71/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_8)
	set_burst_amount(BURST_AMOUNT_TIER_4)
	set_burst_delay(FIRE_DELAY_TIER_9)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_7
	scatter = SCATTER_AMOUNT_TIER_6
	burst_scatter_mult = SCATTER_AMOUNT_TIER_10
	scatter_unwielded = SCATTER_AMOUNT_TIER_4
	damage_mult = BASE_BULLET_DAMAGE_MULT //10~ more damage than m41, as well as higher ap from bullet, slightly higher DPS, 133>137.5
	recoil_unwielded = RECOIL_AMOUNT_TIER_3

/obj/item/weapon/gun/rifle/type71/rifleman
	//add GL
	random_spawn_chance = 100
	random_rail_chance = 70
	random_spawn_rail = list(
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
	)
	random_muzzle_chance = 100
	random_spawn_muzzle = list(
		/obj/item/attachable/bayonet/upp,
	)
	random_under_chance = 40
	random_spawn_under = list(
		/obj/item/attachable/verticalgrip,
	)

/obj/item/weapon/gun/rifle/type71/dual
	random_spawn_chance = 100
	random_rail_chance = 70
	random_spawn_rail = list(
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
	)
	random_muzzle_chance = 100
	random_spawn_muzzle = list(
		/obj/item/attachable/bayonet/upp,
	)
	random_under_chance = 40
	random_spawn_under = list(
		/obj/item/attachable/lasersight,
		/obj/item/attachable/verticalgrip,
	)

/obj/item/weapon/gun/rifle/type71/sapper
	current_mag = /obj/item/ammo_magazine/rifle/type71/ap
	random_spawn_chance = 100
	random_rail_chance = 80
	random_spawn_rail = list(
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/magnetic_harness,
	)
	random_muzzle_chance = 80
	random_spawn_muzzle = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/bayonet/upp,
	)
	random_under_chance = 90
	random_spawn_under = list(
		/obj/item/attachable/attached_gun/extinguisher,
	)

/obj/item/weapon/gun/rifle/type71/flamer
	name = "\improper Type 71-F pulse rifle"
	desc = " This appears to be a less common variant of the Type 71 with an integrated flamethrower that seems especially powerful."
	attachable_allowed = list(
		/obj/item/attachable/flashlight, // Rail
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/suppressor, // Muzzle
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
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
	)

/obj/item/weapon/gun/rifle/type71/flamer/handle_starting_attachment()
	..()
	var/obj/item/attachable/attached_gun/flamer/advanced/integrated/S = new(src)
	S.flags_attach_features &= ~ATTACH_REMOVABLE
	S.Attach(src)
	update_attachable(S.slot)

/obj/item/weapon/gun/rifle/type71/flamer/leader
	random_spawn_chance = 100
	random_rail_chance = 100
	random_spawn_rail = list(
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/scope/mini,
	)
	random_muzzle_chance = 100
	random_spawn_muzzle = list(
		/obj/item/attachable/bayonet/upp,
	)

/obj/item/weapon/gun/rifle/type71/carbine
	name = "\improper Type 71 pulse carbine"
	desc = "A carbine variant of the Type 71, easier to handle at the cost of lesser damage, but negative soldier reviews have shifted it out of active use, given only to reserves or troops not expected to face much combat."
	icon_state = "type71c"
	item_state = "type71c"

	pixel_x = 0
	hud_offset = 0

	aim_slowdown = SLOWDOWN_ADS_QUICK //Carbine is more lightweight
	wield_delay = WIELD_DELAY_VERY_FAST
	bonus_overlay_x = 2
	force = 20 //integrated melee mod from stock, which doesn't fit on the gun but is still clearly there on the sprite
	attachable_allowed = list(
		/obj/item/attachable/flashlight, // Rail
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/suppressor, // Muzzle
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
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/verticalgrip, // Underbarrel
		/obj/item/attachable/burstfire_assembly,
		/obj/item/attachable/attached_gun/extinguisher,
		)

	random_spawn_muzzle = list() //no default bayonet

/obj/item/weapon/gun/rifle/type71/carbine/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 33, "muzzle_y" = 17,"rail_x" = 14, "rail_y" = 23, "under_x" = 25, "under_y" = 14, "stock_x" = 24, "stock_y" = 13)

/obj/item/weapon/gun/rifle/type71/carbine/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_11)//same fire rate as m41
	damage_mult = BASE_BULLET_DAMAGE_MULT - BULLET_DAMAGE_MULT_TIER_4//same damage as m41 reg bullets probably
	scatter_unwielded = SCATTER_AMOUNT_TIER_5
	if(SSticker.mode && MODE_HAS_FLAG(MODE_FACTION_CLASH))
		scatter = SCATTER_AMOUNT_TIER_5
	recoil_unwielded = RECOIL_AMOUNT_TIER_4

/obj/item/weapon/gun/rifle/type71/carbine/dual
	random_spawn_chance = 100
	random_rail_chance = 70
	random_spawn_rail = list(
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
	)
	random_muzzle_chance = 100
	random_spawn_muzzle = list(
		/obj/item/attachable/bayonet/upp,
	)
	random_under_chance = 40
	random_spawn_under = list(
		/obj/item/attachable/verticalgrip,
	)

/obj/item/weapon/gun/rifle/type71/carbine/commando
	name = "\improper Type 71 'Commando' pulse carbine"
	desc = "A much rarer variant of the Type 71, this version contains an integrated suppressor, integrated scope, and extensive fine-tuning. Many parts have been replaced, filed down, and improved upon. As a result, this variant is rarely seen outside of commando units."
	icon_state = "type73"
	item_state = "type73"

	pixel_x = -2
	hud_offset = -2

	fire_sound = "gun_silenced"
	wield_delay = 0 //Ends up being .5 seconds due to scope
	inherent_traits = list(TRAIT_GUN_SILENCED)
	current_mag = /obj/item/ammo_magazine/rifle/type71/ap
	attachable_allowed = list(
		/obj/item/attachable/verticalgrip,
	)
	random_spawn_chance = 0
	random_spawn_rail = list()
	random_spawn_muzzle = list()
	bonus_overlay_x = 1
	bonus_overlay_y = 0

/obj/item/weapon/gun/rifle/type71/carbine/commando/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 35, "muzzle_y" = 17,"rail_x" = 10, "rail_y" = 22, "under_x" = 23, "under_y" = 14, "stock_x" = 21, "stock_y" = 18)

/obj/item/weapon/gun/rifle/type71/carbine/commando/handle_starting_attachment()
	..()
	//scope
	var/obj/item/attachable/scope/mini/scope = new(src)
	scope.hidden = TRUE
	scope.flags_attach_features &= ~ATTACH_REMOVABLE
	scope.Attach(src)
	update_attachable(scope.slot)

/obj/item/weapon/gun/rifle/type71/carbine/commando/set_gun_config_values()
	..()
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_7
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_4
	set_fire_delay(FIRE_DELAY_TIER_11)
	set_burst_delay(FIRE_DELAY_TIER_12)
	scatter = SCATTER_AMOUNT_TIER_8
