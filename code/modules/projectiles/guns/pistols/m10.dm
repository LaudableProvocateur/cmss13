/obj/item/weapon/gun/pistol/m10
	name = "\improper M10 auto pistol"
	desc = "The Armat Battlefield Systems M10 Auto Pistol, a compact, rapid-firing sidearm designed for close-quarters defense. With a 40-round magazine, it emphasizes fire rate over precision, providing effective suppressive fire in short-range engagements."
	icon = 'icons/obj/items/weapons/guns/guns_by_map/classic/guns_obj.dmi'
	icon_state = "m10"
	item_state = "m10"
	attachable_allowed = list(
		/obj/item/attachable/reddot, //Rail
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/suppressor, //Muzzle
		/obj/item/attachable/compensator,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/lasersight, //Underbarrel
	)
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_ONE_HAND_WIELDED|GUN_AMMO_COUNTER
	start_automatic = TRUE
	map_specific_decoration = TRUE
	fire_sound = 'sound/weapons/gun_m10_auto_pistol.ogg'
	reload_sound = 'sound/weapons/handling/smg_reload.ogg'
	unload_sound = 'sound/weapons/handling/smg_unload.ogg'

	current_mag = /obj/item/ammo_magazine/pistol/m10

/obj/item/weapon/gun/pistol/m10/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 26, "muzzle_y" = 19,"rail_x" = 11, "rail_y" = 20, "under_x" = 21, "under_y" = 16, "stock_x" = 18, "stock_y" = 14)

/obj/item/weapon/gun/pistol/m10/set_gun_config_values()
	..()
	set_burst_amount(0)
	fa_scatter_peak = FULL_AUTO_SCATTER_PEAK_TIER_5
	fa_max_scatter = SCATTER_AMOUNT_TIER_3
	set_fire_delay(FIRE_DELAY_TIER_12)
	accuracy_mult = BASE_ACCURACY_MULT
	accuracy_mult_unwielded = BASE_ACCURACY_MULT
	scatter = SCATTER_AMOUNT_TIER_4
	scatter_unwielded = SCATTER_AMOUNT_TIER_3
	damage_mult = BASE_BULLET_DAMAGE_MULT - BULLET_DAMAGE_MULT_TIER_7
	recoil = RECOIL_AMOUNT_TIER_5
	recoil_unwielded = RECOIL_AMOUNT_TIER_4
