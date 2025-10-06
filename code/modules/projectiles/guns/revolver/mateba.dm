/obj/item/weapon/mateba_key
	name = "mateba barrel key"
	desc = "Used to swap the barrels of a mateba revolver."
	icon = 'icons/obj/items/tools.dmi'
	icon_state = "matebakey"
	flags_atom = FPRINT|QUICK_DRAWABLE|CONDUCT
	force = 5
	w_class = SIZE_TINY
	throwforce = 5
	throw_speed = SPEED_VERY_FAST
	throw_range = 5
	attack_verb = list("stabbed")

/obj/item/weapon/gun/revolver/mateba
	name = "\improper Mateba autorevolver"
	desc = "The Mateba is a powerful, fast-firing revolver that uses its own recoil to rotate the cylinders. It fires heavy .454 rounds."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/USCM/revolvers.dmi'
	icon_state = "mateba"
	item_state = "mateba"

	fire_sound = 'sound/weapons/gun_mateba.ogg'
	current_mag = /obj/item/ammo_magazine/internal/revolver/mateba
	force = 15
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/compensator,
		/obj/item/attachable/mateba,
		/obj/item/attachable/mateba/long,
		/obj/item/attachable/mateba/short,
	)
	starting_attachment_types = list(/obj/item/attachable/mateba)
	unacidable = TRUE
	explo_proof = TRUE
	black_market_value = 100
	var/is_locked = TRUE
	var/can_change_barrel = TRUE

/obj/item/weapon/gun/revolver/mateba/attackby(obj/item/I, mob/user)
	if(istype(I, /obj/item/weapon/mateba_key) && can_change_barrel)
		if(attachments["special"])
			var/obj/item/attachable/R = attachments["special"]
			visible_message(SPAN_NOTICE("[user] begins stripping [R] from [src]."),
			SPAN_NOTICE("You begin stripping [R] from [src]."), null, 4)

			if(!do_after(usr, 35, INTERRUPT_ALL, BUSY_ICON_FRIENDLY))
				return

			if(!(R == attachments[R.slot]))
				return

			visible_message(SPAN_NOTICE("[user] unlocks and removes [R] from [src]."),
			SPAN_NOTICE("You unlocks removes [R] from [src]."), null, 4)
			R.Detach(user, src)
			if(attachments["muzzle"])
				var/obj/item/attachable/M = attachments["muzzle"]
				M.Detach(user, src)
			playsound(src, 'sound/handling/attachment_remove.ogg', 15, 1, 4)
			update_icon()
	else if(istype(I, /obj/item/attachable))
		var/obj/item/attachable/A = I
		if(A.slot == "muzzle" && !attachments["special"] && can_change_barrel)
			to_chat(user, SPAN_WARNING("You need to attach a barrel first!"))
			return
	. = ..()

/obj/item/weapon/gun/revolver/mateba/unique_action(mob/user)
	if(fire_into_air(user))
		return ..()

/obj/item/weapon/gun/revolver/mateba/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 28, "muzzle_y" = 21, "rail_x" = 9, "rail_y" = 25, "under_x" = 19, "under_y" = 17, "stock_x" = 19, "stock_y" = 17, "special_x" = 23, "special_y" = 22)

/obj/item/weapon/gun/revolver/mateba/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_3)
	set_burst_amount(BURST_AMOUNT_TIER_3)
	set_burst_delay(FIRE_DELAY_TIER_8)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_2
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_5
	scatter = SCATTER_AMOUNT_TIER_7
	burst_scatter_mult = SCATTER_AMOUNT_TIER_6
	scatter_unwielded = SCATTER_AMOUNT_TIER_2
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_10
	recoil = RECOIL_AMOUNT_TIER_2
	recoil_unwielded = RECOIL_AMOUNT_TIER_2

/obj/item/weapon/gun/revolver/mateba/pmc
	current_mag = /obj/item/ammo_magazine/internal/revolver/mateba/ap

/obj/item/weapon/gun/revolver/mateba/general
	name = "\improper golden Mateba autorevolver custom"
	desc = "Boasting a gold-plated frame and grips made of a critically-endangered rosewood tree, this heavily-customized Mateba revolver's pretentious design rivals only the power of its wielder. Fit for a king. Or a general."
	icon_state = "amateba"
	item_state = "amateba"
	current_mag = /obj/item/ammo_magazine/internal/revolver/mateba/impact
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/compensator,
		/obj/item/attachable/mateba/gold,
		/obj/item/attachable/mateba/long/gold,
		/obj/item/attachable/mateba/short/gold,
	)
	starting_attachment_types = null

/obj/item/weapon/gun/revolver/mateba/general/handle_starting_attachment()
	..()
	var/obj/item/attachable/mateba/long/gold/barrel = new(src)
	barrel.flags_attach_features &= ~ATTACH_REMOVABLE
	barrel.Attach(src)
	update_attachables()

/obj/item/weapon/gun/revolver/mateba/general/santa
	name = "\improper Festeba"
	desc = "The Mateba used by SANTA himself. Rumoured to be loaded with explosive ammunition."
	icon_state = "amateba"
	item_state = "amateba"
	current_mag = /obj/item/ammo_magazine/internal/revolver/mateba/explosive
	color = "#FF0000"
	fire_sound = null
	fire_sounds = list('sound/voice/alien_queen_xmas.ogg', 'sound/voice/alien_queen_xmas_2.ogg')
	starting_attachment_types = list(/obj/item/attachable/heavy_barrel)

/obj/item/weapon/gun/revolver/mateba/engraved
	name = "\improper engraved Mateba autorevolver"
	desc = "With a matte black chassis, ebony wooden grips, and gold-trimmed cylinder, this statement of a Mateba is as much a work of art as it is a bringer of death."
	icon_state = "aamateba"
	item_state = "aamateba"
	current_mag = /obj/item/ammo_magazine/internal/revolver/mateba/impact

/obj/item/weapon/gun/revolver/mateba/silver
	name = "\improper polished Mateba autorevolver"
	desc = "The .454 Mateba 6 Unica autorevolver is a semi-automatic handcannon that uses its own recoil to rotate the cylinders. Extremely rare, prohibitively costly, and unyieldingly powerful, it's found in the hands of a select few high-ranking USCM officials. Stylish, sophisticated, and above all, extremely deadly. This one is finished in a beautiful polished silver."
	icon_state = "smateba"
	item_state = "smateba"
	current_mag = /obj/item/ammo_magazine/internal/revolver/mateba/impact
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/compensator,
		/obj/item/attachable/mateba/silver,
		/obj/item/attachable/mateba/long/silver,
		/obj/item/attachable/mateba/short/silver,
	)

	starting_attachment_types = list(/obj/item/attachable/mateba/silver)

/obj/item/weapon/gun/revolver/mateba/engraved/tactical
	current_mag = /obj/item/ammo_magazine/internal/revolver/mateba
	starting_attachment_types = list(/obj/item/attachable/mateba, /obj/item/attachable/compensator, /obj/item/attachable/reflex)

/obj/item/weapon/gun/revolver/mateba/cmateba
	name = "\improper Mateba autorevolver custom"
	desc = "The .454 Mateba 6 Unica autorevolver is a semi-automatic handcannon that uses its own recoil to rotate the cylinders. Extremely rare, prohibitively costly, and unyieldingly powerful, it's found in the hands of a select few high-ranking USCM officials. Stylish, sophisticated, and above all, extremely deadly."
	icon_state = "cmateba"
	item_state = "cmateba"
	current_mag = /obj/item/ammo_magazine/internal/revolver/mateba/impact
	map_specific_decoration = TRUE

/obj/item/weapon/gun/revolver/mateba/special
	name = "\improper Mateba autorevolver special"
	desc = "An old, heavily modified version of the Mateba Autorevolver. It sports a smooth wooden grip, and a much larger barrel to it's unmodified counterpart. It's clear that this weapon has been cared for over a long period of time."
	icon_state = "cmateba_special"
	item_state = "cmateba_special"
	current_mag = /obj/item/ammo_magazine/internal/revolver/mateba/impact
	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/compensator,
	)
	starting_attachment_types = list()
	can_change_barrel = FALSE

/obj/item/weapon/gun/revolver/mateba/special/set_gun_config_values()
	..()
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4

/obj/item/weapon/gun/revolver/mateba/special/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 30, "muzzle_y" = 23,"rail_x" = 9, "rail_y" = 24, "under_x" = 19, "under_y" = 17, "stock_x" = 19, "stock_y" = 17, "special_x" = 23, "special_y" = 22)
