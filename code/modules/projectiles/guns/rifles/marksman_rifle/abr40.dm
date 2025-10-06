/obj/item/weapon/gun/rifle/l42a/abr40
	name = "\improper ABR-40 hunting rifle"
	desc = "The civilian version of the L42A battle rifle. Almost identical and even cross-compatible with L42 magazines, just don't take the stock off."
	desc_lore = "The ABR-40 was created along-side the L42A as a hunting rifle for civilians. Sporting faux wooden furniture and a legally-mandated 12 round magazine, it's still highly accurate and deadly, a favored pick of experienced hunters and retired Marines. However, it's very limited in attachment selection, only being able to fit rail attachments, and the differences in design from the L42 force an awkward pose when attempting to hold it one-handed. Removing the stock is not recommended."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/colony/marksman_rifles.dmi'
	icon_state = "abr40"
	item_state = "abr40"
	current_mag = /obj/item/ammo_magazine/rifle/l42a/abr40
	attachable_allowed = list(
		//Barrel,
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
		/obj/item/attachable/bayonet/co2,
		//Rail,
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/scope/mini/hunting,
		//Stock,
		/obj/item/attachable/stock/carbine,
		/obj/item/attachable/stock/carbine/wood,
		/obj/item/attachable/stock/carbine/wood/tactical,
	)
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_WIELDED_FIRING_ONLY|GUN_AMMO_COUNTER
	wield_delay = WIELD_DELAY_FAST
	starting_attachment_types = list(/obj/item/attachable/stock/carbine/wood, /obj/item/attachable/scope/mini/hunting)
	map_specific_decoration = FALSE
	civilian_usable_override = TRUE

// Identical to the L42 in stats, *except* for extra recoil and scatter that are nulled by keeping the stock on.
/obj/item/weapon/gun/rifle/l42a/abr40/set_gun_config_values()
	..()
	accuracy_mult = (BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_5) - HIT_ACCURACY_MULT_TIER_10
	recoil = RECOIL_AMOUNT_TIER_4
	scatter = (SCATTER_AMOUNT_TIER_8) + SCATTER_AMOUNT_TIER_5


/obj/item/weapon/gun/rifle/l42a/abr40/tactical
	name = "\improper ABR-40 tactical rifle"
	desc = "The civilian version of the L42A battle rifle that is often wielded by Marines. Almost identical and even cross-compatible with L42 magazines, just don't take the stock off. This rifle seems to have unique tacticool blue-black furniture alongside some miscellaneous aftermarket modding."
	desc_lore = "The ABR-40 was created after the striking popularity of the L42 battle rifle as a hunting rifle for civilians, and naturally fell into the hands of many underfunded paramilitary groups and insurrections in turn, due to its smooth and simple handling and cross-compatibility with L42A magazines."
	icon_state = "abr40_tac"
	item_state = "abr40_tac"
	current_mag = /obj/item/ammo_magazine/rifle/l42a/ap
	attachable_allowed = list(
		//Barrel,
		/obj/item/attachable/suppressor,
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
		/obj/item/attachable/bayonet/co2,
		//Under,
		/obj/item/attachable/flashlight/grip,
		//Stock,
		/obj/item/attachable/stock/carbine/wood,
		/obj/item/attachable/stock/carbine/wood/tactical,
	)
	starting_attachment_types = list(/obj/item/attachable/stock/carbine/wood/tactical, /obj/item/attachable/suppressor)
	random_under_chance = 100
	random_spawn_under = list(/obj/item/attachable/flashlight/grip)

/obj/item/weapon/gun/rifle/l42a/abr40/tactical/handle_starting_attachment()
	..()
	var/obj/item/attachable/magnetic_harness/integrated = new(src)
	integrated.flags_attach_features &= ~ATTACH_REMOVABLE
	integrated.hidden = TRUE
	integrated.Attach(src)
	update_attachable(integrated.slot)

/obj/item/weapon/gun/rifle/l42a/abr40/tactical/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_10)
	set_burst_amount(0)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_5
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_4
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_7
	recoil_unwielded = RECOIL_AMOUNT_TIER_4
	damage_falloff_mult = 0
	scatter = SCATTER_AMOUNT_TIER_8
