/obj/item/weapon/gun/pistol/l54
	name = "\improper L54 service pistol"
	desc = "Standard issue semi-automatic service pistol of the NSPA. Chambered in 9mm, it is comparable to the popular M4A3 pistol utilized by the USCM."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/TWE/pistols.dmi'
	icon_state = "l54"
	item_state = "l54"
	fire_sound = 'sound/weapons/gun_vp78_v2.ogg'
	reload_sound = 'sound/weapons/gun_vp78_reload.ogg'
	unload_sound = 'sound/weapons/gun_vp78_unload.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/l54
	flags_gun_features = GUN_CAN_POINTBLANK|GUN_ONE_HAND_WIELDED
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/compensator,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/burstfire_assembly,
	)

/obj/item/weapon/gun/pistol/l54/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 28, "muzzle_y" = 20,"rail_x" = 10, "rail_y" = 21, "under_x" = 21, "under_y" = 17, "stock_x" = 21, "stock_y" = 17)

/obj/item/weapon/gun/pistol/l54/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_12)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4
	accuracy_mult_unwielded = BASE_ACCURACY_MULT
	scatter = SCATTER_AMOUNT_TIER_6
	burst_scatter_mult = SCATTER_AMOUNT_TIER_6
	scatter_unwielded = SCATTER_AMOUNT_TIER_6
	damage_mult = BASE_BULLET_DAMAGE_MULT

/obj/item/weapon/gun/pistol/l54_custom
	name = "\improper L54 custom service pistol"
	desc = "The standard-issue semi-automatic sidearm of the NSPA and various military forces within the Three World Empire, chambered in 9mm. Functionally comparable to the USCM’s M4A3 service pistol, this particular example has been heavily customized—featuring a gold-alloy finish, extended barrel with an integrated compensator, and precision-tuned internals, as well as an auto-eject feature. These modifications push its performance well beyond standard service specifications."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/TWE/pistols.dmi'
	icon_state = "l54_custom"
	item_state = "l54_custom"
	current_mag = /obj/item/ammo_magazine/pistol/l54_custom
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/burstfire_assembly,
	)

/obj/item/weapon/gun/pistol/l54_custom/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 30, "muzzle_y" = 20,"rail_x" = 10, "rail_y" = 21, "under_x" = 21, "under_y" = 17, "stock_x" = 21, "stock_y" = 17)

/obj/item/weapon/gun/pistol/l54_custom/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_12)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_10
	accuracy_mult_unwielded = BASE_ACCURACY_MULT
	scatter = SCATTER_AMOUNT_TIER_6
	burst_scatter_mult = SCATTER_AMOUNT_TIER_6
	scatter_unwielded = SCATTER_AMOUNT_TIER_6
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_5
	flags_gun_features = GUN_CAN_POINTBLANK|GUN_ONE_HAND_WIELDED|GUN_AUTO_EJECTOR

/obj/item/weapon/gun/pistol/l54_custom/alt
	desc = "The standard-issue semi-automatic sidearm of the NSPA and various military forces within the Three World Empire, chambered in 9mm. Functionally comparable to the USCM’s M4A3 service pistol, this particular example has been heavily customized—featuring a dark special-alloy finish, extended barrel with an integrated compensator, and precision-tuned internals, as well as an auto-eject feature. These modifications push its performance well beyond standard service specifications."
	icon_state = "l54_custom_alt"
	item_state = "l54_custom_alt"
