/obj/item/ammo_magazine/gauge_20/beanbag/es7
	name = "box of X21 shock slugs"
	desc = "A box filled with X21 shells used for non-lethal crowd control. Riot Control use only."
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/WY/shotguns.dmi'
	icon_state = "electric"
	item_state = "incendiary"
	default_ammo = /datum/ammo/bullet/gauge_20/es7_beanbag
	handful_state = "elec_slug"
	caliber = "20g"
/obj/item/ammo_magazine/gauge_20/beanbag
	name = "box of beanbag slugs"
	desc = "A box filled with beanbag shotgun shells used for non-lethal crowd control. 12 Gauge."
	icon_state = "beanbag"
	item_state = "beanbag"
	default_ammo = /datum/ammo/bullet/gauge_20/beanbag
	handful_state = "beanbag_slug"

/obj/item/ammo_magazine/internal/shotgun/combat/riot
	caliber = "20g"
	default_ammo = /datum/ammo/bullet/gauge_20/beanbag

/obj/item/ammo_magazine/internal/shotgun/combat/es7
	caliber = "20g"
	default_ammo = /datum/ammo/bullet/gauge_20/es7_beanbag
	max_rounds = 7

/obj/item/ammo_magazine/handful/gauge_20/slug/es7
	name = "handful of X21 solid slugs (20g)"
	icon_state = "es7_slug_5"
	default_ammo = /datum/ammo/bullet/gauge_20/es7_slug
	handful_state = "es7_slug"
	caliber = "20g"
/obj/item/ammo_magazine/handful/gauge_20/beanbag/riot
	name = "handful of beanbag slugs (20g)"
	caliber = "20g"

/obj/item/ammo_magazine/handful/gauge_20/beanbag/es7
	name = "handful of X21 electrostatic slugs (20g)"
	icon_state = "shock_slug_5"
	default_ammo = /datum/ammo/bullet/gauge_20/es7_beanbag
	handful_state = "shock_slug"
	caliber = "20g"
/obj/item/ammo_magazine/handful/gauge_20/beanbag
	name = "handful of beanbag slugs (12g)"
	icon_state = "beanbag_slug_5"
	default_ammo = /datum/ammo/bullet/gauge_20/beanbag
	handful_state = "beanbag_slug"
