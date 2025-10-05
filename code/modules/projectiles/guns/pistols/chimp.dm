/obj/item/weapon/gun/pistol/chimp
	name = "\improper CHIMP70 pistol"
	desc = "A powerful sidearm issued mainly to highly trained elite assassin necro-cyber-agents."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/event.dmi'
	icon_state = "c70"
	item_state = "c70"
	item_icons = list(
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/weapons/guns/misc_weapons_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/weapons/guns/misc_weapons_righthand.dmi',
		)
	current_mag = /obj/item/ammo_magazine/pistol/chimp
	fire_sound = 'sound/weapons/gun_chimp70.ogg'
	w_class = SIZE_MEDIUM
	force = 8
	flags_gun_features = GUN_AUTO_EJECTOR

/obj/item/weapon/gun/pistol/chimp/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_9)
	set_burst_delay(FIRE_DELAY_TIER_11)
	set_burst_amount(BURST_AMOUNT_TIER_2)
	accuracy_mult = BASE_ACCURACY_MULT
	accuracy_mult_unwielded = BASE_ACCURACY_MULT
	scatter = SCATTER_AMOUNT_TIER_6
	burst_scatter_mult = SCATTER_AMOUNT_TIER_6
	scatter_unwielded = SCATTER_AMOUNT_TIER_6
	damage_mult = BASE_BULLET_DAMAGE_MULT
