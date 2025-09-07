GLOBAL_LIST_INIT(shotgun_handfuls_12g, list(
	/obj/item/ammo_magazine/handful/gauge_12/slug,
	/obj/item/ammo_magazine/handful/gauge_12/buckshot,
	/obj/item/ammo_magazine/handful/gauge_12/flechette,
	/obj/item/ammo_magazine/handful/gauge_12/slug/incendiary,
	/obj/item/ammo_magazine/handful/gauge_12/buckshot/incendiary,
	/obj/item/ammo_magazine/handful/gauge_12/beanbag
	))

/obj/item/ammo_magazine/handful/gauge_12/slug
	name = "handful of slug shells (12g)"
	desc = "A handful of plastic cased, slug loaded 12 gauge shotgun shells effective against armour and heavy enough to pack a punch."

	icon_state = "slug_shell_5"
	handful_state = "slug_shell"

	default_ammo = /datum/ammo/bullet/shell/gauge_12/slug

/obj/item/ammo_magazine/handful/gauge_12/slug/incendiary
	name = "handful of incendiary shotgun slug shells (12g)"
	desc = "A handful of magnesium based, plastic cased, slug loaded 12 gauge shotgun shells effective against armour and heavy enough to pack a punch."

	icon_state = "incendiary_slug_5"
	handful_state = "incendiary_slug"

	default_ammo = /datum/ammo/bullet/shell/gauge_12/slug/incendiary

/obj/item/ammo_magazine/handful/gauge_12/buckshot
	name = "handful of buckshot shotgun shells (12g)"
	desc = "A handful of plastic cased, buckshot loaded 12 gauge shotgun shells capable of inflicting significant damage to soft targets at close range, though due to the nature of the projectile, these shells struggle to inflict meaningful damage to armoured targets, or targets at significant distance."

	icon_state = "buckshot_shell_5"
	handful_state = "buckshot_shell"

	default_ammo = /datum/ammo/bullet/shell/gauge_12/buckshot

/obj/item/ammo_magazine/handful/gauge_12/buckshot/incendiary
	name = "handful of incendiary buckshot shells (12g)"
	desc = "A handful of magnesium based, plastic cased, buckshot loaded 12 gauge shotgun shells capable of inflicting significant damage and punch to soft targets at close range, though due to the nature of the projectile, these shells struggle to inflict meaningful damage to armoured targets, or targets at significant distance."

	icon_state = "incen_buckshot_5"
	handful_state = "incen_buckshot"

	default_ammo = /datum/ammo/bullet/shell/gauge_12/buckshot/incendiary

/obj/item/ammo_magazine/handful/gauge_12/flechette
	name = "handful of shotgun flechette shells (12g)"
	desc = "A handful of plastic cased, flechette loaded 12 gauge shotgun shells which prove effective at dealing significant damage through armour, though as a consequence of the nature of the projectile, struggle to deliver the punch shotgun shells are typically known for."

	icon_state = "flechette_shell_5"
	handful_state = "flechette_shell"

	default_ammo = /datum/ammo/bullet/shell/gauge_12/flechette
/obj/item/ammo_magazine/handful/gauge_12/beanbag
	name = "handful of beanbag slugs (12g)"
	desc = "A handful of plastic cased, beanbag loaded 12 gauge shotgun shells which prove effective at inflicting blunted trauma on a target without causing significant injury, and as a consequence of the cohesive nature of the projectile can be used at significant distance with little dropoff."

	icon_state = "beanbag_slug_5"
	default_ammo = /datum/ammo/bullet/shell/gauge_12/beanbag
	handful_state = "beanbag_slug"
