/obj/item/weapon/gun/pistol/holdout
	name = "W62 'Whisper' pistol"
	desc = "A small plinker in .22LR made by Spearhead. Designed for target shooting or quietly dealing with interplanetary vermin. Integrally suppressed and has tritium paint on the ironsights as standard."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/colony/pistols.dmi'
	icon_state = "whisper"
	item_state = "whisper"
	fire_sound = 'sound/weapons/gun_pistol_holdout.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/w62
	w_class = SIZE_SMALL
	force = 2
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/lasersight,
	)


/obj/item/weapon/gun/pistol/holdout/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 25, "muzzle_y" = 20,"rail_x" = 6, "rail_y" = 20, "under_x" = 20, "under_y" = 17, "stock_x" = 22, "stock_y" = 17)

/obj/item/weapon/gun/pistol/holdout/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_11)
	accuracy_mult = BASE_ACCURACY_MULT
	accuracy_mult_unwielded = BASE_ACCURACY_MULT
	scatter = SCATTER_AMOUNT_TIER_6
	burst_scatter_mult = SCATTER_AMOUNT_TIER_6
	scatter_unwielded = SCATTER_AMOUNT_TIER_6
	damage_mult = BASE_BULLET_DAMAGE_MULT

/obj/item/weapon/gun/pistol/holdout/handle_starting_attachment()
	..()
	var/obj/item/attachable/suppressor/S = new(src)
	S.hidden = TRUE
	S.flags_attach_features &= ~ATTACH_REMOVABLE
	S.Attach(src)
	update_attachable(S.slot)

/obj/item/weapon/gun/pistol/holdout/custom
	name = "W62 'Whisper' custom pistol"
	desc = "A small plinker in .22LR made by Spearhead. Designed for target shooting or quietly dealing with interplanetary vermin. This one is custom fitted with ivory grip plates and a bluesteel finish."
	icon_state = "whisperc"
	item_state = "whisperc"
