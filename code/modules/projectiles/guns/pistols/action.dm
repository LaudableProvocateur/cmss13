/obj/item/weapon/gun/pistol/action
	name = "AC71 'Action' holdout pistol"
	desc = "A .380 ACP pistol made by Spearhead Armory. Often used by the marshals as a backup weapon."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/colony/pistols.dmi'
	icon_state = "action"
	item_state = "action"
	fire_sound = 'sound/weapons/gun_pistol_380acp.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/ac71
	w_class = SIZE_TINY
	force = 4
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/suppressor,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/compensator,
	)

/obj/item/weapon/gun/pistol/action/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_11)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_5
	accuracy_mult_unwielded = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_5
	scatter = SCATTER_AMOUNT_TIER_6
	burst_scatter_mult = SCATTER_AMOUNT_TIER_6
	scatter_unwielded = SCATTER_AMOUNT_TIER_6
	damage_mult = BASE_BULLET_DAMAGE_MULT

/obj/item/weapon/gun/pistol/action/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 24, "muzzle_y" = 17,"rail_x" = 12, "rail_y" = 18, "under_x" = 17, "under_y" = 14, "stock_x" = 22, "stock_y" = 17)
