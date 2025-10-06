//===================THE XM88===================\\

#define FLOATING_PENETRATION_TIER_0 0
#define FLOATING_PENETRATION_TIER_1 1
#define FLOATING_PENETRATION_TIER_2 2
#define FLOATING_PENETRATION_TIER_3 3
#define FLOATING_PENETRATION_TIER_4 4

/obj/item/weapon/gun/lever_action/xm88
	name = "\improper XM88 heavy rifle"
	desc = "An experimental man-portable anti-material rifle chambered in .458 SOCOM. It must be manually chambered for every shot.\nIt has a special property - when you obtain multiple direct hits in a row, its armor penetration and damage will increase."
	desc_lore = "Originally developed by ARMAT Battlefield Systems for the government of the state of Greater Brazil for use in the Favela Wars (2161 - Ongoing) against mechanized infantry. The platform features an onboard computerized targeting system, sensor array, and an electronic autoloader; these features work in tandem to reduce and render inert armor on the users target with successive hits. The Almayer was issued a small amount of XM88s while preparing for Operation Swamp Hopper with the USS Nan-Shan."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/USCM/marksman_rifles.dmi' // overridden with camos anyways
	icon_state = "boomslang"
	item_state = "boomslang"
	fire_sound = 'sound/weapons/gun_boomslang_fire.ogg'
	reload_sound = 'sound/weapons/handling/gun_boomslang_reload.ogg'
	lever_sound = 'sound/weapons/handling/gun_boomslang_lever.ogg'
	lever_super_sound = 'sound/weapons/handling/gun_lever_action_superload.ogg'
	lever_hitsound = 'sound/weapons/handling/gun_boomslang_hitsound.ogg'
	flags_equip_slot = SLOT_BACK
	map_specific_decoration = TRUE
	flags_gun_features = GUN_CAN_POINTBLANK|GUN_INTERNAL_MAG|GUN_AMMO_COUNTER
	levering_sprite = null
	flags_gun_lever_action = USES_STREAKS
	lever_name = "chambering button"
	lever_message = "<i>You press the chambering button.<i>"
	current_mag = /obj/item/ammo_magazine/internal/xm88
	default_caliber = ".458"
	hit_buff_reset_cooldown = 2 SECONDS //how much time after a direct hit until streaks reset
	var/floating_penetration = FLOATING_PENETRATION_TIER_0 //holder var
	var/floating_penetration_upper_limit = FLOATING_PENETRATION_TIER_4
	var/direct_hit_sound = 'sound/weapons/gun_xm88_directhit_low.ogg'
	attachable_allowed = list(
		/obj/item/attachable/bayonet/upp, // Barrel
		/obj/item/attachable/bayonet,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/suppressor,
		/obj/item/attachable/compensator,
		/obj/item/attachable/reddot, // Rail
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/scope/mini/xm88,
		/obj/item/attachable/gyro, // Under
		/obj/item/attachable/lasersight,
		/obj/item/attachable/stock/xm88, // Stock
		)

/obj/item/weapon/gun/lever_action/xm88/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_2)
	lever_delay = FIRE_DELAY_TIER_3
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_5
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_10
	scatter = SCATTER_AMOUNT_TIER_8
	burst_scatter_mult = 0
	scatter_unwielded = SCATTER_AMOUNT_TIER_2
	damage_mult = BASE_BULLET_DAMAGE_MULT
	recoil = RECOIL_AMOUNT_TIER_3
	recoil_unwielded = RECOIL_AMOUNT_TIER_1

/obj/item/weapon/gun/lever_action/xm88/wield(mob/user)
	. = ..()
	if(.)
		RegisterSignal(user, COMSIG_MOB_FIRED_GUN, PROC_REF(update_fired_mouse_pointer))

/obj/item/weapon/gun/lever_action/xm88/unwield(mob/user)
	. = ..()
	UnregisterSignal(user, COMSIG_MOB_FIRED_GUN)

/obj/item/weapon/gun/lever_action/xm88/proc/update_fired_mouse_pointer(mob/user)
	SIGNAL_HANDLER

	if(!user.client?.prefs?.custom_cursors)
		return

	user.client.mouse_pointer_icon = get_fired_mouse_pointer(floating_penetration)
	addtimer(CALLBACK(src, PROC_REF(finish_update_fired_mouse_pointer), user), 0.4 SECONDS, TIMER_UNIQUE|TIMER_OVERRIDE|TIMER_CLIENT_TIME)

/obj/item/weapon/gun/lever_action/xm88/proc/finish_update_fired_mouse_pointer(mob/user)
	if(flags_item & WIELDED)
		update_mouse_pointer(user, TRUE)

/obj/item/weapon/gun/lever_action/xm88/update_mouse_pointer(mob/user, new_cursor)
	if(!user.client?.prefs?.custom_cursors)
		return

	user.client.mouse_pointer_icon = new_cursor ? get_scaling_mouse_pointer(floating_penetration) : initial(user.client.mouse_pointer_icon)

/obj/item/weapon/gun/lever_action/xm88/proc/get_scaling_mouse_pointer(level)
	switch(level)
		if(FLOATING_PENETRATION_TIER_0)
			return 'icons/effects/mouse_pointer/xm88/xm88-0.dmi'
		if(FLOATING_PENETRATION_TIER_1)
			return 'icons/effects/mouse_pointer/xm88/xm88-1.dmi'
		if(FLOATING_PENETRATION_TIER_2)
			return 'icons/effects/mouse_pointer/xm88/xm88-2.dmi'
		if(FLOATING_PENETRATION_TIER_3)
			return 'icons/effects/mouse_pointer/xm88/xm88-3.dmi'
		if(FLOATING_PENETRATION_TIER_4)
			return 'icons/effects/mouse_pointer/xm88/xm88-4.dmi'
		else
			return 'icons/effects/mouse_pointer/xm88/xm88-0.dmi'

/obj/item/weapon/gun/lever_action/xm88/proc/get_fired_mouse_pointer(level)
	switch(level)
		if(FLOATING_PENETRATION_TIER_0)
			return 'icons/effects/mouse_pointer/xm88/xm88-fired-0.dmi'
		if(FLOATING_PENETRATION_TIER_1)
			return 'icons/effects/mouse_pointer/xm88/xm88-fired-1.dmi'
		if(FLOATING_PENETRATION_TIER_2)
			return 'icons/effects/mouse_pointer/xm88/xm88-fired-2.dmi'
		if(FLOATING_PENETRATION_TIER_3)
			return 'icons/effects/mouse_pointer/xm88/xm88-fired-3.dmi'
		if(FLOATING_PENETRATION_TIER_4)
			return 'icons/effects/mouse_pointer/xm88/xm88-fired-4.dmi'
		else
			return 'icons/effects/mouse_pointer/xm88/xm88-fired-0.dmi'

/obj/item/weapon/gun/lever_action/xm88/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 27, "muzzle_y" = 17, "rail_x" = 11, "rail_y" = 21, "under_x" = 22, "under_y" = 13, "stock_x" = 12, "stock_y" = 15)

/obj/item/weapon/gun/lever_action/xm88/apply_hit_buff()
	lever_sound = lever_super_sound
	lever_message = "<b><i>You quickly press the [lever_name]!<i><b>"
	last_fired = world.time - buff_fire_reduc //to shoot the next round faster
	set_fire_delay(FIRE_DELAY_TIER_3)
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_4

	if(floating_penetration < floating_penetration_upper_limit)
		floating_penetration++

	for(var/slot in attachments)
		var/obj/item/attachable/AM = attachments[slot]
		if(AM && (AM.damage_mod || AM.delay_mod))
			damage_mult += AM.damage_mod
			modify_fire_delay(AM.delay_mod)
	wield_delay = 0 //for one-handed levering

/obj/item/weapon/gun/lever_action/xm88/Fire(atom/target, mob/living/user, params, reflex, dual_wield)
	if(!able_to_fire(user) || !target) //checks here since we don't want to fuck up applying the increase
		return NONE
	if(floating_penetration && in_chamber) //has to go before actual firing
		var/obj/projectile/P = in_chamber
		switch(floating_penetration)
			if(FLOATING_PENETRATION_TIER_1)
				P.ammo = GLOB.ammo_list[/datum/ammo/bullet/caliber_11_63x40mmRB/pen20]
				direct_hit_sound = "sound/weapons/gun_xm88_directhit_low.ogg"
			if(FLOATING_PENETRATION_TIER_2)
				P.ammo = GLOB.ammo_list[/datum/ammo/bullet/caliber_11_63x40mmRB/pen30]
				direct_hit_sound = "sound/weapons/gun_xm88_directhit_medium.ogg"
			if(FLOATING_PENETRATION_TIER_3)
				P.ammo = GLOB.ammo_list[/datum/ammo/bullet/caliber_11_63x40mmRB/pen40]
				direct_hit_sound = "sound/weapons/gun_xm88_directhit_medium.ogg"
			if(FLOATING_PENETRATION_TIER_4)
				P.ammo = GLOB.ammo_list[/datum/ammo/bullet/caliber_11_63x40mmRB/pen50]
				direct_hit_sound = "sound/weapons/gun_xm88_directhit_high.ogg"
	return ..()

/obj/item/weapon/gun/lever_action/xm88/unload(mob/user)
	if(levered)
		to_chat(user, SPAN_WARNING("You open \the [src]'s breech and take out a round."))
		levered = FALSE
	return empty_chamber(user)

/obj/item/weapon/gun/lever_action/xm88/reset_hit_buff(mob/user, one_hand_lever)
	if(!(flags_gun_lever_action & USES_STREAKS))
		return
	if(streak > 0)
		to_chat(user, SPAN_WARNING("[src] beeps as it loses its targeting data, and returns to normal firing procedures."))
	streak = 0
	lever_sound = initial(lever_sound)
	lever_message = initial(lever_message)
	wield_delay = initial(wield_delay)
	cur_onehand_chance = initial(cur_onehand_chance)
	direct_hit_sound = "sound/weapons/gun_xm88_directhit_low.ogg"
	if(in_chamber)
		var/obj/projectile/P = in_chamber
		P.ammo = GLOB.ammo_list[/datum/ammo/bullet/caliber_11_63x40mmRB]
	floating_penetration = FLOATING_PENETRATION_TIER_0
	//these are init configs and so cannot be initial()
	set_fire_delay(FIRE_DELAY_TIER_1 + FIRE_DELAY_TIER_12)
	lever_delay = FIRE_DELAY_TIER_3
	damage_mult = BASE_BULLET_DAMAGE_MULT
	recalculate_attachment_bonuses() //stock wield delay
	if(one_hand_lever)
		addtimer(VARSET_CALLBACK(src, cur_onehand_chance, reset_onehand_chance), 4 SECONDS, TIMER_OVERRIDE|TIMER_UNIQUE)

/obj/item/weapon/gun/lever_action/xm88/direct_hit_buff(mob/user, mob/target, one_hand_lever = FALSE)
	. = ..()
	playsound(target, direct_hit_sound, 75)

#undef FLOATING_PENETRATION_TIER_0
#undef FLOATING_PENETRATION_TIER_1
#undef FLOATING_PENETRATION_TIER_2
#undef FLOATING_PENETRATION_TIER_3
#undef FLOATING_PENETRATION_TIER_4
