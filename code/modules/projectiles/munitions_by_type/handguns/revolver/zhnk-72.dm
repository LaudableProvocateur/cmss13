/obj/item/ammo_magazine/revolver/upp
	name = "\improper ZHNK-72 speed loader (7.62x38mmR)"
	desc = "A 7-round 7.62x38mmR revolver speed loader."
	default_ammo = /datum/ammo/bullet/revolver/caliber_7_62x38mmR
	caliber = "7.62x38mmR"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/UPP/revolvers.dmi'
	icon_state = "zhnk72loader"
	gun_type = /obj/item/weapon/gun/revolver/upp

/obj/item/ammo_magazine/revolver/upp/shrapnel
	name = "\improper ZHNK-72 shrapnel-shot speed loader (7.62x38mmR)"
	desc = "This speedloader contains seven 'shrapnel-shot' bullets, cheap recycled casings picked up off the ground and refilled with gunpowder and random scrap metal. Acts similarly to flechette."
	default_ammo = /datum/ammo/bullet/revolver/caliber_7_62x38mmR/shrapnel
	icon_state = "zhnk72loader_shrapnel"
/obj/item/ammo_magazine/internal/revolver/upp
	default_ammo = /datum/ammo/bullet/revolver/caliber_7_62x38mmR
	caliber = "7.62x38mmR"
	max_rounds = 7
	gun_type = /obj/item/weapon/gun/revolver/upp

/obj/item/ammo_magazine/internal/revolver/upp/shrapnel
	default_ammo = /datum/ammo/bullet/revolver/caliber_7_62x38mmR/shrapnel
