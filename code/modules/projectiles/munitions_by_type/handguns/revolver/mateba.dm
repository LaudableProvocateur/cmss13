/obj/item/ammo_magazine/revolver/mateba
	name = "\improper Mateba speed loader (.454)"
	desc = "A formidable 6-round .454 speedloader, made exclusively for the Mateba autorevolver. Packs a devastating punch. This standard-variant is optimized for anti-armor."
	default_ammo = /datum/ammo/bullet/revolver/caliber_11_5x35_1mmR
	caliber = ".454"
	icon_state = "mateba"
	max_rounds = 6
	gun_type = /obj/item/weapon/gun/revolver/mateba

/obj/item/ammo_magazine/revolver/mateba/highimpact
	name = "\improper High Impact Mateba speed loader (.454)"
	desc = "A formidable 6-round .454 speedloader, made exclusively for the Mateba autorevolver. Packs a devastating punch. This high impact variant is optimized for anti-personnel. Don't point at anything you don't want to destroy."
	default_ammo = /datum/ammo/bullet/revolver/caliber_11_5x35_1mmR/highimpact
	ammo_band_color = REVOLVER_TIP_COLOR_HIGH_IMPACT

/obj/item/ammo_magazine/revolver/mateba/highimpact/ap
	name = "\improper High Impact Armor-Piercing Mateba speed loader (.454)"
	desc = "A formidable 6-round .454 speedloader, made exclusively for the Mateba autorevolver. Packs a devastating punch. This armor-piercing variant is optimized against armored targets at the cost of lower overall damage. Don't point at anything you don't want to destroy."
	default_ammo = /datum/ammo/bullet/revolver/caliber_11_5x35_1mmR/highimpact/ap
	ammo_band_color = REVOLVER_TIP_COLOR_HIAP

/obj/item/ammo_magazine/revolver/mateba/highimpact/explosive
	name = "\improper Mateba explosive speed loader (.454)"
	desc = "A formidable 6-round .454 speedloader, made exclusively for the Mateba autorevolver. There's an impact charge built into the bullet tip. Firing this at anything will result in a powerful explosion. Use with EXTREME caution."
	default_ammo = /datum/ammo/bullet/revolver/caliber_11_5x35_1mmR/highimpact/explosive
	ammo_band_color = REVOLVER_TIP_COLOR_EXPLOSIVE
/obj/item/ammo_magazine/internal/revolver/mateba
	default_ammo = /datum/ammo/bullet/revolver
	caliber = ".454"
	gun_type = /obj/item/weapon/gun/revolver/mateba

/obj/item/ammo_magazine/internal/revolver/mateba/impact
	default_ammo = /datum/ammo/bullet/revolver/caliber_11_5x35_1mmR/highimpact

/obj/item/ammo_magazine/internal/revolver/mateba/ap
	default_ammo = /datum/ammo/bullet/revolver/caliber_11_5x35_1mmR/highimpact/ap

/obj/item/ammo_magazine/internal/revolver/mateba/explosive
	default_ammo = /datum/ammo/bullet/revolver/caliber_11_5x35_1mmR/highimpact/explosive
