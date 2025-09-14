/obj/item/ammo_magazine/pistol/m10
	name = "\improper M10 HV magazine (10x20mm)"
	desc = "A compact 40-round high-velocity magazine, designed for rapid reloads and reliable performance in close-quarters combat."
	default_ammo = /datum/ammo/bullet/smg/caliber_10x20mm/hv
	caliber = "10x20mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/pistols.dmi'
	icon_state = "m10"
	bonus_overlay = "m10_overlay"
	bonus_overlay_icon = 'icons/obj/items/weapons/guns/guns_by_faction/USCM/pistols.dmi'
	max_rounds = 40
	gun_type = /obj/item/weapon/gun/pistol/m10

/obj/item/ammo_magazine/pistol/m10/extended
	name = "\improper M10 HV extended magazine (10x20mm)"
	desc = "An extended 10x20mm 78-round high-velocity magazine, offering additional firepower for sustained engagements without significantly increasing reload time."
	default_ammo = /datum/ammo/bullet/smg/caliber_10x20mm/hv
	caliber = "10x20mm"
	icon_state = "m10_ext"
	bonus_overlay = "m10_ex_overlay"
	max_rounds = 78
	gun_type = /obj/item/weapon/gun/pistol/m10

/obj/item/ammo_magazine/pistol/m10/drum
	name = "\improper M10 HV drum magazine (10x20mm)"
	desc = "A super-extended 10x20mm 92-round drum magazine designed for prolonged firefights, delivering maximum ammunition capacity at the cost of a longer reload."
	default_ammo = /datum/ammo/bullet/smg/caliber_10x20mm/hv
	caliber = "10x20mm"
	icon_state = "m10_drum"
	bonus_overlay = "m10_drum_overlay"
	max_rounds = 92
	gun_type = /obj/item/weapon/gun/pistol/m10
