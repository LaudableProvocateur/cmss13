/obj/item/weapon/gun/rifle/xm177
	name = "\improper XM177E2 carbine"
	desc = "An old design, essentially a shortened M16A1 with a collapsable stock. It is chambered in 5.56x45mm. The short length inhibits the attachment of most underbarrel attachments, and the barrel moderator prohibits the attachment of all muzzle devices."
	desc_lore = "A carbine similar to the M16A1, with a collapsible stock and a distinct flash suppressor. A stamp on the receiver reads: 'COLT AR-15 - PROPERTY OF U.S. GOVT - XM177E2 - CAL 5.56MM' \nA design originating from the Vietnam War, the XM177, also known as the Colt Commando or GAU-5/A, was an improvement on the CAR-15 Model 607, fixing multiple issues found with the limited service of the Model 607 with Special Forces. The XM177 saw primary use with Army Special Forces and Navy Seals operating as commandos. \nHow this got here is a mystery."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/colony/assault_rifles.dmi'
	icon_state = "xm177"
	item_state = "m16"
	current_mag = /obj/item/ammo_magazine/rifle/m16

	flags_gun_features = GUN_CAN_POINTBLANK|GUN_ANTIQUE

	fire_sound = 'sound/weapons/gun_m16.ogg'
	reload_sound = 'sound/weapons/handling/gun_m16_reload.ogg'
	unload_sound = 'sound/weapons/handling/gun_m16_unload.ogg'
	accepted_ammo = list(
		/obj/item/ammo_magazine/rifle/m16,
		/obj/item/ammo_magazine/rifle/m16/ap,
		/obj/item/ammo_magazine/rifle/m16/ext,
	)

	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/stock/xm177,
	)

	random_spawn_chance = 75
	random_spawn_rail = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
	)
	random_spawn_under = list(
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/lasersight,
	)

	starting_attachment_types = list(/obj/item/attachable/stock/xm177)

/obj/item/weapon/gun/rifle/xm177/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 29, "muzzle_y" = 18, "rail_x" = 8, "rail_y" = 20, "under_x" = 18, "under_y" = 13, "stock_x" = 14, "stock_y" = 14)

/obj/item/weapon/gun/rifle/xm177/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_SMG)
	set_burst_amount(BURST_AMOUNT_TIER_3)
	set_burst_delay(FIRE_DELAY_TIER_SMG)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_6
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_3
	scatter = SCATTER_AMOUNT_TIER_8
	burst_scatter_mult = SCATTER_AMOUNT_TIER_7
	scatter_unwielded = SCATTER_AMOUNT_TIER_4
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_6
	recoil_unwielded = RECOIL_AMOUNT_TIER_2

/obj/item/weapon/gun/rifle/xm177/car15a3
	name = "\improper CAR-15A3 carbine"
	desc = "Modernized version of the XM177, developed for limited use by special forces and Office of the Colonial Marshals. The short length inhibits the attachment of most underbarrel attachments, and the barrel moderator prohibits the attachment of all muzzle devices."
	desc_lore = null
	icon_state = "car15a3"
	item_state = "car15a3"

	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/stock/xm177,
		/obj/item/attachable/stock/xm177/car15a3,
	)

	starting_attachment_types = list(/obj/item/attachable/stock/xm177/car15a3)

/obj/item/weapon/gun/rifle/xm177/car15a3/tactical
	random_spawn_chance = 100
	random_spawn_rail = list(
		/obj/item/attachable/reflex,
	)
	random_spawn_under = list(
		/obj/item/attachable/lasersight,
	)

