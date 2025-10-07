/obj/item/weapon/gun/pistol/m1911
	name = "\improper M1911 service pistol"
	desc = "A timeless classic since the first World War. Once standard issue for the USCM, now back order only. Chambered in .45 ACP. Unfortunately, due to the progression of IFF technology, M1911 .45 ACP is NOT compatible with the SU-6."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/USCM/pistols.dmi'
	icon_state = "m4a345"
	item_state = "m4a3"

	current_mag = /obj/item/ammo_magazine/pistol/m1911


/obj/item/weapon/gun/pistol/m1911/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 28, "muzzle_y" = 20,"rail_x" = 10, "rail_y" = 22, "under_x" = 21, "under_y" = 17, "stock_x" = 21, "stock_y" = 17)


/obj/item/weapon/gun/pistol/m1911/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_11)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4
	accuracy_mult_unwielded = BASE_ACCURACY_MULT
	scatter = SCATTER_AMOUNT_TIER_6
	burst_scatter_mult = SCATTER_AMOUNT_TIER_6
	scatter_unwielded = SCATTER_AMOUNT_TIER_6
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_5


/obj/item/weapon/gun/pistol/m1911/socom
	name = "\improper M48A4 service pistol"
	desc = "A timeless classic since the first World War, the M1911A1 has limited use with the USCM, and is often used as a sidearm by non-governmental bodies due to its reliability. This is a modernized version with an ammo counter and a polymer grip, designated M48A4. Chambered in .45 ACP."
	icon_state = "m4a345_s"
	item_state = "m4a3"
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_ONE_HAND_WIELDED|GUN_AMMO_COUNTER

/obj/item/weapon/gun/pistol/m1911/socom/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_11)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4
	accuracy_mult_unwielded = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_2
	scatter = SCATTER_AMOUNT_TIER_8
	burst_scatter_mult = SCATTER_AMOUNT_TIER_6
	scatter_unwielded = SCATTER_AMOUNT_TIER_6
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_2

/obj/item/weapon/gun/pistol/m1911/socom/equipped
	starting_attachment_types = list(/obj/item/attachable/suppressor, /obj/item/attachable/lasersight, /obj/item/attachable/reflex)

/obj/item/weapon/gun/pistol/m1911/custom
	name = "\improper M1911C service pistol"
	desc = "A variant of the legendary M1911 pistol in use by USCM command elements. Based off the modernized M48A4, it has been modified to more closely resemble a classic M1911 in shape, while retaining modern technology features like a discreet ammo counter. Chambered in .45 ACP."
	icon_state = "m1911c"
	item_state = "m4a3"
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_ONE_HAND_WIELDED|GUN_AMMO_COUNTER

	current_mag = /obj/item/ammo_magazine/pistol/m1911/highimpact

/obj/item/weapon/gun/pistol/m1911/custom/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_11)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4
	accuracy_mult_unwielded = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_2
	scatter = SCATTER_AMOUNT_TIER_6
	burst_scatter_mult = SCATTER_AMOUNT_TIER_6
	scatter_unwielded = SCATTER_AMOUNT_TIER_6
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_2

/obj/item/weapon/gun/pistol/m1911/custom/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 29, "muzzle_y" = 20, "rail_x" = 10, "rail_y" = 22, "under_x" = 21, "under_y" = 15, "stock_x" = 21, "stock_y" = 17)
