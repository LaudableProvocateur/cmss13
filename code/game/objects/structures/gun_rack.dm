/obj/structure/gun_rack
	name = "Gun Rack"
	desc = "ARMAT-produced gun rack for storage of long guns. While initial model was supposed to be extremely modifiable, USCM comissioned racks with fixed slots which only fit M41A rifles. Some say they were cheaper, and some say the main reason was marine's ability to easily break anything more complex than a tungsten ball."
	icon = 'icons/obj/structures/gun_racks.dmi'
	icon_state = "m41a"
	density = TRUE
	var/allowed_type
	var/populate_type
	var/max_stored = 5
	var/initial_stored = 5

/obj/structure/gun_rack/Initialize()
	. = ..()
	if(!allowed_type)
		icon_state = "m41a_0"
		return

	if(initial_stored)
		var/i = 0
		while(i < initial_stored)
			contents += new populate_type(src)
			i++
	update_icon()

/obj/structure/gun_rack/attackby(obj/item/O, mob/user)
	if(istype(O, allowed_type) && contents.len < max_stored)
		user.drop_inv_item_to_loc(O, src)
		contents += O
		update_icon()

/obj/structure/gun_rack/attack_hand(mob/living/user)
	if(!contents.len)
		to_chat(user, SPAN_WARNING("[src] is empty."))
		return

	var/obj/stored_obj = contents[contents.len]
	contents -= stored_obj
	user.put_in_hands(stored_obj)
	to_chat(user, SPAN_NOTICE("You grab [stored_obj] from [src]."))
	playsound(src, "gunequip", 25, TRUE)
	update_icon()

/obj/structure/gun_rack/update_icon()
	if(contents.len)
		icon_state = "[initial(icon_state)]_[contents.len]"
	else
		icon_state = "[initial(icon_state)]_0"

/obj/structure/gun_rack/m41a
	name = "M41A Pulse Rifle MK2 Rack"
	allowed_type = /obj/item/weapon/gun/rifle/m41a
	populate_type = /obj/item/weapon/gun/rifle/m41a

/obj/structure/gun_rack/m41a/unloaded
	populate_type = /obj/item/weapon/gun/rifle/m41a/unloaded

/obj/structure/gun_rack/m41a/empty
	initial_stored = 0

/obj/structure/gun_rack/type71
	name = "Type 71 Pulse Rifle Rack"
	icon_state = "type71"
	desc = "Some off-branded gun rack. Per SOF and UPPA regulations, weapons should be stored in secure safes and only given out when necessary. Of course, most (but not all!) units overlook this regulation, only storing their firearms in safes when inspection arrives."
	max_stored = 6
	initial_stored = 6
	allowed_type = /obj/item/weapon/gun/rifle/type71
	populate_type = /obj/item/weapon/gun/rifle/type71

/obj/structure/gun_rack/type71/unloaded
	populate_type = /obj/item/weapon/gun/rifle/type71/unloaded

/obj/structure/gun_rack/type71/empty
	initial_stored = 0

/obj/structure/gun_rack/flamer
	name = "M240A1 Incinerator Rack"
	icon_state = "m240"
	desc = "ARMAT-produced gun rack for storage of long guns. While initial model was supposed to be extremely modifiable, USCM comissioned racks with fixed slots which only fit M240A1 incinerators. Some say they were cheaper, and some say the main reason was marine's ability to easily break anything more complex than a tungsten ball."
	max_stored = 2
	initial_stored = 2
	allowed_type = /obj/item/weapon/gun/flamer/m240
	populate_type = /obj/item/weapon/gun/flamer/m240

/obj/structure/gun_rack/flamer/unloaded
	populate_type = /obj/item/weapon/gun/flamer/m240/unloaded

/obj/structure/gun_rack/flamer/empty
	initial_stored = 0

/obj/structure/gun_rack/mk221
	name = "MK221 Shotgun Rack"
	icon_state = "mk221"
	desc = "ARMAT-produced gun rack for storage of long guns. While initial model was supposed to be extremely modifiable, USCM comissioned racks with fixed slots which only fit M120 tactical shotguns. Some say they were cheaper, and some say the main reason was marine's ability to easily break anything more complex than a tungsten ball."
	max_stored = 2
	initial_stored = 2
	allowed_type = /obj/item/weapon/gun/shotgun/combat
	populate_type = /obj/item/weapon/gun/shotgun/combat

/obj/structure/gun_rack/mk221/empty
	initial_stored = 0
