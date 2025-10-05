/obj/item/weapon/gun/pistol/clfpistol
	name = "D18 Hummingbird Pistol"
	desc = "The D18 Hummingbird Pistol was produced in the mid-2170s as a cheap and concealable firearm for CLF Sleeper Cell agents for assassinations and ambushes, and is able to be concealed in shoes and workboots."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/colony/pistols.dmi'
	icon_state = "m43"
	item_state = "m43"
	flags_gun_features = GUN_CAN_POINTBLANK|GUN_ONE_HAND_WIELDED
	fire_sound = 'sound/weapons/gun_m43.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/d18
	w_class = SIZE_TINY
	force = 5
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/flashlight,
	)

/obj/item/weapon/gun/pistol/clfpistol/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 28, "muzzle_y" = 20,"rail_x" = 10, "rail_y" = 21, "under_x" = 21, "under_y" = 17, "stock_x" = 21, "stock_y" = 17)

/obj/item/weapon/gun/pistol/clfpistol/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_12)
	accuracy_mult = BASE_ACCURACY_MULT
	accuracy_mult_unwielded = BASE_ACCURACY_MULT
	scatter = SCATTER_AMOUNT_TIER_6
	burst_scatter_mult = SCATTER_AMOUNT_TIER_5
	scatter_unwielded = SCATTER_AMOUNT_TIER_8
	scatter = SCATTER_AMOUNT_TIER_9
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_4
