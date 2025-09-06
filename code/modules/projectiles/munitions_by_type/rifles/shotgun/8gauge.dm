GLOBAL_LIST_INIT(shotgun_boxes_8g, list(
	/obj/item/ammo_magazine/gauge_8/buckshot,
	/obj/item/ammo_magazine/gauge_8/flechette,
	/obj/item/ammo_magazine/gauge_8/slug
	))

/obj/item/ammo_magazine/gauge_8
	name = "box of shotgun heavy slugs"
	desc = "A box filled with heavy shotgun shells. A timeless classic. 8 Gauge."
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/UPP/shotguns.dmi'
	item_icons = list(
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_righthand.dmi'
		)
	default_ammo = /datum/ammo/bullet/gauge_8/slug
	caliber = "8g"
	gun_type = /obj/item/weapon/gun/shotgun
	max_rounds = 20
	handful_state = "slug_shell"
	transfer_handful_amount = 4

/obj/item/ammo_magazine/gauge_8/slug
	name = "box of shotgun heavy slugs"
	desc = "A box filled with heavy shotgun shells. A timeless classic. 8 Gauge."
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/UPP/shotguns.dmi'
	item_icons = list(
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_righthand.dmi'
		)
	default_ammo = /datum/ammo/bullet/gauge_8/slug
	caliber = "8g"
	gun_type = /obj/item/weapon/gun/shotgun
	max_rounds = 20
	handful_state = "slug_shell"
	transfer_handful_amount = 4

/obj/item/ammo_magazine/gauge_8/buckshot
	name = "box of heavy buckshot shells"
	desc = "A box filled with buckshot spread shotgun shells. 8 Gauge."
	icon_state = "buckshot"
	item_state = "buckshot"
	default_ammo = /datum/ammo/bullet/gauge_8/buckshot
	handful_state = "buckshot_shell"

/obj/item/ammo_magazine/gauge_8/flechette
	name = "box of heavy flechette shells"
	desc = "A box filled with flechette shotgun shells. 8 Gauge."
	icon_state = "flechette"
	item_state = "flechette"
	default_ammo = /datum/ammo/bullet/gauge_8/flechette
	handful_state = "flechette_shell"

/obj/item/ammo_magazine/gauge_8/incendiary
	name = "box of heavy incendiary slugs"
	desc = "A box filled with self-detonating incendiary shotgun rounds. 8 Gauge."
	icon_state = "incendiary"
	item_state = "incendiary"
	default_ammo = /datum/ammo/bullet/gauge_8/buckshot/dragonsbreath
	handful_state = "incendiary_slug"

/obj/item/ammo_magazine/gauge_8/beanbag
	name = "box of heavy beanbag slugs"
	desc = "A box filled with beanbag shotgun shells used for non-lethal crowd control. 8 Gauge."
	icon_state = "beanbag"
	item_state = "beanbag"
	default_ammo = /datum/ammo/bullet/gauge_8/beanbag
	handful_state = "beanbag_slug"
/obj/item/ammo_magazine/internal/shotgun/type23/slug
	default_ammo = /datum/ammo/bullet/gauge_8/slug

/obj/item/ammo_magazine/internal/shotgun/type23/flechette
	default_ammo = /datum/ammo/bullet/gauge_8/flechette

/obj/item/ammo_magazine/internal/shotgun/type23/dragonsbreath
	default_ammo = /datum/ammo/bullet/gauge_8/buckshot/dragonsbreath

/obj/item/ammo_magazine/internal/shotgun/type23/beanbag
	default_ammo = /datum/ammo/bullet/gauge_8/beanbag

GLOBAL_LIST_INIT(shotgun_handfuls_8g, list(
	/obj/item/ammo_magazine/handful/gauge_8/slug,
	/obj/item/ammo_magazine/handful/gauge_8/buckshot,
	/obj/item/ammo_magazine/handful/gauge_8/flechette,
	/obj/item/ammo_magazine/handful/gauge_8/beanbag,
	/obj/item/ammo_magazine/handful/gauge_8/dragonsbreath
	))
/obj/item/ammo_magazine/handful/gauge_8
	name = "handful of heavy shotgun slugs (8g)"
	icon_state = "heavy_slug_4"
	handful_state = "heavy_slug"
	default_ammo = /datum/ammo/bullet/gauge_8/slug
	caliber = "8g"
	max_rounds = 4
	current_rounds = 4
	transfer_handful_amount = 4
	gun_type = /obj/item/weapon/gun/shotgun

/obj/item/ammo_magazine/handful/gauge_8/slug
	name = "handful of heavy shotgun slugs (8g)"
	icon_state = "heavy_slug_4"
	handful_state = "heavy_slug"
	default_ammo = /datum/ammo/bullet/gauge_8/slug
	caliber = "8g"
	max_rounds = 4
	current_rounds = 4
	transfer_handful_amount = 4
	gun_type = /obj/item/weapon/gun/shotgun

/obj/item/ammo_magazine/handful/gauge_8/buckshot
	name = "handful of heavy buckshot shells (8g)"
	icon_state = "heavy_buckshot_4"
	handful_state = "heavy_buckshot"
	default_ammo = /datum/ammo/bullet/gauge_8/buckshot

/obj/item/ammo_magazine/handful/gauge_8/dragonsbreath
	name = "handful of dragon's breath shells (8g)"
	desc = "These shells fire magnesium (rather than the usual lead) pellets that ignite on contact with the air, setting anything it hits on fire. Its custom design also increases maximum range."
	icon_state = "heavy_dragonsbreath_4"
	handful_state = "heavy_dragonsbreath"
	default_ammo = /datum/ammo/bullet/gauge_8/buckshot/dragonsbreath

/obj/item/ammo_magazine/handful/gauge_8/flechette
	name = "handful of heavy flechette shells (8g)"
	icon_state = "heavy_flechette_4"
	handful_state = "heavy_flechette"
	default_ammo = /datum/ammo/bullet/gauge_8/flechette

/obj/item/ammo_magazine/handful/gauge_8/beanbag
	name = "handful of heavy beanbag shells (8g)"
	icon_state = "heavy_beanbag_4"
	handful_state = "heavy_beanbag"
	default_ammo = /datum/ammo/bullet/gauge_8/beanbag
