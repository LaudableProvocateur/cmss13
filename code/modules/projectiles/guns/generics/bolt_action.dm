/obj/item/weapon/gun/bolt_action
	name = "\improper Basira-Armstrong bolt-action hunting rifle"
	desc = "Named after its eccentric designers, the Basira-Armstrong is a cheap but reliable civilian bolt-action rifle frequently found in the outer colonies. Despite its legally-mandated limited magazine capacity, its light weight and legendary accuracy makes it popular among hunters and competitive shooters."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/colony/marksman_rifles.dmi'
	icon_state = "boltaction"
	item_state = "hunting"
	item_icons = list(
		WEAR_BACK = 'icons/mob/humans/onmob/clothing/back/guns_by_type/marksman_rifles.dmi',
		WEAR_J_STORE = 'icons/mob/humans/onmob/clothing/suit_storage/guns_by_type/marksman_rifles.dmi',
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/weapons/guns/marksman_rifles_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/weapons/guns/marksman_rifles_righthand.dmi'
	)
	mouse_pointer = 'icons/effects/mouse_pointer/sniper_mouse.dmi'

	pixel_x = -6
	hud_offset = -6

	flags_equip_slot = SLOT_BACK
	w_class = SIZE_LARGE
	force = 5
	flags_gun_features = GUN_CAN_POINTBLANK|GUN_WIELDED_FIRING_ONLY
	gun_category = GUN_CATEGORY_RIFLE
	aim_slowdown = SLOWDOWN_ADS_RIFLE
	wield_delay = WIELD_DELAY_NORMAL
	current_mag = /obj/item/ammo_magazine/rifle/boltaction
	attachable_allowed = list(
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonet/co2,
		/obj/item/attachable/bayonet/upp,
		/obj/item/attachable/bayonet/antique,
		/obj/item/attachable/bayonet/custom,
		/obj/item/attachable/bayonet/wy,
		/obj/item/attachable/bayonet/custom/red,
		/obj/item/attachable/bayonet/custom/blue,
		/obj/item/attachable/bayonet/custom/black,
		/obj/item/attachable/bayonet/tanto,
		/obj/item/attachable/bayonet/tanto/blue,
		/obj/item/attachable/bayonet/rmc_replica,
		/obj/item/attachable/bayonet/rmc,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/scope/mini/hunting,
	)
	starting_attachment_types = list(/obj/item/attachable/scope/mini/hunting)
	aim_slowdown = SLOWDOWN_ADS_RIFLE
	wield_delay = WIELD_DELAY_NORMAL
	civilian_usable_override = TRUE
	unacidable = TRUE // Like other 1-of-a-kind weapons, it can't be gotten rid of that fast
	explo_proof = TRUE

	cocked_sound = 'sound/weapons/gun_cocked2.ogg'
	fire_sound = 'sound/weapons/gun_boltaction.ogg'
	var/open_bolt_sound ='sound/weapons/handling/gun_boltaction_open.ogg'
	var/close_bolt_sound ='sound/weapons/handling/gun_boltaction_close.ogg'

	var/bolted = TRUE // FALSE IS OPEN, TRUE IS CLOSE
	var/bolt_delay
	var/recent_cycle //world.time to see when they last bolted it.
	/// If this gun should change icon states when the bolt is open
	var/has_openbolt_icon = TRUE

/obj/item/weapon/gun/bolt_action/basira_armstrong/Initialize(mapload, spawn_empty)
	. = ..()
	if(current_mag && current_mag.current_rounds > 0)
		load_into_chamber()
	bolt_delay = FIRE_DELAY_TIER_5

/obj/item/weapon/gun/bolt_action/basira_armstrong/update_icon() // needed for bolt action sprites
	..()

	var/new_icon_state = icon_state
	if(!bolted && has_openbolt_icon)
		new_icon_state += "_o"

	icon_state = new_icon_state

/obj/item/weapon/gun/bolt_action/basira_armstrong/unique_action(mob/user)
	if(world.time < (recent_cycle + bolt_delay) )  //Don't spam it.
		to_chat(user, SPAN_DANGER("You can't cycle the bolt again right now."))
		return

	bolted = !bolted

	if(bolted)
		to_chat(user, SPAN_DANGER("You close the bolt of [src]!"))
		playsound(get_turf(src), open_bolt_sound, 15, TRUE, 1)
		ready_in_chamber()
		recent_cycle = world.time
	else
		to_chat(user, SPAN_DANGER("You open the bolt of [src]!"))
		playsound(get_turf(src), close_bolt_sound, 65, TRUE, 1)
		unload_chamber(user)

	update_icon()

/obj/item/weapon/gun/bolt_action/basira_armstrong/able_to_fire(mob/user)
	. = ..()

	if(. && !bolted)
		to_chat(user, SPAN_WARNING("The bolt is still open, you can't fire [src]."))
		return FALSE

/obj/item/weapon/gun/bolt_action/basira_armstrong/load_into_chamber(mob/user)
	return in_chamber

/obj/item/weapon/gun/bolt_action/basira_armstrong/reload_into_chamber(mob/user)
	in_chamber = null
	return TRUE

/obj/item/weapon/gun/bolt_action/basira_armstrong/cock(mob/user)
	return

/obj/item/weapon/gun/bolt_action/basira_armstrong/replace_magazine(mob/user, obj/item/ammo_magazine/magazine) //mostly standard but without the cock-and-load if unchambered.
	user.drop_inv_item_to_loc(magazine, src) //Click!
	current_mag = magazine
	replace_ammo(user,magazine)
	user.visible_message(SPAN_NOTICE("[user] loads [magazine] into [src]!"),
		SPAN_NOTICE("You load [magazine] into [src]!"), null, 3, CHAT_TYPE_COMBAT_ACTION)
	if(reload_sound)
		playsound(user, reload_sound, 25, 1, 5)

