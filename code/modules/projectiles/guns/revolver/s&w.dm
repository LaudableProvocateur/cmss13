/obj/item/weapon/gun/revolver/small
	name = "\improper S&W .38 model 37 revolver"
	desc = "A lean .38 made by Smith & Wesson. A timeless classic, from antiquity to the future. This specific model is known to be wildly inaccurate, yet extremely lethal."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/colony/revolvers.dmi'
	icon_state = "sw357"
	item_state = "sw357"
	fire_sound = 'sound/weapons/gun_44mag2.ogg'
	current_mag = /obj/item/ammo_magazine/internal/revolver/smith_and_wesson
	force = 6
	flags_gun_features = GUN_ANTIQUE|GUN_ONE_HAND_WIELDED|GUN_CAN_POINTBLANK

/obj/item/weapon/gun/revolver/small/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 30, "muzzle_y" = 19,"rail_x" = 12, "rail_y" = 21, "under_x" = 20, "under_y" = 15, "stock_x" = 20, "stock_y" = 15)

/obj/item/weapon/gun/revolver/small/get_examine_text(mob/user)
	. = ..()
	. += SPAN_NOTICE("You feel like tricks with it can be done easily.")

/obj/item/weapon/gun/revolver/small/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_6)
	accuracy_mult = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_7
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_7
	scatter = SCATTER_AMOUNT_TIER_5
	damage_mult = BASE_BULLET_DAMAGE_MULT * 2
	recoil = 0
	recoil_unwielded = 0

/obj/item/weapon/gun/revolver/small/unique_action(mob/user)
	var/result = revolver_trick(user)
	if(result)
		to_chat(user, SPAN_NOTICE("Your badass trick inspires you. Your next few shots will be focused!"))
		accuracy_mult = BASE_ACCURACY_MULT * 2
		accuracy_mult_unwielded = BASE_ACCURACY_MULT * 2
		addtimer(CALLBACK(src, PROC_REF(recalculate_attachment_bonuses)), 3 SECONDS)

/obj/item/weapon/gun/revolver/small/black
	name = "\improper S&W .38 model 37 Custom revolver"
	desc = "A Custom, lean .38 made by Smith & Wesson. A timeless classic, from antiquity to the future. This specific model, with its sleek black body and custom ivory grips, is known to be wildly inaccurate, yet extremely lethal."
	icon_state = "black_sw357"
	item_state = "black_sw357"
