/obj/item/weapon/gun/shotgun/pump/m37a
	name = "\improper M37A2 pump shotgun"
	desc = "An Armat Battlefield Systems modern take on an all-time classic, combining close range firepower with long-term reliability. Requires a pump, which is a Unique Action."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/USCM/shotguns.dmi'
	icon_state = "m37a"
	item_state = "m37a"
	current_mag = /obj/item/ammo_magazine/internal/shotgun
	attachable_allowed = list(
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonet/upp,
		/obj/item/attachable/bayonet/co2,
		/obj/item/attachable/bayonet/antique,
		/obj/item/attachable/bayonet/wy,
		/obj/item/attachable/bayonet/custom,
		/obj/item/attachable/bayonet/custom/red,
		/obj/item/attachable/bayonet/custom/blue,
		/obj/item/attachable/bayonet/custom/black,
		/obj/item/attachable/bayonet/tanto,
		/obj/item/attachable/bayonet/tanto/blue,
		/obj/item/attachable/bayonet/rmc_replica,
		/obj/item/attachable/bayonet/rmc,
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/angledgrip,
		/obj/item/attachable/flashlight/grip,
		/obj/item/attachable/gyro,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/compensator,
		/obj/item/attachable/shotgun_choke,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/attached_gun/extinguisher,
		/obj/item/attachable/stock/synth/collapsible,
	)

/obj/item/weapon/gun/shotgun/pump/dual_tube
	name = "generic dual-tube pump shotgun"
	desc = "A twenty-round pump action shotgun with dual internal tube magazines. You can switch the active internal magazine by toggling the shotgun tube."
	current_mag = /obj/item/ammo_magazine/internal/shotgun
	var/obj/item/ammo_magazine/internal/shotgun/primary_tube
	var/obj/item/ammo_magazine/internal/shotgun/secondary_tube
	var/chamber_swap = FALSE

/obj/item/weapon/gun/shotgun/pump/dual_tube/Initialize(mapload, spawn_empty)
	LAZYADD(actions_types, /datum/action/item_action/dual_tube/toggle_chamber_swap)
	. = ..()
	primary_tube = current_mag
	secondary_tube = new current_mag.type(src, spawn_empty ? TRUE : FALSE)
	current_mag = secondary_tube
	replace_tube(current_mag.current_rounds)

/obj/item/weapon/gun/shotgun/pump/dual_tube/get_examine_text(mob/user)
	. = ..()
	var/has_chamber_swap = locate(/datum/action/item_action/dual_tube/toggle_chamber_swap) in actions
	if(has_chamber_swap)
		. += SPAN_NOTICE("Use <b>toggle firemode</b> to toggle chamber-swapping.</b>")

/obj/item/weapon/gun/shotgun/pump/dual_tube/do_toggle_firemode(datum/source, datum/keybinding, new_firemode)
	var/datum/action/item_action/dual_tube/toggle_chamber_swap/chamber_swap_ability = locate() in actions
	if(chamber_swap_ability)
		//do_toggle_firemode is a signal handler. needs async to stop sleep override warnings
		INVOKE_ASYNC(chamber_swap_ability, TYPE_PROC_REF(/datum/action/item_action/dual_tube/toggle_chamber_swap, action_activate))
		return

	. = ..()

/obj/item/weapon/gun/shotgun/pump/dual_tube/Destroy()
	QDEL_NULL(primary_tube)
	QDEL_NULL(secondary_tube)
	. = ..()

/obj/item/weapon/gun/shotgun/pump/dual_tube/proc/swap_tube(mob/user)
	if(!ishuman(user) || user.is_mob_incapacitated())
		return FALSE
	var/obj/item/weapon/gun/shotgun/pump/dual_tube/shotgun = user.get_active_hand()
	if(shotgun != src)
		to_chat(user, SPAN_WARNING("You must be holding \the [src] in your active hand to switch the active internal magazine!")) // currently this warning can't show up, but this is incase you get an action button or similar for it instead of current implementation
		return
	if(!current_mag)
		return

	///The currently chambered shell in the gun before the tube gets swapped.
	var/obj/item/ammo_magazine/chambered_shell
	if(chamber_swap && in_chamber)
		if(current_mag.current_rounds == current_mag.max_rounds)
			to_chat(user, SPAN_WARNING("The current tube is overloaded! [src] spits out the chambered shell!"))
			empty_chamber(user, TRUE, TRUE)
		else
			chambered_shell = retrieve_shell(ammo.type)
			in_chamber = null

	if(chambered_shell)
		add_to_tube(user, chambered_shell.default_ammo)
		current_mag.current_rounds++

	if(current_mag == primary_tube)
		current_mag = secondary_tube
	else
		current_mag = primary_tube

	//Chamber swaps require the gun to be pumped afterwards. We'll force the gun to be pumped as it would be pretty annoying otherwise.
	if(!in_chamber && chamber_swap)
		ready_shotgun_tube()
		if(in_chamber)
			pumped = TRUE

	to_chat(user, SPAN_NOTICE("[icon2html(src, user)] You switch \the [src]'s active magazine to the [(current_mag == primary_tube) ? "<b>first</b>" : "<b>second</b>"] magazine."))
	playsound(src, 'sound/machines/switch.ogg', 15, TRUE)
	return TRUE

/obj/item/weapon/gun/shotgun/pump/dual_tube/verb/toggle_tube()
	set category = "Weapons"
	set name = "Toggle Shotgun Tube"
	set desc = "Toggles which shotgun tube your gun loads from."
	set src = usr.contents

	var/obj/item/weapon/gun/shotgun/pump/dual_tube/shotgun = get_active_firearm(usr)
	if(shotgun == src)
		swap_tube(usr)

//item action for handling switching chambered shells when swapping tubes.
/datum/action/item_action/dual_tube/toggle_chamber_swap/New(Target, obj/item/holder)
	. = ..()
	name = "Toggle Chamber Swap"
	action_icon_state = "chamber_swap"
	button.name = name
	button.overlays.Cut()
	button.overlays += image('icons/mob/hud/actions.dmi', button, action_icon_state)

/datum/action/item_action/dual_tube/toggle_chamber_swap/action_activate()
	. = ..()
	var/obj/item/weapon/gun/shotgun/pump/dual_tube/holder_gun = holder_item
	holder_gun.chamber_swap = !holder_gun.chamber_swap

	playsound(owner, 'sound/weapons/handling/gun_burst_toggle.ogg', 15, 1)

	if(holder_gun.chamber_swap)
		to_chat(owner, SPAN_NOTICE("[icon2html(holder_gun, owner)] You will <b>start swapping</b> the chambered shell with the other tube. <b>Your current tube must be underloaded or it will forcefully eject the shell out of the chamber.</b>"))
		button.icon_state = "template_on"
	else
		to_chat(owner, SPAN_NOTICE("[icon2html(holder_gun, owner)] You will <b>stop swapping</b> the chambered shell with the other tube."))
		button.icon_state = "template"

	button.overlays.Cut()
	button.overlays += image('icons/mob/hud/actions.dmi', button, action_icon_state)
