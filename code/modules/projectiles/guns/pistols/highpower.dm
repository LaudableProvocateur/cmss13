/obj/item/weapon/gun/pistol/highpower
	name = "\improper MK-45 'High-Power' Automagnum"
	desc = "Originally designed as a replacement for the USCM's M44 combat revolver, it was rejected at the last minute by a committee, citing its need to be cocked after every loaded magazine to be too cumbersone and antiquated. The design has recently been purchased by the Henjin-Garcia company, refitted for .45 ACP, and sold to the Colonial Marshals and other various unscrupulous armed groups."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/colony/pistols.dmi'
	icon_state = "highpower"
	item_state = "highpower"
	fire_sound = 'sound/weapons/gun_kt42.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/mk_45
	force = 15
	attachable_allowed = list(
		/obj/item/attachable/suppressor, // Barrel
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonet/upp_replica,
		/obj/item/attachable/bayonet/upp,
		/obj/item/attachable/bayonet/wy,
		/obj/item/attachable/bayonet/antique,
		/obj/item/attachable/bayonet/custom,
		/obj/item/attachable/bayonet/custom/red,
		/obj/item/attachable/bayonet/custom/blue,
		/obj/item/attachable/bayonet/custom/black,
		/obj/item/attachable/bayonet/tanto,
		/obj/item/attachable/bayonet/tanto/blue,
		/obj/item/attachable/bayonet/rmc_replica,
		/obj/item/attachable/bayonet/rmc,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/compensator,
		/obj/item/attachable/reddot, // Rail
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/scope,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/gyro, // Under
		/obj/item/attachable/lasersight,
		/obj/item/attachable/burstfire_assembly,
	)
	/// This weapon needs to be manually racked every time a new magazine is loaded. I tried and failed to touch gun shitcode so this will do.
	var/manually_slided = FALSE

/obj/item/weapon/gun/pistol/highpower/Initialize(mapload, spawn_empty)
	. = ..()
	manually_slided = TRUE

/obj/item/weapon/gun/pistol/highpower/Fire(atom/target, mob/living/user, params, reflex = 0, dual_wield)
	if(!manually_slided)
		click_empty()
		to_chat(user, SPAN_DANGER("\The [src] makes a clicking noise! You need to manually rack the slide after loading in a new magazine!"))
		return NONE
	return ..()

/obj/item/weapon/gun/pistol/highpower/unique_action(mob/user)
	if(!manually_slided)
		user.visible_message(SPAN_NOTICE("[user] racks \the [src]'s slide."), SPAN_NOTICE("You rack \the [src]'s slide, loading the next bullet in."))
		manually_slided = TRUE
		cock_gun(user, TRUE)
		return
	..()

/obj/item/weapon/gun/pistol/highpower/cock_gun(mob/user, manual = FALSE)
	if(manual)
		..()
	else
		return

/obj/item/weapon/gun/pistol/highpower/reload(mob/user, obj/item/ammo_magazine/magazine)
	//reset every time its reloaded
	manually_slided = FALSE
	..()

/obj/item/weapon/gun/pistol/highpower/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 29, "muzzle_y" = 20,"rail_x" = 6, "rail_y" = 22, "under_x" = 20, "under_y" = 15, "stock_x" = 0, "stock_y" = 0)

/obj/item/weapon/gun/pistol/highpower/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_5)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_3
	scatter = SCATTER_AMOUNT_TIER_6
	scatter_unwielded = SCATTER_AMOUNT_TIER_4
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_8
	recoil = RECOIL_AMOUNT_TIER_4
	recoil_unwielded = RECOIL_AMOUNT_TIER_4

//also comes in.... BLAPCK
//the parent has a blueish tint, making it look best for civilian usage (colonies, marshals). this one has a black tint on its metal, making it best for military groups like VAIPO, elite mercs, etc.
// black tinted magazines also included
/obj/item/weapon/gun/pistol/highpower/black
	current_mag = /obj/item/ammo_magazine/pistol/mk_45/black
	icon_state = "highpower_b"
	item_state = "highpower_b"

//unimplemented
/obj/item/weapon/gun/pistol/highpower/tactical
	name = "\improper MK-44 SOCOM Automagnum"
	desc = "Originally designed as a replacement for the USCM's M44 combat revolver, it was rejected at the last minute by a committee, citing its need to be cocked after every loaded magazine to be too cumbersone and antiquated. The design has recently been purchased by the Henjin-Garcia company and sold to the Colonial Marshals and other various unscrupulous armed groups. This one has a sleek, dark design."
	current_mag = /obj/item/ammo_magazine/pistol/mk_45/black
	icon_state = "highpower_tac"
	item_state = "highpower_tac"
	starting_attachment_types = list(/obj/item/attachable/suppressor, /obj/item/attachable/lasersight, /obj/item/attachable/reflex)
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_ONE_HAND_WIELDED|GUN_AMMO_COUNTER
