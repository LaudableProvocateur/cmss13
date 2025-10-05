/obj/item/weapon/gun/pistol/t73
	name = "\improper Type 73 pistol"
	desc = "The Type 73 is the once-standard issue sidearm of the UPP. Replaced by the NP92 in UPP use, it remains popular with veteran UPP troops due to familiarity and extra power. Due to an extremely large amount being produced, they tend to end up in the hands of forces attempting to arm themselves on a budget. Users include the Union of Progressive Peoples, Colonial Liberation Front, and just about any mercenary or pirate group out there."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/UPP/pistols.dmi'
	icon_state = "tt"
	item_state = "tt"
	fire_sound = 'sound/weapons/gun_tt.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/t73
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_ONE_HAND_WIELDED|GUN_AMMO_COUNTER
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/suppressor,
	)

/obj/item/weapon/gun/pistol/t73/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 28, "muzzle_y" = 20,"rail_x" = 13, "rail_y" = 22, "under_x" = 22, "under_y" = 15, "stock_x" = 21, "stock_y" = 18)

/obj/item/weapon/gun/pistol/t73/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_11)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_5
	accuracy_mult_unwielded = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_5
	scatter = SCATTER_AMOUNT_TIER_6
	burst_scatter_mult = SCATTER_AMOUNT_TIER_6
	scatter_unwielded = SCATTER_AMOUNT_TIER_6
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_6


/obj/item/weapon/gun/pistol/t73/leader
	name = "\improper Type 74 pistol"
	desc = "The Type 74 is the designation for a specially modified Type 73 with an integrated laser sight system, multiple lightning cuts to reduce weight in order to allow a higher pressure round to be used with the same recoil sping, and a more comfortable grip. Due to the adoption of the NP92, the Type 74 was produced in limited numbers, because of this it is typically only issued on request to high-ranking officers."
	icon_state = "ttb"
	item_state = "ttb"
	current_mag = /obj/item/ammo_magazine/pistol/t73_impact
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_ONE_HAND_WIELDED|GUN_AMMO_COUNTER
	accepted_ammo = list(
		/obj/item/ammo_magazine/pistol/t73,
		/obj/item/ammo_magazine/pistol/t73_impact,
	)

	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/suppressor,
		/obj/item/attachable/heavy_barrel,
	)

/obj/item/weapon/gun/pistol/t73/leader/handle_starting_attachment()
	..()
	var/obj/item/attachable/lasersight/TT = new(src)
	TT.flags_attach_features &= ~ATTACH_REMOVABLE
	TT.hidden = TRUE
	TT.Attach(src)
	update_attachable(TT.slot)

/obj/item/weapon/gun/pistol/t73/leader/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_11)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_6
	accuracy_mult_unwielded = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_6
	scatter = SCATTER_AMOUNT_TIER_7
	burst_scatter_mult = SCATTER_AMOUNT_TIER_6
	scatter_unwielded = SCATTER_AMOUNT_TIER_7
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_6
