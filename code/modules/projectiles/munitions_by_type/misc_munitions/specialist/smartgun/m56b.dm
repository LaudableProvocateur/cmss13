/obj/item/ammo_magazine/smartgun
	name = "M56 smartgun drum"
	desc = "A 10x28mm 500-round drum magazine for use in the M56 Smartgun."
	caliber = "10x28mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/machineguns.dmi'
	icon_state = "m56_drum"
	bonus_overlay = "drum_overlay"
	max_rounds = 500 //Should be 500 in total.
	w_class = SIZE_MEDIUM
	default_ammo = /datum/ammo/bullet/smartgun
	gun_type = /obj/item/weapon/gun/smartgun
	flags_magazine = AMMUNITION_REFILLABLE|AMMUNITION_SLAP_TRANSFER

/obj/item/ammo_magazine/smartgun/rusty
	name = "rusty M56 smartgun drum"
	icon_state = "m56f_drum"
	bonus_overlay = "rusty_drum_overlay"
	desc = "A sligtly worn 10x28mm 500-round drum magazine for use in the M56 Smartgun, or pretty much, whatever the hell you have on your hands, model names barely apply at this point."

/obj/item/ammo_magazine/smartgun/rusty/Initialize(mapload, spawn_empty)
	. = ..()
	current_rounds = rand(280, 500) //Scavenged surplus, so there is more suprise factors

/obj/item/ammo_magazine/smartgun/dirty
	name = "irradiated M56 smartgun drum"
	desc = "What at first glance appears to be a standard 500-round M56 Smartgun drum, is actually a drum loaded with irradiated rounds, providing an extra 'oomph' to to its bullets. The magazine itself is slightly modified to only fit in M56D or M56T smartguns, and is marked with a red X."
	icon_state = "m56_drum_dirty"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/WY/machineguns.dmi'
	default_ammo = /datum/ammo/bullet/smartgun/dirty
	gun_type = /obj/item/weapon/gun/smartgun/l56a2
	flags_magazine = AMMUNITION_REFILLABLE|AMMUNITION_SLAP_TRANSFER

/obj/item/ammo_magazine/smartgun/holo_targetting
	name = "holotargetting M56 smartgun drum"
	desc = "A 10x28mm holotargetting drum magazine for use in the Royal Marines Commando L56A2 Smartgun."
	ammo_band_icon = "+m56_drum_strip"
	ammo_band_icon_empty = "+m56_drum_strip_e"
	ammo_band_color = AMMO_BAND_COLOR_HOLOTARGETING
	default_ammo = /datum/ammo/bullet/smartgun/holo_target
	gun_type = /obj/item/weapon/gun/smartgun/rmc
	flags_magazine = AMMUNITION_REFILLABLE|AMMUNITION_SLAP_TRANSFER

/obj/item/ammo_magazine/smartgun/heap
	name = "HEAP M56 smartgun drum"
	desc = "A 10x28mm HEAP drum magazine for use of elite WY and UA forces."
	icon_state = "m56_drum"
	ammo_band_icon = "+m56_drum_strip"
	ammo_band_icon_empty = "+m56_drum_strip_e"
	bonus_overlay = "heap_drum_overlay"
	ammo_band_color = AMMO_BAND_COLOR_HEAP
	default_ammo = /datum/ammo/bullet/smartgun/heap
	gun_type = /obj/item/weapon/gun/smartgun/terminator
	flags_magazine = AMMUNITION_REFILLABLE|AMMUNITION_SLAP_TRANSFER

/obj/item/ammo_magazine/smartgun/upp
	name = "RFVS37 smartgun drum"
	// desc = "A 10x28mm 500-round drum magazine for use in the M56 Smartgun."
	// caliber = "10x28mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/UPP/machineguns.dmi'
	icon_state = "rfvs37"
