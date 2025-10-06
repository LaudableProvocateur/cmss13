/obj/item/weapon/gun/shotgun/type23
	name = "\improper Type 23 riot shotgun"
	desc = "As UPP soldiers frequently reported being outmatched by enemy combatants, UPP High Command commissioned a large amount of Type 23 shotguns, originally used for quelling defector colony riots. This slow semi-automatic shotgun chambers 8 gauge, and packs a mean punch."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/UPP/shotguns.dmi'
	icon_state = "type23"
	item_state = "type23"
	fire_sound = 'sound/weapons/gun_type23.ogg' //not perfect, too small
	current_mag = /obj/item/ammo_magazine/internal/shotgun/type23
	attachable_allowed = list(
		/obj/item/attachable/reddot, // Rail
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/bayonet, // Muzzle
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/bayonet/upp,
		/obj/item/attachable/verticalgrip, // Underbarrel
		/obj/item/attachable/flashlight/grip,
		/obj/item/attachable/attached_gun/extinguisher,
		/obj/item/attachable/burstfire_assembly,
		/obj/item/attachable/stock/type23, // Stock
		)
	flags_gun_features = GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER|GUN_INTERNAL_MAG
	flags_equip_slot = SLOT_BACK
	map_specific_decoration = FALSE
	gauge = "8g"
	starting_attachment_types = list(/obj/item/attachable/stock/type23)

/obj/item/weapon/gun/shotgun/type23/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 33, "muzzle_y" = 19,"rail_x" = 13, "rail_y" = 21, "under_x" = 24, "under_y" = 15, "stock_x" = -1, "stock_y" = 17)

/obj/item/weapon/gun/shotgun/type23/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_SHOTGUN_SLOW)
	accuracy_mult = BASE_ACCURACY_MULT
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_10
	scatter = SCATTER_AMOUNT_TIER_4
	scatter_unwielded = SCATTER_AMOUNT_TIER_1
	damage_mult = BASE_BULLET_DAMAGE_MULT
	recoil = RECOIL_AMOUNT_TIER_1
	recoil_unwielded = RECOIL_AMOUNT_TIER_1

/obj/item/weapon/gun/shotgun/type23/breacher
	random_spawn_chance = 100
	random_rail_chance = 100
	random_spawn_rail = list(
		/obj/item/attachable/magnetic_harness,
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

/obj/item/weapon/gun/shotgun/type23/breacher/slug
	current_mag = /obj/item/ammo_magazine/internal/shotgun/type23/slug

/obj/item/weapon/gun/shotgun/type23/breacher/flechette
	current_mag = /obj/item/ammo_magazine/internal/shotgun/type23/flechette

/obj/item/weapon/gun/shotgun/type23/dual
	random_spawn_chance = 100
	random_rail_chance = 100
	random_spawn_rail = list(
		/obj/item/attachable/magnetic_harness,
	)
	random_muzzle_chance = 80
	random_spawn_muzzle = list(
		/obj/item/attachable/bayonet/upp,
		/obj/item/attachable/heavy_barrel,
	)
	random_under_chance = 100
	random_spawn_under = list(
		/obj/item/attachable/flashlight/grip,
		/obj/item/attachable/verticalgrip,
	)

/obj/item/weapon/gun/shotgun/type23/dragon
	current_mag = /obj/item/ammo_magazine/internal/shotgun/type23/dragonsbreath
	random_spawn_chance = 100
	random_rail_chance = 100
	random_spawn_rail = list(
		/obj/item/attachable/magnetic_harness,
	)
	random_muzzle_chance = 70
	random_spawn_muzzle = list(
		/obj/item/attachable/bayonet/upp,
		/obj/item/attachable/heavy_barrel,
	)
	random_under_chance = 100
	random_spawn_under = list(
		/obj/item/attachable/attached_gun/extinguisher,
	)

/obj/item/weapon/gun/shotgun/type23/riot_control
	name = "\improper Type 23-R riot control shotgun"
	desc = "This slow semi-automatic shotgun chambers 8 gauge, and packs a mean punch. The -R version is designed for UPP colony security personnel and handling colony rioting, sporting an integrated vertical grip but lacking in attachment choices."
	current_mag = /obj/item/ammo_magazine/internal/shotgun/type23/beanbag
	attachable_allowed = list(
		/obj/item/attachable/reddot, //Rail
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/verticalgrip, //Underbarrel
		/obj/item/attachable/stock/type23, //Stock
	)
	flags_gun_features = GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER|GUN_INTERNAL_MAG
	flags_equip_slot = SLOT_BACK
	map_specific_decoration = FALSE
	gauge = "8g"
	starting_attachment_types = list(/obj/item/attachable/stock/type23)

/obj/item/weapon/gun/shotgun/type23/riot_control/handle_starting_attachment()
	. = ..()
	var/obj/item/attachable/verticalgrip/integrated_grip = new(src)
	integrated_grip.flags_attach_features &= ~ATTACH_REMOVABLE
	integrated_grip.Attach(src)
	update_attachable(integrated_grip.slot)
