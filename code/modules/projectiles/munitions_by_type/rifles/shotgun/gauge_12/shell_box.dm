GLOBAL_LIST_INIT(shotgun_boxes_12g, list(
	/obj/item/ammo_magazine/shell_box/gauge_12/buckshot,
	/obj/item/ammo_magazine/shell_box/gauge_12/flechette,
	/obj/item/ammo_magazine/shell_box/gauge_12/slug
	))
// 12 Gauge - Slug Boxes
/obj/item/ammo_magazine/shell_box/gauge_12/slug
	name = "box of slug shells (12g)"
	desc = "A box filled with heavy shotgun shells. A timeless classic. 12 Gauge."

	icon_state = "slugs"
	item_state = "slugs"
	handful_state = "slug_shell"

	default_ammo = /datum/ammo/bullet/shell/gauge_12/slug

/obj/item/ammo_magazine/shell_box/gauge_12/slug/incendiary
	name = "box of incendiary slug shells (12g)"
	desc = "A box filled with self-detonating incendiary shotgun rounds. 12 Gauge."

	icon_state = "incendiary"
	item_state = "incendiary"
	handful_state = "incendiary_slug"

	default_ammo = /datum/ammo/bullet/shell/gauge_12/slug/incendiary

// 12 Gauge - Buckshot Boxes
/obj/item/ammo_magazine/shell_box/gauge_12/buckshot
	name = "box of buckshot shells (12g)"
	desc = "A box filled with buckshot spread shotgun shells. 12 Gauge."

	icon_state = "buckshot"
	item_state = "buckshot"
	handful_state = "buckshot_shell"

	default_ammo = /datum/ammo/bullet/shell/gauge_12/buckshot

/obj/item/ammo_magazine/shell_box/gauge_12/buckshot/incendiary
	name = "box of incendiary buckshot shells (12g)"
	desc = "A box filled with self-detonating buckshot incendiary shotgun rounds. 12 Gauge."

	icon_state = "incendiarybuck"
	item_state = "incendiarybuck"
	default_ammo = /datum/ammo/bullet/shell/gauge_12/buckshot/incendiary
	handful_state = "incen_buckshot"

// 12 Gauge - Flechette Boxes
/obj/item/ammo_magazine/shell_box/gauge_12/flechette
	name = "box of flechette shells (12g)"
	desc = "A box filled with flechette shotgun shells. 12 Gauge."

	icon_state = "flechette"
	item_state = "flechette"
	handful_state = "flechette_shell"

	default_ammo = /datum/ammo/bullet/shell/gauge_12/flechette

// 12 Gauge - Beanbag Boxes
/obj/item/ammo_magazine/shell_box/gauge_12/beanbag
	name = "box of beanbag shells (12g)"
	desc = "A box filled with beanbag shotgun shells used for non-lethal crowd control. 12 Gauge."

	icon_state = "beanbag"
	item_state = "beanbag"
	handful_state = "beanbag_slug"

	default_ammo = /datum/ammo/bullet/shell/gauge_12/beanbag
