GLOBAL_LIST_INIT(shotgun_handfuls_8g, list(
	/obj/item/ammo_magazine/handful/gauge_8/slug,
	/obj/item/ammo_magazine/handful/gauge_8/buckshot,
	/obj/item/ammo_magazine/handful/gauge_8/flechette,
	/obj/item/ammo_magazine/handful/gauge_8/beanbag,
	/obj/item/ammo_magazine/handful/gauge_8/dragonsbreath
	))

/obj/item/ammo_magazine/handful/gauge_8/slug
	name = "handful of slug shells (8g)"
	desc = "A handful of metal cased, slug loaded 8 gauge shotgun shells effective against armour and heavy enough to pack a punch."

	icon_state = "heavy_slug_4"
	handful_state = "heavy_slug"

	default_ammo = /datum/ammo/bullet/shell/gauge_8/slug

/obj/item/ammo_magazine/handful/gauge_8/buckshot
	name = "handful of buckshot shells (8g)"
	desc = "A handful of metal cased, buckshot loaded 8 gauge shotgun shells capable of inflicting significant damage to soft targets at close range, though due to the nature of the projectile, these shells struggle to inflict meaningful damage to armoured targets, or targets at significant distance."

	icon_state = "heavy_buckshot_4"
	handful_state = "heavy_buckshot"

	default_ammo = /datum/ammo/bullet/shell/gauge_8/buckshot

/obj/item/ammo_magazine/handful/gauge_8/dragonsbreath
	name = "handful of dragon's breath shells (8g)"
	desc = "A handful of magnesium based, metal cased, buckshot loaded 8 gauge shotgun shells capable of inflicting significant damage and punch to soft targets at close range, though due to the nature of the projectile, these shells struggle to inflict meaningful damage to armoured targets, or targets at significant distance."

	icon_state = "heavy_dragonsbreath_4"
	handful_state = "heavy_dragonsbreath"

	default_ammo = /datum/ammo/bullet/shell/gauge_8/buckshot/dragonsbreath

/obj/item/ammo_magazine/handful/gauge_8/flechette
	name = "handful of flechette shells (8g)"
	desc = "A handful of metal cased, flechette loaded 8 gauge shotgun shells which prove effective at dealing significant damage through armour, though as a consequence of the nature of the projectile, struggle to deliver the punch shotgun shells are typically known for."

	icon_state = "heavy_flechette_4"
	handful_state = "heavy_flechette"

	default_ammo = /datum/ammo/bullet/shell/gauge_8/flechette

/obj/item/ammo_magazine/handful/gauge_8/beanbag
	name = "handful of beanbag shells (8g)"
	desc = "A handful of metal cased, beanbag loaded 8 gauge shotgun shells which prove effective at inflicting blunted trauma on a target without causing significant injury, and as a consequence of the cohesive nature of the projectile can be used at significant distance with little dropoff."

	icon_state = "heavy_beanbag_4"
	handful_state = "heavy_beanbag"

	default_ammo = /datum/ammo/bullet/shell/gauge_8/beanbag
