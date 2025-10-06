/obj/item/weapon/gun/shotgun/pump/dual_tube/cmb
	name = "\improper HG 37-12 pump shotgun"
	desc = "A eight-round pump action shotgun with four-round capacity dual internal tube magazines allowing for quick reloading and highly accurate fire. Used exclusively by Colonial Marshals. You can switch the active internal magazine by toggling the shotgun tube."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/colony/shotguns.dmi'
	icon_state = "hg3712"
	item_state = "hg3712"
	fire_sound = 'sound/weapons/gun_shotgun_small.ogg'
	current_mag = /obj/item/ammo_magazine/internal/shotgun/cmb
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/gyro,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/compensator,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/attached_gun/extinguisher,
	)

	pixel_x = -5
	hud_offset = -5

	map_specific_decoration = FALSE
	civilian_usable_override = TRUE // Come on. It's THE, er, other, survivor shotgun.


/obj/item/weapon/gun/shotgun/pump/dual_tube/cmb/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 37, "muzzle_y" = 17, "rail_x" = 14, "rail_y" = 21, "under_x" = 28, "under_y" = 15, "stock_x" = 24, "stock_y" = 10)

/obj/item/weapon/gun/shotgun/pump/dual_tube/cmb/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_SHOTGUN_COLONY)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_3
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_10
	scatter = SCATTER_AMOUNT_TIER_6
	burst_scatter_mult = SCATTER_AMOUNT_TIER_6
	scatter_unwielded = SCATTER_AMOUNT_TIER_2
	damage_mult = BASE_BULLET_DAMAGE_MULT
	recoil = RECOIL_AMOUNT_TIER_4
	recoil_unwielded = RECOIL_AMOUNT_TIER_2

/obj/item/weapon/gun/shotgun/pump/dual_tube/cmb/swat
	starting_attachment_types = list(/obj/item/attachable/magnetic_harness, /obj/item/attachable/gyro)

/obj/item/weapon/gun/shotgun/pump/dual_tube/cmb/m3717
	name = "\improper M37-17 pump shotgun"
	desc = "A military version of the iconic HG 37-12, this design can fit one extra shell in each of its dual-tube internal magazines, and fires shells with increased velocity, resulting in more damage. Issued to select USCM vessels and stations in the outer veil. A button on the side toggles the internal tubes."
	icon_state = "m3717"
	item_state = "m3717"
	current_mag = /obj/item/ammo_magazine/internal/shotgun/cmb/m3717

/obj/item/weapon/gun/shotgun/pump/dual_tube/cmb/m3717/set_gun_config_values()
	..()
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_3

/obj/item/weapon/gun/shotgun/pump/dual_tube/cmb/m3717/harness
	starting_attachment_types = list(/obj/item/attachable/magnetic_harness)
