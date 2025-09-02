/obj/item/ammo_magazine/smartgun
	name = "smartgun drum"
	desc = "A 10x28mm 500-round drum magazine for use in the M56 Smartgun."
	caliber = "10x28mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/machineguns.dmi'
	icon_state = "m56_drum"
	max_rounds = 500 //Should be 500 in total.
	w_class = SIZE_MEDIUM
	default_ammo = /datum/ammo/bullet/smartgun
	gun_type = /obj/item/weapon/gun/smartgun
	flags_magazine = AMMUNITION_REFILLABLE|AMMUNITION_SLAP_TRANSFER

/obj/item/ammo_magazine/smartgun/dirty
	name = "irradiated smartgun drum"
	desc = "What at first glance appears to be a standard 500-round M56 Smartgun drum, is actually a drum loaded with irradiated rounds, providing an extra 'oomph' to to its bullets. The magazine itself is slightly modified to only fit in M56D or M56T smartguns, and is marked with a red X."
	icon_state = "m56_drum_dirty"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/WY/machineguns.dmi'
	default_ammo = /datum/ammo/bullet/smartgun/dirty
	gun_type = /obj/item/weapon/gun/smartgun/dirty
	flags_magazine = AMMUNITION_REFILLABLE|AMMUNITION_SLAP_TRANSFER

/obj/item/ammo_magazine/smartgun/holo_targetting
	name = "holotargetting smartgun drum"
	desc = "A 10x28mm holotargetting drum magazine for use in the Royal Marines Commando L56A2 Smartgun."
	icon_state = "m56_drum" //PLACEHOLDER
	default_ammo = /datum/ammo/bullet/smartgun/holo_target
	gun_type = /obj/item/weapon/gun/smartgun/rmc
	flags_magazine = AMMUNITION_REFILLABLE|AMMUNITION_SLAP_TRANSFER
