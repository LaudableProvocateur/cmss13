/obj/structure/gun_rack
	name = "gun rack"
	desc = "ARMAT-produced gun rack for storage of long guns, although the adaptable mounting apartus are quite limited on what can be stored."
	icon = 'icons/obj/structures/gun_racks.dmi'
	icon_state = "empty"
	density = TRUE
	var/allowed_type
	var/populate_type
	var/max_stored = 5
	var/initial_stored = 5
	var/current_storage_type = "empty"

/obj/structure/gun_rack/Initialize()
	. = ..()
	if(!allowed_type)
		icon_state = "empty"
		return

	if(initial_stored)
		var/i = 0
		while(i < initial_stored)
			contents += new populate_type(src)
			i++
	update_icon()

/obj/structure/gun_rack/attackby(obj/item/O, mob/user)
	if(findtext("[O.type]","obj/item/weapon/gun/") != 0)
		if(current_storage_type == "empty" && pullIfGunCanBeStoredOnRack(O))
			user.drop_inv_item_to_loc(O, src)
			current_storage_type = O.type
			contents += O
			src.name = src.name + " ([pullGunAbbreviatedName(current_storage_type)])"
			update_icon()
			return
		if(O.type == current_storage_type)
			if(contents.len >= max_stored)
				to_chat(user, SPAN_WARNING("[src] is full."))
				return
			user.drop_inv_item_to_loc(O, src)
			contents += O
			update_icon()
			return
	to_chat(user, SPAN_WARNING("[O.name] doesn't seem compatible with the mounting apartus..."))

/obj/structure/gun_rack/attack_hand(mob/living/user)
	if(current_storage_type != "empty")
		if(contents.len == 1)
			src.name = "gun rack"
			current_storage_type = "empty"
		var/obj/stored_obj = contents[contents.len]
		contents -= stored_obj
		user.put_in_hands(stored_obj)
		to_chat(user, SPAN_NOTICE("You grab [stored_obj] from [src]."))
		playsound(src, "gunequip", 25, TRUE)
		update_icon()
		return
	to_chat(user, SPAN_WARNING("[src] is empty."))

/obj/structure/gun_rack/update_icon()
	if(current_storage_type != "empty")
		icon_state = pullGunAbbreviatedName(current_storage_type) + "_" + "[contents.len]"
		return
	icon_state = "empty"

/proc/pullGunAbbreviatedName(obj/item/weapon/gun/current_storage_type_arg)
	return current_storage_type_arg.abbreviatedName

/proc/pullIfGunCanBeStoredOnRack(obj/item/weapon/gun/argumentHere)
	return argumentHere.can_be_stored_on_rack
