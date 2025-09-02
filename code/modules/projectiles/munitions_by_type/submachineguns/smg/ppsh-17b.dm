#define PPSH_STICK_MAGAZINE_JAM_CHANCE 0.1
#define PPSH_DRUM_MAGAZINE_JAM_CHANCE 1

/obj/item/ammo_magazine/smg/ppsh
	name = "\improper PPSh-17b stick magazine (7.62x25mm)"
	desc = "A stick magazine for the PPSh submachinegun. Less ammo than the iconic drum magazine, but the latter causes feeding and handling issues. Your call which one's better."
	caliber = "7.62x25mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/UPP/smgs.dmi'
	icon_state = "ppsh17b_stick"
	bonus_overlay = "ppsh17b_stick_overlay"
	max_rounds = 35
	gun_type = /obj/item/weapon/gun/smg/ppsh
	default_ammo = /datum/ammo/bullet/smg/caliber_7_62x25mm
	var/bonus_mag_aim_slowdown = 0
	var/bonus_mag_wield_delay = 0
	var/jam_chance = PPSH_STICK_MAGAZINE_JAM_CHANCE
	var/new_item_state = "ppsh17b"


/obj/item/ammo_magazine/smg/ppsh/extended
	name = "\improper PPSh-17b drum magazine (7.62x25mm)"
	desc = "The iconic PPSh-17b drum magazine. Carries double the amount of bullets than the stick version, but may cause handling and feeding issues. Your call which one's better."
	icon_state = "ppsh17b_drum"
	bonus_overlay = "ppsh17b_drum_overlay"
	max_rounds = 71
	w_class = SIZE_MEDIUM
	bonus_mag_aim_slowdown = SLOWDOWN_ADS_QUICK_MINUS
	bonus_mag_wield_delay = WIELD_DELAY_VERY_FAST
	jam_chance = PPSH_DRUM_MAGAZINE_JAM_CHANCE
	new_item_state = "ppsh17b_d"

#undef PPSH_STICK_MAGAZINE_JAM_CHANCE
#undef PPSH_DRUM_MAGAZINE_JAM_CHANCE
