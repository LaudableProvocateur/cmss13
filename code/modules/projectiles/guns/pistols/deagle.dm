/obj/item/weapon/gun/pistol/deagle
	name = "\improper Desert Eagle"
	desc = "The handcannon that needs no introduction, the Desert Eagle is expensive, unwieldy, and extremely heavy for a pistol. However, it more than makes up for its weighty build \
	with its powerful shots, capable of stopping a human, or even a bear, dead in their tracks."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/colony/pistols.dmi'
	icon_state = "deagle"
	item_state = "deagle"
	fire_sound = 'sound/weapons/gun_DE50.ogg'
	firesound_volume = 40
	current_mag = /obj/item/ammo_magazine/pistol/desert_eagle
	force = 13

	attachable_allowed = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/compensator,
	)

/obj/item/weapon/gun/pistol/deagle/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 31, "muzzle_y" = 20, "rail_x" = 17, "rail_y" = 22, "under_x" = 21, "under_y" = 15, "stock_x" = 20, "stock_y" = 17)


/obj/item/weapon/gun/pistol/deagle/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_5)
	set_burst_amount(BURST_AMOUNT_TIER_2)
	set_burst_delay(FIRE_DELAY_TIER_8)
	accuracy_mult = BASE_ACCURACY_MULT
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_5
	scatter = SCATTER_AMOUNT_TIER_6
	burst_scatter_mult = SCATTER_AMOUNT_TIER_6
	scatter_unwielded = SCATTER_AMOUNT_TIER_6
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_1
	recoil = RECOIL_AMOUNT_TIER_5
	recoil_unwielded = RECOIL_AMOUNT_TIER_3

/obj/item/weapon/gun/pistol/deagle/co
	name = "polished Desert Eagle"
	icon_state = "c_deagle"
	item_state = "c_deagle"
	current_mag = /obj/item/ammo_magazine/pistol/desert_eagle/super/highimpact
	black_market_value = 100
	unacidable = TRUE
	explo_proof = TRUE

/obj/item/weapon/gun/pistol/deagle/co/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_5)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_5
	scatter = SCATTER_AMOUNT_TIER_6
	burst_scatter_mult = SCATTER_AMOUNT_TIER_4
	scatter_unwielded = SCATTER_AMOUNT_TIER_3
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_8
	recoil = RECOIL_AMOUNT_TIER_3
	recoil_unwielded = RECOIL_AMOUNT_TIER_2

/obj/item/weapon/gun/pistol/deagle/co/unique_action(mob/user)
	if(fire_into_air(user))
		return ..()

/obj/item/weapon/gun/pistol/deagle/co/gold
	name = "golden vintage Desert Eagle"
	desc = "A Desert Eagle anodized in gold and adorned with rosewood grips. The living definition of ostentatious, it's flashy, unwieldy, tremendously heavy, and kicks like a mule. But as a symbol of power, there's nothing like it."
	icon_state = "g_deagle"
	item_state = "g_deagle"
