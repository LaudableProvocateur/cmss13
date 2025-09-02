/obj/item/ammo_magazine/smg/pps43
	name = "\improper Type-19 stick magazine (7.62x25mm)"
	desc = "A stick magazine for the Type-19 submachinegun."
	caliber = "7.62x25mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/UPP/smgs.dmi'
	icon_state = "insasu_stickmag"
	bonus_overlay = "insasu_stickmag_overlay"
	max_rounds = 35
	gun_type = /obj/item/weapon/gun/smg/pps43
	default_ammo = /datum/ammo/bullet/smg/caliber_7_62x25mm
	var/bonus_mag_aim_slowdown = 0
	var/bonus_mag_wield_delay = 0


/obj/item/ammo_magazine/smg/pps43/extended
	name = "\improper Type-19 drum magazine (7.62x25mm)"
	desc = "A 7.62x25mm drum magazine for the Type-19 submachinegun."
	icon_state = "insasu_drum"
	bonus_overlay = "insasu_drum_overlay"
	max_rounds = 71
	w_class = SIZE_MEDIUM
	bonus_mag_aim_slowdown = SLOWDOWN_ADS_QUICK_MINUS
	bonus_mag_wield_delay = WIELD_DELAY_VERY_FAST
