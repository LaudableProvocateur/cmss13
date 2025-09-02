/obj/item/ammo_magazine/smg/m39
	name = "\improper M39 HV magazine (10x20mm)"
	desc = "A 10x20mm caseless high-velocity submachinegun magazine. Powerful propellant allows the bullet increased velocity and minor penetration capabilities, noticeably improving its efficacy at medium ranges, although it still suffers significantly compared to a rifle bullet."
	caliber = "10x20mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/smgs.dmi'
	icon_state = "m39_HV"
	bonus_overlay_icon = 'icons/obj/items/weapons/guns/guns_by_faction/USCM/smgs.dmi'
	max_rounds = 48
	w_class = SIZE_MEDIUM
	gun_type = /obj/item/weapon/gun/smg/m39
	default_ammo = /datum/ammo/bullet/smg/m39
	ammo_band_icon = "+m39_band"
	ammo_band_icon_empty = "+m39_band_e"

/obj/item/ammo_magazine/smg/m39/ap
	name = "\improper M39 AP magazine (10x20mm)"
	desc = "A 10x20mm caseless armor-piercing submachinegun magazine. The bullet tips are made out of high-density material, allowing them to pierce straight through armor, but also reducing the raw stopping power and velocity of the ammunition."
	default_ammo = /datum/ammo/bullet/smg/ap
	ammo_band_color = AMMO_BAND_COLOR_AP

/obj/item/ammo_magazine/smg/m39/le
	name = "\improper M39 LE magazine (10x20mm)"
	desc = "A 10x20mm caseless light-explosive submachinegun magazine containing special light explosive rounds, designed to rapidly decimate armor, at the cost of vastly reduced damage and penetration."
	default_ammo = /datum/ammo/bullet/smg/le
	ammo_band_color = AMMO_BAND_COLOR_LIGHT_EXPLOSIVE

/obj/item/ammo_magazine/smg/m39/rubber
	name = "\improper M39 rubber magazine (10x20mm)"
	desc = "A 10x20mm caseless rubber bullet submachinegun magazine, containing rubber bullets. Non-lethal, but terrible on bioforms."
	default_ammo = /datum/ammo/bullet/smg/rubber
	ammo_band_color = AMMO_BAND_COLOR_RUBBER

/obj/item/ammo_magazine/smg/m39/heap
	name = "\improper M39 HEAP magazine (10x20mm)"
	desc = "A 10x20mm caseless armor-piercing high-explosive submachinegun magazine. The bullet tips are made out of a special explosive, designed to penetrate armor then detonate for maximum soft-tissue damage."
	default_ammo = /datum/ammo/bullet/smg/heap
	ammo_band_color = AMMO_BAND_COLOR_HEAP

/obj/item/ammo_magazine/smg/m39/penetrating
	name = "\improper M39 wall-penetrating magazine (10x20mm)"
	desc = "A 10x20mm caseless wall-penetrating bullet submachinegun magazine, containing wall-penetrating bullets. Designed to penetrate straight through objects and walls."
	default_ammo = /datum/ammo/bullet/smg/ap/penetrating
	ammo_band_color = AMMO_BAND_COLOR_PENETRATING

/obj/item/ammo_magazine/smg/m39/toxin
	name = "\improper M39 toxin magazine (10x20mm)"
	desc = "A 10x20mm caseless toxin bullet submachinegun magazine, containing toxin bullets. Great at stripping away armor and destroying biological structures."
	default_ammo = /datum/ammo/bullet/smg/ap/toxin
	ammo_band_color = AMMO_BAND_COLOR_TOXIN

/obj/item/ammo_magazine/smg/m39/incendiary
	name = "\improper M39 incendiary magazine (10x20mm)"
	desc = "A 10x20mm caseless incendiary submachinegun magazine. Incendiary payload sets targets ablaze, but causes the gun to have low stopping power and strongly decreased accuracy."
	default_ammo = /datum/ammo/bullet/smg/incendiary
	ammo_band_color = AMMO_BAND_COLOR_INCENDIARY

/obj/item/ammo_magazine/smg/m39/extended
	name = "\improper M39 HV extended magazine (10x20mm)"
	desc = "A 10x20mm caseless HV extended submachinegun magazine. Powerful propellant allows the bullet increased travel speed and minor penetration capabilities, noticeably improving its efficacy at long ranges, although it still suffers significantly compared to a rifle bullet."
	max_rounds = 72
	icon_state = "m39_HV_extended"
	bonus_overlay = "m39_ex"
