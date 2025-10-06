/obj/item/weapon/gun/revolver
	flags_equip_slot = SLOT_WAIST
	w_class = SIZE_MEDIUM
	item_icons = list(
		WEAR_WAIST = 'icons/mob/humans/onmob/clothing/belts/guns.dmi',
		WEAR_J_STORE = 'icons/mob/humans/onmob/clothing/suit_storage/guns_by_type/revolvers.dmi',
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/weapons/guns/revolvers_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/weapons/guns/revolvers_righthand.dmi'
	)
	mouse_pointer = 'icons/effects/mouse_pointer/pistol_mouse.dmi'

	matter = list("metal" = 2000)
	flags_gun_features = GUN_CAN_POINTBLANK|GUN_INTERNAL_MAG|GUN_ONE_HAND_WIELDED
	gun_category = GUN_CATEGORY_HANDGUN
	wield_delay = WIELD_DELAY_VERY_FAST //If you modify your revolver to be two-handed, it will still be fast to aim
	movement_onehanded_acc_penalty_mult = 3
	has_empty_icon = FALSE
	has_open_icon = TRUE
	current_mag = /obj/item/ammo_magazine/internal/revolver

	fire_sound = 'sound/weapons/gun_44mag_v4.ogg'
	reload_sound = 'sound/weapons/gun_44mag_speed_loader.wav'
	cocked_sound = 'sound/weapons/gun_revolver_spun.ogg'
	unload_sound = 'sound/weapons/gun_44mag_open_chamber.wav'
	var/chamber_close_sound = 'sound/weapons/gun_44mag_close_chamber.wav'
	var/hand_reload_sound = 'sound/weapons/gun_revolver_load3.ogg'
	var/spin_sound = 'sound/effects/spin.ogg'
	var/thud_sound = 'sound/effects/thud.ogg'
	var/list/cylinder_click = list('sound/weapons/gun_empty.ogg')

	var/trick_delay = 4 SECONDS
	var/recent_trick //So they're not spamming tricks.
	var/russian_roulette = 0 //God help you if you do this.

/obj/item/weapon/gun/revolver/Initialize(mapload, spawn_empty)
	. = ..()
	if(current_mag)
		replace_cylinder(current_mag.current_rounds)

/obj/item/weapon/gun/revolver/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_5)
	accuracy_mult = BASE_ACCURACY_MULT
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_3
	scatter = SCATTER_AMOUNT_TIER_8
	scatter_unwielded = SCATTER_AMOUNT_TIER_4
	damage_mult = BASE_BULLET_DAMAGE_MULT
	recoil = RECOIL_AMOUNT_TIER_5
	recoil_unwielded = RECOIL_AMOUNT_TIER_3
	movement_onehanded_acc_penalty_mult = 3

/obj/item/weapon/gun/revolver/get_examine_text(mob/user)
	. = ..()
	if(current_mag)
		var/message = "[current_mag.chamber_closed? "It's closed.": "It's open with [current_mag.current_rounds] round\s loaded."]"
		. += message

/obj/item/weapon/gun/revolver/display_ammo(mob/user) // revolvers don't *really* have a chamber, at least in a way that matters for ammo displaying
	if(flags_gun_features & GUN_AMMO_COUNTER && !(flags_gun_features & GUN_BURST_FIRING) && current_mag)
		to_chat(user, SPAN_DANGER("[current_mag.current_rounds] / [current_mag.max_rounds] ROUNDS REMAINING"))

/obj/item/weapon/gun/revolver/proc/rotate_cylinder(mob/user) //Cylinder moves backward.
	if(current_mag)
		current_mag.chamber_position = current_mag.chamber_position == 1 ? current_mag.max_rounds : current_mag.chamber_position - 1

/obj/item/weapon/gun/revolver/proc/spin_cylinder(mob/user)
	if(current_mag && current_mag.chamber_closed) //We're not spinning while it's open. Could screw up reloading.
		current_mag.chamber_position = rand(1,current_mag.max_rounds)
		to_chat(user, SPAN_NOTICE("You spin the cylinder."))
		playsound(user, cocked_sound, 25, 1)
		russian_roulette = TRUE //Sets to play RR. Resets when the gun is emptied.

/obj/item/weapon/gun/revolver/proc/replace_cylinder(number_to_replace)
	if(current_mag)
		current_mag.chamber_contents = list()
		current_mag.chamber_contents.len = current_mag.max_rounds
		var/i
		for(i = 1 to current_mag.max_rounds) //We want to make sure to populate the cylinder.
			current_mag.chamber_contents[i] = i > number_to_replace ? "empty" : "bullet"
		current_mag.chamber_position = max(1,number_to_replace)

/obj/item/weapon/gun/revolver/proc/empty_cylinder()
	if(current_mag)
		for(var/i = 1 to current_mag.max_rounds)
			current_mag.chamber_contents[i] = "empty"

//The cylinder is always emptied out before a reload takes place.
/obj/item/weapon/gun/revolver/proc/add_to_cylinder(mob/user) //Bullets are added forward.
	if(current_mag)
		//First we're going to try and replace the current bullet.
		if(!current_mag.current_rounds)
			current_mag.chamber_contents[current_mag.chamber_position] = "bullet"
		else //Failing that, we'll try to replace the next bullet in line.
			if((current_mag.chamber_position + 1) > current_mag.max_rounds)
				current_mag.chamber_contents[1] = "bullet"
				current_mag.chamber_position = 1
			else
				current_mag.chamber_contents[current_mag.chamber_position + 1] = "bullet"
				current_mag.chamber_position++
		playsound(user, hand_reload_sound, 25, 1)
		return 1

/obj/item/weapon/gun/revolver/reload(mob/user, obj/item/ammo_magazine/magazine)
	if(flags_gun_features & GUN_BURST_FIRING)
		return

	if(!magazine || !istype(magazine))
		to_chat(user, SPAN_WARNING("That's not gonna work!"))
		return

	if(magazine.current_rounds <= 0)
		to_chat(user, SPAN_WARNING("That [magazine.name] is empty!"))
		return

	if(current_mag)
		if(istype(magazine, /obj/item/ammo_magazine/handful)) //Looks like we're loading via handful.
			if(current_mag.chamber_closed)
				to_chat(user, SPAN_WARNING("You can't load anything when the cylinder is closed!"))
				return
			if(!current_mag.current_rounds && current_mag.caliber == magazine.caliber) //Make sure nothing's loaded and the calibers match.
				replace_ammo(user, magazine) //We are going to replace the ammo just in case.
				current_mag.match_ammo(magazine)
				current_mag.transfer_ammo(magazine,user,1) //Handful can get deleted, so we can't check through it.
				add_to_cylinder(user)
			//If bullets still remain in the gun, we want to check if the actual ammo matches.
			else if(magazine.default_ammo == current_mag.default_ammo) //Ammo datums match, let's see if they are compatible.
				if(current_mag.transfer_ammo(magazine,user,1))
					add_to_cylinder(user)//If the magazine is deleted, we're still fine.
			else
				to_chat(user, "[current_mag] is [current_mag.current_rounds ? "already loaded with some other ammo. Better not mix them up." : "not compatible with that ammo."]") //Not the right kind of ammo.
		else //So if it's not a handful, it's an actual speedloader.
			if(current_mag.gun_type == magazine.gun_type) //Has to be the same gun type.
				if(current_mag.chamber_closed) // If the chamber is closed unload it
					unload(user)
				if(current_mag.transfer_ammo(magazine,user,magazine.current_rounds))//Make sure we're successful.
					replace_ammo(user, magazine) //We want to replace the ammo ahead of time, but not necessary here.
					current_mag.match_ammo(magazine)
					replace_cylinder(current_mag.current_rounds)
					playsound(user, reload_sound, 25, 1) // Reloading via speedloader.
					if(!current_mag.chamber_closed) // If the chamber is open, we close it
						unload(user)
			else
				to_chat(user, SPAN_WARNING("\The [magazine] doesn't fit!"))

/obj/item/weapon/gun/revolver/unload(mob/user)
	if(flags_gun_features & GUN_BURST_FIRING)
		return

	if(current_mag)
		if(current_mag.chamber_closed) //If it's actually closed.
			to_chat(user, SPAN_NOTICE("You clear the cylinder of [src]."))
			empty_cylinder()
			current_mag.create_handful(user)
			current_mag.chamber_closed = !current_mag.chamber_closed
			russian_roulette = FALSE //Resets the RR variable.
			playsound(src, chamber_close_sound, 25, 1)
		else
			current_mag.chamber_closed = !current_mag.chamber_closed
			playsound(src, unload_sound, 25, 1)
		update_icon()
	return

/obj/item/weapon/gun/revolver/able_to_fire(mob/user)
	. = ..()
	if(. && istype(user) && current_mag && !current_mag.chamber_closed)
		to_chat(user, SPAN_WARNING("Close the cylinder!"))
		playsound(user, pick(cylinder_click), 25, 1, 5)
		return 0

/obj/item/weapon/gun/revolver/ready_in_chamber()
	if(current_mag)
		if(current_mag.current_rounds > 0)
			if(current_mag.chamber_contents[current_mag.chamber_position] == "bullet")
				in_chamber = create_bullet(ammo, initial(name))
				apply_traits(in_chamber)
				return in_chamber
		else if(current_mag.chamber_closed)
			unload(null)

/obj/item/weapon/gun/revolver/load_into_chamber(mob/user)
	if(ready_in_chamber())
		return in_chamber
	rotate_cylinder() //If we fail to return to chamber the round, we just move the firing pin some.

/obj/item/weapon/gun/revolver/reload_into_chamber(mob/user)
	in_chamber = null
	if(current_mag)
		if(current_mag.current_rounds > 0)
			current_mag.current_rounds-- // Subtract the round from the mag only after firing is confirmed
		current_mag.chamber_contents[current_mag.chamber_position] = "blank" //We shot the bullet.
		rotate_cylinder()
		return 1

/obj/item/weapon/gun/revolver/delete_bullet(obj/projectile/projectile_to_fire, refund = 0)
	qdel(projectile_to_fire)
	if(refund && current_mag)
		current_mag.current_rounds++
	return TRUE

// FLUFF
/obj/item/weapon/gun/revolver/unique_action(mob/user)
	spin_cylinder(user)

/obj/item/weapon/gun/revolver/proc/revolver_basic_spin(mob/living/carbon/human/user, direction = 1, obj/item/weapon/gun/revolver/double)
	set waitfor = 0
	playsound(user, spin_sound, 25, 1)
	if(double)
		user.visible_message("[user] deftly flicks and spins [src] and [double]!", SPAN_NOTICE("You flick and spin [src] and [double]!"),  null, 3)
		animation_wrist_flick(double, 1)
	else
		user.visible_message("[user] deftly flicks and spins [src]!",SPAN_NOTICE("You flick and spin [src]!"),  null, 3)

	animation_wrist_flick(src, direction)
	sleep(3)
	if(loc && user)
		playsound(user, thud_sound, 25, 1)

/obj/item/weapon/gun/revolver/proc/revolver_throw_catch(mob/living/carbon/human/user)
	set waitfor = 0
	user.visible_message("[user] deftly flicks [src] and tosses it into the air!", SPAN_NOTICE("You flick and toss [src] into the air!"), null, 3)
	var/img_layer = MOB_LAYER+0.1
	var/image/trick = image(icon,user,icon_state,img_layer)
	switch(pick(1,2))
		if(1)
			animation_toss_snatch(trick)
		if(2)
			animation_toss_flick(trick, pick(1,-1))

	invisibility = 100
	var/list/client/displayed_for = list()
	for(var/mob/M as anything in viewers(user))
		var/client/C = M.client
		if(C)
			C.images += trick
			displayed_for += C

	sleep(6) // BOO

	for(var/client/C in displayed_for)
		C.images -= trick
	trick = null
	invisibility = 0

	if(loc && user)
		playsound(user, thud_sound, 25, 1)
		if(user.get_inactive_hand())
			user.visible_message("[user] catches [src] with the same hand!", SPAN_NOTICE("You catch [src] as it spins in to your hand!"), null, 3)
		else
			user.visible_message("[user] catches [src] with \his other hand!", SPAN_NOTICE("You snatch [src] with your other hand! Awesome!"), null, 3)
			user.temp_drop_inv_item(src)
			user.put_in_inactive_hand(src)
			user.swap_hand()
			user.update_inv_l_hand(0)
			user.update_inv_r_hand()

/obj/item/weapon/gun/revolver/proc/revolver_trick(mob/living/carbon/human/user)
	if(world.time < (recent_trick + trick_delay) )
		return //Don't spam it.
	if(!istype(user))
		return //Not human.
	var/chance = -5
	chance = user.health < 6 ? 0 : user.health - 5

	//Pain is largely ignored, since it deals its own effects on the mob. We're just concerned with health.
	//And this proc will only deal with humans for now.

	recent_trick = world.time //Turn on the delay for the next trick.
	var/obj/item/weapon/gun/revolver/double = user.get_inactive_hand()
	if(prob(chance))
		switch(rand(1,8))
			if(1)
				revolver_basic_spin(user, -1)
			if(2)
				revolver_basic_spin(user, 1)
			if(3)
				revolver_throw_catch(user)
			if(4)
				revolver_basic_spin(user, 1)
			if(5)
				revolver_basic_spin(user, 1)
			if(6)
				var/arguments[] = istype(double) ? list(user, 1, double) : list(user, -1)
				revolver_basic_spin(arglist(arguments))
			if(7)
				var/arguments[] = istype(double) ? list(user, -1, double) : list(user, 1)
				revolver_basic_spin(arglist(arguments))
			if(8)
				if(istype(double))
					spawn(0)
						double.revolver_throw_catch(user)
					revolver_throw_catch(user)
				else
					revolver_throw_catch(user)
		return TRUE
	else
		user.visible_message(SPAN_INFO("<b>[user]</b> fumbles with [src] like a huge idiot!"), null, null, 3)
		to_chat(user, SPAN_WARNING("You fumble with [src] like an idiot... Uncool."))
		return FALSE
