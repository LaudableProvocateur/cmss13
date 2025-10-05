/obj/item/weapon/gun/pistol/es4
	name = "\improper ES-4 electrostatic pistol"
	desc = "A Weyland Corp manufactured less-than-lethal pistol. Originally manufactured in the 2080s, the ES-4 electrostatic pistol fires electrically-charged bullets with high accuracy, though its cost and constant need for cleaning makes it a rare sight."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/WY/pistols.dmi'
	icon_state = "es4"
	item_state = "es4"
	fire_sound = 'sound/weapons/gun_es4.ogg'
	firesound_volume = 20
	reload_sound = 'sound/weapons/gun_88m4_reload.ogg'
	unload_sound = 'sound/weapons/gun_88m4_unload.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/es4
	force = 8
	muzzle_flash = "muzzle_energy"
	muzzle_flash_color = COLOR_MUZZLE_BLUE
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_ONE_HAND_WIELDED|GUN_AMMO_COUNTER
	attachable_allowed = list(
		/obj/item/attachable/flashlight,
		/obj/item/attachable/reflex,
		/obj/item/attachable/reddot,
		/obj/item/attachable/lasersight,
	)

/obj/item/weapon/gun/pistol/es4/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 27, "muzzle_y" = 21, "rail_x" = 10, "rail_y" = 22, "under_x" = 25, "under_y" = 18, "stock_x" = 18, "stock_y" = 15)


/obj/item/weapon/gun/pistol/es4/set_gun_config_values()
	..()
	fire_delay = FIRE_DELAY_TIER_11
	accuracy_mult = BASE_ACCURACY_MULT
	accuracy_mult_unwielded = BASE_ACCURACY_MULT
	scatter = SCATTER_AMOUNT_TIER_7
	scatter_unwielded = SCATTER_AMOUNT_TIER_7
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_4
