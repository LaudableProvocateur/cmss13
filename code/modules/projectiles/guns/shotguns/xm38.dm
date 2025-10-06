/obj/item/weapon/gun/shotgun/combat/marsoc
	name = "\improper XM38 tactical shotgun"
	desc = "Way back in 2168, Wey-Yu began testing the MK221. The USCM picked up an early prototype, and later adopted it with a limited military contract. But the USCM Special Operations Forces wasn't satisfied, and iterated on the early prototypes they had access to; eventually, their internal armorers and tinkerers produced the MK210, designated XM38, a lightweight folding shotgun that snaps to the belt. And to boot, it's fully automatic, made of stamped medal, and keeps the UGL. Truly an engineering marvel."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/USCM/shotguns.dmi'
	icon_state = "mk210"
	item_state = "mk210"

	current_mag = /obj/item/ammo_magazine/internal/shotgun/buckshot

	flags_equip_slot = SLOT_WAIST|SLOT_BACK
	flags_gun_features = GUN_CAN_POINTBLANK|GUN_INTERNAL_MAG
	auto_retrieval_slot = WEAR_J_STORE
	start_automatic = TRUE

	starting_attachment_types = list()

/obj/item/weapon/gun/shotgun/combat/marsoc/Initialize(mapload, spawn_empty)
	. = ..()
	if(current_mag && current_mag.current_rounds > 0)
		load_into_chamber()

/obj/item/weapon/gun/shotgun/combat/marsoc/retrieve_to_slot(mob/living/carbon/human/user, retrieval_slot, check_loc, silent)
	if(retrieval_slot == WEAR_J_STORE) //If we are using a magharness...
		if(..(user, WEAR_WAIST, check_loc, silent)) //...first try to put it onto the waist.
			return TRUE
	return ..()

/*obj/item/weapon/gun/shotgun/combat/marsoc/handle_starting_attachment()
	return */ //we keep the UGL

/obj/item/weapon/gun/shotgun/combat/marsoc/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 33, "muzzle_y" = 19,"rail_x" = 10, "rail_y" = 21, "under_x" = 14, "under_y" = 16, "stock_x" = 14, "stock_y" = 16)

/obj/item/weapon/gun/shotgun/combat/marsoc/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_SHOTGUN_DEATHSQUAD)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4
	accuracy_mult_unwielded = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4 - HIT_ACCURACY_MULT_TIER_5
	scatter = SCATTER_AMOUNT_TIER_7
	scatter_unwielded = SCATTER_AMOUNT_TIER_2 - SCATTER_AMOUNT_TIER_10
	burst_scatter_mult = SCATTER_AMOUNT_TIER_6
	scatter_unwielded = SCATTER_AMOUNT_TIER_2 - SCATTER_AMOUNT_TIER_10
	damage_mult = BASE_BULLET_DAMAGE_MULT
	recoil = RECOIL_AMOUNT_TIER_5
	recoil_unwielded = RECOIL_AMOUNT_TIER_3
