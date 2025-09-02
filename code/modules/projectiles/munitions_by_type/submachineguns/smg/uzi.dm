#define UZI_NORMAL_MAGAZINE_JAM_CHANCE 0
#define UZI_EXTENDED_MAGAZINE_JAM_CHANCE 1

/obj/item/ammo_magazine/smg/uzi
	name = "\improper UZI magazine (9x21mm)"
	desc = "A 9x21mm magazine for the UZI. Seems pretty small, huh? Anything larger could cause feeding errors."
	caliber = "9x12mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/colony/smgs.dmi'
	icon_state = "uzi"
	max_rounds = 25
	gun_type = /obj/item/weapon/gun/smg/uzi
	var/jam_chance = UZI_NORMAL_MAGAZINE_JAM_CHANCE

/obj/item/ammo_magazine/smg/uzi/extended
	name = "\improper UZI extended magazine (9x21mm)"
	desc = "A slightly extended 9x21mm magazine for the UZI. Due to its size, it may or may not cause feeding errors."
	icon_state = "uzi_extended"
	bonus_overlay = "uzi_ext"
	max_rounds = 32
	jam_chance = UZI_EXTENDED_MAGAZINE_JAM_CHANCE

#undef UZI_NORMAL_MAGAZINE_JAM_CHANCE
#undef UZI_EXTENDED_MAGAZINE_JAM_CHANCE
