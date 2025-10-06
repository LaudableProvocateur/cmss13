//SHOCKGUN - Non-Lethal Fast firing shotgun
/obj/item/weapon/gun/shotgun/es7
	name = "\improper ES-7 Supernova Electrostatic Shockgun"
	desc = "An archaic electrostatic 20ga shotgun design based on old Earth designs, albeit modernized for its time period. Being a dual-mode system, it is capable of firing semi-auto and pump-action modes, although this particular model is strictly semi-auto only. It can only accept X21 slugs."
	desc_lore = "Despite receiving very little upgrades over its service period both within the Weyland Corporation and later the Weyland-Yutani Corporation, it remains popular with mercenaries and security firms because it was designed with security and law enforcement use in mind. "
	icon_state = "es7"
	item_state = "es7"
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/WY/shotguns.dmi'
	gauge = "20g"
	hud_offset = -5
	pixel_x = -5
	muzzle_flash = "muzzle_energy"
	muzzle_flash_color = COLOR_MUZZLE_BLUE
	flags_equip_slot = SLOT_BACK
	fire_sound = "gun_shockgun"
	firesound_volume = 20
	current_mag = /obj/item/ammo_magazine/internal/shotgun/combat/es7
	attachable_allowed = list(
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonet/upp,
		/obj/item/attachable/bayonet/co2,
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/compensator,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/angledgrip,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/attached_gun/extinguisher,
	)

/obj/item/weapon/gun/shotgun/es7/Initialize(mapload, spawn_empty)
	. = ..()
	if(current_mag && current_mag.current_rounds > 0)
		load_into_chamber()

/obj/item/weapon/gun/shotgun/es7/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 41, "muzzle_y" = 19, "rail_x" = 17, "rail_y" = 21, "under_x" = 34, "under_y" = 13, "stock_x" = 11, "stock_y" = 13.)

/obj/item/weapon/gun/shotgun/es7/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_11*2)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_3
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_10
	scatter = SCATTER_AMOUNT_TIER_8
	burst_scatter_mult = SCATTER_AMOUNT_TIER_6
	scatter_unwielded = SCATTER_AMOUNT_TIER_2
	damage_mult = BASE_BULLET_DAMAGE_MULT
	recoil = RECOIL_AMOUNT_TIER_5
	recoil_unwielded = RECOIL_AMOUNT_TIER_3

/obj/item/weapon/gun/shotgun/es7/get_examine_text(mob/user)
	. = ..()
	if(in_chamber) . += "It has a chambered round."

/obj/item/weapon/gun/shotgun/es7/tactical
	starting_attachment_types = list(/obj/item/attachable/magnetic_harness, /obj/item/attachable/verticalgrip)
