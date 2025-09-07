GLOBAL_LIST_INIT(shotgun_boxes_8g, list(
	/obj/item/ammo_magazine/gauge_8/buckshot,
	/obj/item/ammo_magazine/gauge_8/flechette,
	/obj/item/ammo_magazine/gauge_8/slug
	))

/obj/item/ammo_magazine/gauge_8/slug
	name = "box of slug shells (8g)"
	desc = "A box filled with heavy slug shells. 8 gauge."

	icon_state = "slugs"
	item_state = "slugs"
	handful_state = "slug_shell"

	default_ammo = /datum/ammo/bullet/shell/gauge_8/slug

/obj/item/ammo_magazine/gauge_8/buckshot
	name = "box of buckshot shells (8g)"
	desc = "A box filled with heavy buckshot shells. 8 Gauge."

	icon_state = "buckshot"
	item_state = "buckshot"
	handful_state = "buckshot_shell"

	default_ammo = /datum/ammo/bullet/shell/gauge_8/buckshot

/obj/item/ammo_magazine/gauge_8/dragonsbreath
	name = "box of dragon's breath shells (8g)"
	desc = "A box filled with heavy magnesium based buckshot shells. 8 Gauge."

	icon_state = "incendiary"
	item_state = "incendiary"
	handful_state = "incendiary_slug"

	default_ammo = /datum/ammo/bullet/shell/gauge_8/buckshot/dragonsbreath

/obj/item/ammo_magazine/gauge_8/flechette
	name = "box of flechette shells (8g)"
	desc = "A box filled with heavy flechette shells. 8 Gauge."

	icon_state = "flechette"
	item_state = "flechette"
	handful_state = "flechette_shell"

	default_ammo = /datum/ammo/bullet/shell/gauge_8/flechette

/obj/item/ammo_magazine/gauge_8/beanbag
	name = "box of beanbag shells (8g)"
	desc = "A box filled with heavy beanbag shells intended for crowd control. 8 Gauge."

	icon_state = "beanbag"
	item_state = "beanbag"
	handful_state = "beanbag_slug"

	default_ammo = /datum/ammo/bullet/shell/gauge_8/beanbag
