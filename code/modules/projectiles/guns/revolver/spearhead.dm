/obj/item/weapon/gun/revolver/cmb
	name = "\improper CMB Spearhead autorevolver"
	desc = "An automatic revolver chambered in .357, often loaded with hollowpoint on spaceships to prevent hull damage. Commonly issued to Colonial Marshals."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/colony/revolvers.dmi'
	icon_state = "spearhead"
	item_state = "spearhead"
	fire_sound = null
	fire_sounds = list('sound/weapons/gun_cmb_1.ogg', 'sound/weapons/gun_cmb_2.ogg')
	fire_rattle = 'sound/weapons/gun_cmb_rattle.ogg'
	cylinder_click = list('sound/weapons/handling/gun_cmb_click1.ogg', 'sound/weapons/handling/gun_cmb_click2.ogg')
	current_mag = /obj/item/ammo_magazine/internal/revolver/cmb_spearhead_autorevolver/hollowpoint
	force = 12
	attachable_allowed = list(
		/obj/item/attachable/suppressor, // Muzzle
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/compensator,
		/obj/item/attachable/reddot, // Rail
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/gyro, // Under
		/obj/item/attachable/lasersight,
	)

/obj/item/weapon/gun/revolver/cmb/click_empty(mob/user)
	if(user)
		to_chat(user, SPAN_WARNING("<b>*click*</b>"))
		playsound(user, pick('sound/weapons/handling/gun_cmb_click1.ogg', 'sound/weapons/handling/gun_cmb_click2.ogg'), 25, 1, 5) //5 tile range
	else
		playsound(src, pick('sound/weapons/handling/gun_cmb_click1.ogg', 'sound/weapons/handling/gun_cmb_click2.ogg'), 25, 1, 5)

/obj/item/weapon/gun/revolver/cmb/Fire(atom/target, mob/living/user, params, reflex = 0, dual_wield)
	playsound('sound/weapons/gun_cmb_bass.ogg') // badass shooting bass
	return ..()

/obj/item/weapon/gun/revolver/cmb/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 29, "muzzle_y" = 19, "rail_x" = 11, "rail_y" = 23, "under_x" = 22, "under_y" = 16, "stock_x" = 20, "stock_y" = 18)

/obj/item/weapon/gun/revolver/cmb/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_6)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_4
	scatter = SCATTER_AMOUNT_TIER_7
	scatter_unwielded = SCATTER_AMOUNT_TIER_5
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_3
	recoil = RECOIL_AMOUNT_TIER_5
	recoil_unwielded = RECOIL_AMOUNT_TIER_3

/obj/item/weapon/gun/revolver/cmb/tactical
	starting_attachment_types = list(/obj/item/attachable/extended_barrel, /obj/item/attachable/lasersight, /obj/item/attachable/reflex)

/obj/item/weapon/gun/revolver/cmb/normalpoint
	current_mag = /obj/item/ammo_magazine/internal/revolver/cmb_spearhead_autorevolver

/obj/item/weapon/gun/revolver/cmb/custom
	name = "\improper Spearhead custom autorevolver"
	desc = "An automatic revolver chambered in .357, custom made of darker metal and with a wooden handle, clearly made for a person with taste in mind."
	icon_state = "black_spearhead"
	item_state = "black_spearhead"
	current_mag = /obj/item/ammo_magazine/internal/revolver/cmb_spearhead_autorevolver

/obj/item/weapon/gun/revolver/cmb/custom/get_examine_text(mob/user)
	. = ..()
	. += SPAN_NOTICE("You feel like tricks with it can be done easily.")

/obj/item/weapon/gun/revolver/cmb/custom/unique_action(mob/user)
	var/result = revolver_trick(user)
	if(result)
		to_chat(user, SPAN_NOTICE("Your badass trick inspires you. Your next few shots will be focused!"))
		accuracy_mult = BASE_ACCURACY_MULT * 2
		accuracy_mult_unwielded = BASE_ACCURACY_MULT * 2
		addtimer(CALLBACK(src, PROC_REF(recalculate_attachment_bonuses)), 3 SECONDS)

/obj/item/weapon/gun/revolver/cmb/custom/tactical
	starting_attachment_types = list(/obj/item/attachable/extended_barrel, /obj/item/attachable/lasersight, /obj/item/attachable/reflex)
