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
	var/list/valid_firearms = list(
		// USCM Primaries
		/obj/item/weapon/gun/rifle/m41a,
		/obj/item/weapon/gun/shotgun/pump,
		/obj/item/weapon/gun/rifle/m4ra,
		/obj/item/weapon/gun/smg/m39,
		// USCM Restricted Weapons
		/obj/item/weapon/gun/shotgun/double/mou53,
		/obj/item/weapon/gun/lever_action/xm88,
		/obj/item/weapon/gun/rifle/lmg,
		/obj/item/weapon/gun/rifle/m41aMK1,
		/obj/item/weapon/gun/flamer/m240,
		/obj/item/weapon/gun/launcher/grenade/m81/m79,
		/obj/item/weapon/gun/rifle/xm51,
		// USCM Restricted Mounted Weapons
		/obj/structure/machinery/m56d_hmg,
		/obj/item/device/m2c_gun
	)


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

// this is important, since it also sets what type of rack were going to show the player if its empty
/obj/structure/gun_rack/attackby(obj/item/O, mob/user)
	if(O.type == current_storage_type && contents.len < max_stored)
		user.drop_inv_item_to_loc(O, src)
		contents += O
		update_icon()
		return
	if(O.type == current_storage_type && contents.len >= max_stored)
		to_chat(user, SPAN_WARNING("[src] is full."))
		return
	if(current_storage_type == "empty")
		for(var/a in valid_firearms)
			if (O.type == a)
				user.drop_inv_item_to_loc(O, src)
				current_storage_type = O.type
				contents += O
				update_icon()
				src.name = src.name + " ([pullLastExtensionFromTypePath(current_storage_type)])"
				return
		to_chat(user, SPAN_WARNING("[O.name] doesn't seem compatible with the mounting apartus..."))
		return

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

/*
	if(!contents.len)
		to_chat(user, SPAN_WARNING("[src] is empty."))
		return

	var/obj/stored_obj = contents[contents.len]
	contents -= stored_obj
	user.put_in_hands(stored_obj)
	to_chat(user, SPAN_NOTICE("You grab [stored_obj] from [src]."))
	playsound(src, "gunequip", 25, TRUE)
	update_icon()
*/

/obj/structure/gun_rack/update_icon()
	if(current_storage_type != "empty")
		icon_state = pullLastExtensionFromTypePath(current_storage_type) + "_" + "[contents.len]"
	else
		icon_state = "empty"

/proc/pullLastExtensionFromTypePath(current_storage_type_arg)
	var/stringedPath = "[current_storage_type_arg]"
	return copytext(stringedPath,(findlasttext(stringedPath,"/") + 1),(length(stringedPath) + 1))
