/obj/item/ammo_magazine/rocket
	name = "\improper 84mm high explosive rocket"
	desc = "A rocket tube loaded with a high-explosive warhead. Deals high damage to soft targets on direct hit and stuns most targets in a 5-meter-wide area for a short time. Has decreased effect on heavily armored targets."
	caliber = "rocket"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/rocket_launchers.dmi'
	icon_state = "rocket"

	reload_delay = 60
	matter = list("metal" = 10000)
	w_class = SIZE_MEDIUM
	max_rounds = 1
	default_ammo = /datum/ammo/rocket
	gun_type = /obj/item/weapon/gun/launcher/rocket/m5
	flags_magazine = NO_FLAGS

/obj/item/ammo_magazine/rocket/attack_self(mob/user)
	. = ..()
	if(current_rounds <= 0)
		to_chat(user, SPAN_NOTICE("You begin taking apart the empty tube frame..."))
		if(do_after(user,10, INTERRUPT_ALL|BEHAVIOR_IMMOBILE, BUSY_ICON_BUILD))
			user.visible_message("[user] deconstructs the rocket tube frame.",SPAN_NOTICE("You take apart the empty frame."))
			var/obj/item/stack/sheet/metal/M = new(get_turf(user))
			M.amount = 2
			user.drop_held_item()
			qdel(src)
	else
		to_chat(user, "Not with a missile inside!")

/obj/item/ammo_magazine/rocket/attack(mob/living/carbon/human/demoman, mob/living/carbon/human/user)
	if(!istype(demoman) || !istype(user) || get_dist(user, demoman) > 1)
		return
	var/obj/item/weapon/gun/launcher/in_hand = demoman.get_active_hand()
	if(!in_hand || !istype(in_hand))
		to_chat(user, SPAN_WARNING("[demoman] isn't holding a rocket launcher in their active hand!"))
		return
	if(!in_hand.can_be_reloaded)
		to_chat(user, SPAN_WARNING("[demoman]'s [in_hand] can not be reloaded!"))
		return
	if(!in_hand.current_mag)
		to_chat(user, SPAN_WARNING("[demoman]'s [in_hand] is already loaded!"))
		return
	if(!istype(in_hand, gun_type))
		to_chat(user, SPAN_WARNING("[src] doesn't fit into [demoman]'s [in_hand.name]!")) // using name here because otherwise it puts an odd 'the' in front
		return
	var/obj/item/weapon/twohanded/offhand/off_hand = demoman.get_inactive_hand()
	if(!off_hand || !istype(off_hand))
		to_chat(user, SPAN_WARNING("\the [demoman] needs to be wielding \the [in_hand] in order to reload!"))
		return
	if(!skillcheck(demoman, SKILL_FIREARMS, SKILL_FIREARMS_TRAINED))
		to_chat(user, SPAN_WARNING("You don't know how to reload \the [in_hand]!"))
		return
	if(demoman.dir != user.dir || demoman.loc != get_step(user, user.dir))
		to_chat(user, SPAN_WARNING("You must be standing behind \the [demoman] in order to reload it!"))
		return
	if(in_hand.current_mag.current_rounds > 0)
		to_chat(user, SPAN_WARNING("\the [in_hand] is already loaded!"))
		return
	if(user.action_busy)
		return
	to_chat(user, SPAN_NOTICE("You begin reloading \the [demoman]'s [in_hand]! Hold still..."))
	if(!do_after(user,(in_hand.current_mag.reload_delay / 2), INTERRUPT_ALL, BUSY_ICON_FRIENDLY, demoman, INTERRUPT_ALL, BUSY_ICON_GENERIC))
		to_chat(user, SPAN_WARNING("Your reload was interrupted!"))
		return
	if(off_hand != demoman.get_inactive_hand())
		to_chat(user, SPAN_WARNING("\the [demoman] needs to be wielding \the [in_hand] in order to reload!"))
		return
	if(demoman.dir != user.dir)
		to_chat(user, SPAN_WARNING("You must be standing behind \the [demoman] in order to reload it!"))
		return
	user.drop_inv_item_on_ground(src)
	qdel(in_hand.current_mag)
	in_hand.replace_ammo(user,src)
	in_hand.current_mag = src
	in_hand.update_icon()
	forceMove(in_hand)
	to_chat(user, SPAN_NOTICE("You load \the [src] into \the [demoman]'s [in_hand]."))
	if(in_hand.reload_sound)
		playsound(demoman, in_hand.reload_sound, 25, 1)
	else
		playsound(demoman,'sound/machines/click.ogg', 25, 1)

	return 1

/obj/item/ammo_magazine/rocket/update_icon()
	if(current_rounds <= 0)
		name = "\improper 84mm spent rocket tube"
		icon_state = "rocket_e"
		desc = "A spent rocket tube for M5 RPG rocket launcher. Activate in hand to disassemble for metal."
		add_to_garbage(src)
	else
		icon_state = initial(icon_state)

/obj/item/ammo_magazine/rocket/custom/update_icon()
	if(current_rounds <= 0)
		return ..()
	if(warhead)
		if(locked)
			if(fuel && fuel.reagents.get_reagent_amount(fuel_type) >= fuel_requirement)
				icon_state = initial(icon_state) +"_locked"
			else
				icon_state = initial(icon_state) +"_no_fuel"
		else if(!locked)
			icon_state = initial(icon_state) +"_unlocked"
	else
		icon_state = initial(icon_state)

/obj/item/ammo_magazine/rocket/ap
	name = "\improper 84mm anti-armor rocket"
	icon_state = "ap_rocket"
	default_ammo = /datum/ammo/rocket/ap
	desc = "A rocket tube loaded with an armor-piercing warhead. Capable of piercing heavily armored targets. Deals very little to no splash damage. Inflicts guaranteed stun to most targets. Has high accuracy within 7 meters."

/obj/item/ammo_magazine/rocket/wp
	name = "\improper 84mm white-phosphorus rocket"
	icon_state = "wp_rocket"
	default_ammo = /datum/ammo/rocket/wp
	desc = "A rocket tube loaded with a white phosphorus incendiary warhead. Has two damaging factors. On hit disperses X-Variant Napthal (blue flames) in a 4-meter radius circle, ignoring cover, while simultaneously bursting into highly heated shrapnel that ignites targets within slightly bigger area."

/obj/item/ammo_magazine/rocket/brute
	name = "\improper M5510 Laser-Guided Rocket"
	icon_state = "brute_rocket"
	default_ammo = /datum/ammo/rocket/brute
	gun_type = /obj/item/weapon/gun/launcher/rocket/brute
	desc = "The M5510 rockets are high-explosive anti-structure munitions designed to rapidly accelerate to nearly 1,000 miles per hour in any atmospheric conditions. The warhead itself uses an inflection stabilized shaped-charge to generate a low-frequency pressure wave that can flatten nearly any fortification in an ellipical radius of several meters. These rockets are known to have reduced lethality to personel, but will put just about any ol' backwater mud-hut right into orbit."

/obj/item/ammo_magazine/rocket/custom
	name = "\improper 84mm custom rocket"
	desc = "A rocket tube loaded with a custom warhead."
	icon_state = "custom_rocket"
	default_ammo = /datum/ammo/rocket/custom
	matter = list("metal" = 7500) //2 sheets
	var/obj/item/explosive/warhead/rocket/warhead
	var/obj/item/reagent_container/glass/fuel
	var/fuel_requirement = 60
	var/fuel_type = "methane"
	var/locked = FALSE
/obj/item/ammo_magazine/rocket/anti_tank
	name = "\improper 84mm Anti-Tank Rocket"
	desc = "An anti-armor rocket specifically designed for penetration of armored vehicle hulls."
	caliber = "rocket"
	icon_state = "at_rocket"

	max_rounds = 1
	default_ammo = /datum/ammo/rocket/ap/anti_tank
	gun_type = /obj/item/weapon/gun/launcher/rocket/anti_tank
	reload_delay = 100

/obj/item/ammo_magazine/rocket/custom/attack_self(mob/user as mob)
	if(!locked && current_rounds)
		if(warhead)
			user.put_in_hands(warhead)
			warhead = null
		else if(fuel)
			user.put_in_hands(fuel)
			fuel = null
		update_icon()
		return
	. = ..()

/obj/item/ammo_magazine/rocket/custom/get_examine_text(mob/user)
	. = ..()
	if(fuel)
		. += SPAN_NOTICE("Contains fuel.")
	if(warhead)
		. += SPAN_NOTICE("Contains a warhead.")

/obj/item/ammo_magazine/rocket/custom/attackby(obj/item/W as obj, mob/user as mob)
	if(!skillcheck(user, SKILL_ENGINEER, SKILL_ENGINEER_TRAINED))
		to_chat(user, SPAN_WARNING("You do not know how to tinker with [name]."))
		return
	if(current_rounds <= 0)
		to_chat(user, SPAN_WARNING("The rocket tube has been used already."))
		return
	if(HAS_TRAIT(W, TRAIT_TOOL_SCREWDRIVER))
		if(!warhead)
			to_chat(user, SPAN_NOTICE("[name] must contain a warhead to do that!"))
			return
		if(locked)
			to_chat(user, SPAN_NOTICE("You unlock [name]."))
		else
			to_chat(user, SPAN_NOTICE("You lock [name]."))
		locked = !locked
		playsound(loc, 'sound/items/Screwdriver.ogg', 25, 0, 6)
	else if(istype(W,/obj/item/reagent_container/glass) && !locked)
		if(fuel)
			to_chat(user, SPAN_DANGER("The [name] already has a fuel container!"))
			return
		else
			user.temp_drop_inv_item(W)
			W.forceMove(src)
			fuel = W
			to_chat(user, SPAN_DANGER("You add [W] to [name]."))
			playsound(loc, 'sound/items/Screwdriver2.ogg', 25, 0, 6)
	else if(istype(W,/obj/item/explosive/warhead/rocket) && !locked)
		if(warhead)
			to_chat(user, SPAN_DANGER("The [name] already has a warhead!"))
			return
		var/obj/item/explosive/warhead/rocket/det = W
		if(det.assembly_stage < ASSEMBLY_LOCKED)
			to_chat(user, SPAN_DANGER("The [W] is not secured!"))
			return
		user.temp_drop_inv_item(W)
		W.forceMove(src)
		warhead = W
		to_chat(user, SPAN_DANGER("You add [W] to [name]."))
		playsound(loc, 'sound/items/Screwdriver2.ogg', 25, 0, 6)
	update_icon()
