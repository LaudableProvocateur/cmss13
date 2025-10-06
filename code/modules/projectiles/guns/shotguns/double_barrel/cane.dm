/obj/item/weapon/gun/shotgun/double/spearhead/cane
	name = "fancy cane"
	desc = "An ebony cane with a fancy, seemingly-golden tip. Feels hollow to the touch."
	icon = 'icons/obj/items/weapons/melee/canes.dmi'
	icon_state = "fancy_cane"
	item_state = "fancy_cane"
	pickup_sound = null
	drop_sound = null
	item_icons = list(
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/weapons/melee/canes_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/weapons/melee/canes_righthand.dmi',
	)
	caliber = ".44"
	gauge = ".44" // misery
	force = 15 // hollow. also too hollow to support one's weight like normal canes
	attack_speed = 1.5 SECONDS
	current_mag = /obj/item/ammo_magazine/internal/shotgun/double/cane
	fire_sound = null
	fire_sounds = list('sound/weapons/gun_silenced_oldshot1.ogg', 'sound/weapons/gun_silenced_oldshot2.ogg') // Uses the old sounds because they're more 'James Bond'-y
	break_sound = 'sound/weapons/handling/pkd_open_chamber.ogg'
	seal_sound = 'sound/weapons/handling/pkd_close_chamber.ogg'
	attachable_allowed = list()

	flags_gun_features = GUN_CAN_POINTBLANK|GUN_INTERNAL_MAG|GUN_TRIGGER_SAFETY|GUN_ONE_HAND_WIELDED|GUN_ANTIQUE|GUN_NO_DESCRIPTION|GUN_UNUSUAL_DESIGN
	flags_item = NO_FLAGS

	inherent_traits = list(TRAIT_GUN_SILENCED)

/obj/item/weapon/gun/shotgun/double/spearhead/cane/Initialize(mapload, spawn_empty)
	. = ..()
	AddElement(/datum/element/traitbound/gun_silenced)

/obj/item/weapon/gun/shotgun/double/spearhead/cane/set_gun_config_values()
	..()
	set_burst_amount(BURST_AMOUNT_TIER_1)
	set_fire_delay(FIRE_DELAY_TIER_7)
	accuracy_mult_unwielded = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_10
	scatter_unwielded = SCATTER_AMOUNT_TIER_7
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_5
	recoil = RECOIL_AMOUNT_TIER_2
	recoil_unwielded = RECOIL_AMOUNT_TIER_3

/obj/item/weapon/gun/shotgun/double/spearhead/cane/gun_safety_handle(mob/user)
	if(flags_gun_features & GUN_TRIGGER_SAFETY)
		to_chat(user, SPAN_NOTICE("You turn [src] back into its normal cane stance."))
		playsound(user, 'sound/weapons/handling/nsg23_unload.ogg', 25, 1)
	else
		to_chat(user, SPAN_DANGER("You unlock the safety and change [src] into its gun stance!"))
		playsound(user, 'sound/weapons/handling/smg_reload.ogg', 25, 1)

	if(current_mag.chamber_closed == FALSE) // close the chamber
		open_chamber(user, TRUE)

	update_desc()
	update_icon()

	playsound(user, 'sound/weapons/handling/safety_toggle.ogg', 25, 1)

/obj/item/weapon/gun/shotgun/double/spearhead/cane/proc/update_desc()
	if(flags_gun_features & GUN_TRIGGER_SAFETY)
		name = initial(name)
		desc = initial(desc)
	else
		name = "cane revolver"
		desc = initial(desc) + " Apparently, because it's a large revolver. Who'da thunk it?"

/obj/item/weapon/gun/shotgun/double/spearhead/cane/open_chamber(mob/user, override)
	if(flags_gun_features & GUN_TRIGGER_SAFETY && !override)
		to_chat(user, SPAN_WARNING("Not with the safety on!"))
		return
	return ..()

/obj/item/weapon/gun/shotgun/double/spearhead/cane/update_icon()
	if(flags_gun_features & GUN_TRIGGER_SAFETY)
		icon_state = initial(icon_state)

	else if(current_mag.chamber_closed == FALSE)
		icon_state = initial(icon_state) + "_gun_open"
	else
		icon_state = initial(icon_state) + "_gun"
