/obj/item/weapon/gun/shotgun/double/spearhead/mou53
	name = "\improper MOU53 break action shotgun"
	desc = "A limited production Kerchner MOU53 triple break action classic. Respectable damage output at medium ranges, while the ARMAT M37 is the king of CQC, the Kerchner MOU53 is what hits the broadside of that barn. This specific model cannot safely fire buckshot shells."
	icon_state = "mou"
	item_state = "mou"
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/USCM/shotguns.dmi'
	var/max_rounds = 3
	var/current_rounds = 0
	fire_sound = 'sound/weapons/gun_mou53.ogg'
	reload_sound = 'sound/weapons/handling/gun_mou_reload.ogg'//unique shell insert
	flags_equip_slot = SLOT_BACK
	flags_gun_features = GUN_CAN_POINTBLANK|GUN_INTERNAL_MAG
	current_mag = /obj/item/ammo_magazine/internal/shotgun/double/mou53 //Take care, she comes loaded!
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
		/obj/item/attachable/bayonet/co2,
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/angledgrip,
		/obj/item/attachable/flashlight/grip,
		/obj/item/attachable/gyro,
		/obj/item/attachable/attached_gun/extinguisher,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/stock/mou53,
	)
	map_specific_decoration = TRUE
	civilian_usable_override = FALSE

/obj/item/weapon/gun/shotgun/double/spearhead/mou53/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 33, "muzzle_y" = 18,"rail_x" = 11, "rail_y" = 21, "under_x" = 17, "under_y" = 15, "stock_x" = 10, "stock_y" = 9) //Weird stock values, make sure any new stock matches the old sprite placement in the .dmi


/obj/item/weapon/gun/shotgun/double/spearhead/mou53/set_gun_config_values()
	..()
	set_burst_amount(BURST_AMOUNT_TIER_1)
	set_fire_delay(FIRE_DELAY_TIER_11)
	if(SSticker.mode && MODE_HAS_FLAG(MODE_FACTION_CLASH))
		set_fire_delay(FIRE_DELAY_TIER_1)
	accuracy_mult = BASE_ACCURACY_MULT
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_10
	scatter = SCATTER_AMOUNT_TIER_10
	scatter_unwielded = SCATTER_AMOUNT_TIER_2
	damage_mult = BASE_BULLET_DAMAGE_MULT
	recoil = RECOIL_AMOUNT_TIER_3
	recoil_unwielded = RECOIL_AMOUNT_TIER_2

/obj/item/weapon/gun/shotgun/double/spearhead/mou53/reload(mob/user, obj/item/ammo_magazine/magazine)
	if(ispath(magazine.default_ammo, /datum/ammo/bullet/shell/gauge_12/buckshot)) // No buckshot in this gun
		to_chat(user, SPAN_WARNING("\the [src] cannot safely fire this type of shell!"))
		return
	..()


