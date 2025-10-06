/obj/item/weapon/gun/revolver/m44/custom/pkd_special
	name = "\improper M2019 Blaster"
	desc = "Properly known as the Pflager Katsumata Series-D Blaster, the M2019 is a relic of a handgun used by detectives and blade runners, having replaced the snub nose .38 detective special in 2019. Fires .44 custom packed sabot magnum rounds. Legally a revolver, the unconventional but robust internal design has made this model incredibly popular amongst collectors and enthusiasts."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/colony/revolvers.dmi'
	icon_state = "lapd_2019"
	item_state = "highpower" //placeholder

	fire_sound = "gun_pkd"
	fire_rattle = 'sound/weapons/gun_pkd_fire01_rattle.ogg'
	reload_sound = 'sound/weapons/handling/pkd_speed_load.ogg'
	cocked_sound = 'sound/weapons/handling/pkd_cock.wav'
	unload_sound = 'sound/weapons/handling/pkd_open_chamber.ogg'
	chamber_close_sound = 'sound/weapons/handling/pkd_close_chamber.ogg'
	hand_reload_sound = 'sound/weapons/gun_revolver_load3.ogg'
	current_mag = /obj/item/ammo_magazine/internal/revolver/m44/pkd
	accepted_ammo = list(
		/obj/item/ammo_magazine/internal/revolver/m44/pkd,
	)

	attachable_allowed = list(
		/obj/item/attachable/flashlight,
		/obj/item/attachable/lasersight,
	)

/obj/item/weapon/gun/revolver/m44/custom/pkd_special/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 29, "muzzle_y" = 22,"rail_x" = 11, "rail_y" = 25, "under_x" = 20, "under_y" = 18, "stock_x" = 20, "stock_y" = 18)

/obj/item/weapon/gun/revolver/m44/custom/pkd_special/set_gun_config_values()
	..()
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_2
	set_fire_delay(FIRE_DELAY_TIER_11)

/obj/item/weapon/gun/revolver/m44/custom/pkd_special/k2049
	name = "\improper M2049 Blaster"
	desc = "In service since 2049, the LAPD 2049 .44 special has been used to retire more replicants than there are colonists in the American Corridor. The top mounted picatinny rail allows this revised version to mount a wide variety of optics for the aspiring detective. Although replicants aren't permitted past the outer core systems, this piece occasionally finds its way to the rim in the hand of defects, collectors, and thieves."
	icon_state = "lapd_2049"
	item_state = "m4a3c" //placeholder

	attachable_allowed = list(
		/obj/item/attachable/flashlight,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/alt_iff_scope,
	)

/obj/item/weapon/gun/revolver/m44/custom/pkd_special/k2049/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 29, "muzzle_y" = 22,"rail_x" = 11, "rail_y" = 25, "under_x" = 20, "under_y" = 18, "stock_x" = 20, "stock_y" = 18)

/obj/item/weapon/gun/revolver/m44/custom/pkd_special/l_series
	name = "\improper PKL 'Double' Blaster"
	desc = "Sold to civilians and private corporations, the Pflager Katsumata Series-L Blaster is a premium double barrel sidearm that can fire two rounds at the same time. Usually found in the hands of combat synths and replicants, this hand cannon is worth more than the combined price of three Emanators. Originally commissioned by the Wallace Corporation, it has since been released onto public market as a luxury firearm."
	icon_state = "pkd_double"
	item_state = "88m4" //placeholder

	attachable_allowed = list(
		/obj/item/attachable/flashlight,
		/obj/item/attachable/lasersight,
	)

/obj/item/weapon/gun/revolver/m44/custom/pkd_special/l_series/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 29, "muzzle_y" = 22,"rail_x" = 11, "rail_y" = 25, "under_x" = 20, "under_y" = 18, "stock_x" = 20, "stock_y" = 18)

/obj/item/weapon/gun/revolver/m44/custom/pkd_special/l_series/set_gun_config_values()
	..()
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_2
	set_fire_delay(FIRE_DELAY_TIER_11)
	set_burst_amount(BURST_AMOUNT_TIER_2)
	set_burst_delay(FIRE_DELAY_TIER_12)

