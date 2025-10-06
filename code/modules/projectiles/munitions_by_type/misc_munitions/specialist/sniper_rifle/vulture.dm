/obj/item/ammo_magazine/rifle/boltaction/vulture
	name = "\improper M707 \"Vulture\" magazine (20x102mm)"
	desc = "A magazine for the M707 \"Vulture\" anti-materiel rifle. Contains up to 4 massively oversized rounds."
	caliber = "20x102mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/marksman_rifles.dmi'
	icon_state = "vulture"
	handful_state = "vulture_bullet"
	default_ammo = /datum/ammo/bullet/sniper/anti_material_rifle/caliber_10x102mm
	max_rounds = 4
	gun_type = /obj/item/weapon/gun/bolt_action/vulture
	w_class = SIZE_MEDIUM // maybe small? This shit's >4 inches long mind you
	ammo_band_icon = "+vulture_band"
	ammo_band_icon_empty = "+vulture_band_e"

/obj/item/ammo_magazine/rifle/boltaction/vulture/holo_target
	name = "\improper M707 \"Vulture\" holo-target magazine (20x102mm)"
	desc = "A magazine for the M707 \"Vulture\" anti-materiel rifle. Contains up to 4 massively oversized <b>IFF-CAPABLE</b> holo-targeting rounds, which excel at marking heavy targets to be attacked by allied ground forces. The logistical requirements for such capabilities heavily hinder the performance and stopping power of this round."
	default_ammo =  /datum/ammo/bullet/sniper/anti_material_rifle/caliber_10x102mm/holo_target
	ammo_band_color = AMMO_BAND_COLOR_HOLOTARGETING
