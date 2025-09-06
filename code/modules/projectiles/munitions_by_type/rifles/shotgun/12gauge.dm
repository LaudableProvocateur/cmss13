// 12 Gauge - Boxes
GLOBAL_LIST_INIT(shotgun_boxes_12g, list(
	/obj/item/ammo_magazine/gauge_12/buckshot,
	/obj/item/ammo_magazine/gauge_12/flechette,
	/obj/item/ammo_magazine/gauge_12/slug
	))

/obj/item/ammo_magazine/gauge_12
	name = "generic shotgun shell box"
	desc = "You shouldn't be seeing this"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/shotguns.dmi'
	icon_state = "slugs"
	item_state = "slugs"
	item_icons = list(
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_righthand.dmi'
		)
	default_ammo = /datum/ammo/bullet/gauge_12/slug
	caliber = "12g"
	gun_type = /obj/item/weapon/gun/shotgun
	max_rounds = 25 // Real shotgun boxes are usually 5 or 25 rounds. This works with the new system, five handfuls.
	w_class = SIZE_LARGE // Can't throw it in your pocket, friend.
	flags_magazine = AMMUNITION_REFILLABLE|AMMUNITION_HANDFUL_BOX
	handful_state = "slug_shell"
	transfer_handful_amount = 5

/obj/item/ammo_magazine/gauge_12/attack_self(mob/user)
	if(current_rounds == 0)
		new /obj/item/stack/sheet/cardboard(user.loc)
		qdel(src)
	else
		return ..()
// 12 Gauge - Slug Boxes
/obj/item/ammo_magazine/gauge_12/slug
	name = "box of shotgun slugs"
	desc = "A box filled with heavy shotgun shells. A timeless classic. 12 Gauge."
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/shotguns.dmi'
	icon_state = "slugs"
	item_state = "slugs"
	item_icons = list(
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_righthand.dmi'
		)
	default_ammo = /datum/ammo/bullet/gauge_12/slug
	caliber = "12g"
	gun_type = /obj/item/weapon/gun/shotgun
	max_rounds = 25 // Real shotgun boxes are usually 5 or 25 rounds. This works with the new system, five handfuls.
	w_class = SIZE_LARGE // Can't throw it in your pocket, friend.
	flags_magazine = AMMUNITION_REFILLABLE|AMMUNITION_HANDFUL_BOX
	handful_state = "slug_shell"
	transfer_handful_amount = 5

/obj/item/ammo_magazine/gauge_12/slug/incendiary
	name = "box of incendiary slugs"
	desc = "A box filled with self-detonating incendiary shotgun rounds. 12 Gauge."
	icon_state = "incendiary"
	item_state = "incendiary"
	default_ammo = /datum/ammo/bullet/gauge_12/slug/incendiary
	handful_state = "incendiary_slug"

// 12 Gauge - Buckshot Boxes
/obj/item/ammo_magazine/gauge_12/buckshot
	name = "box of buckshot shells"
	desc = "A box filled with buckshot spread shotgun shells. 12 Gauge."
	icon_state = "buckshot"
	item_state = "buckshot"
	default_ammo = /datum/ammo/bullet/gauge_12/buckshot
	handful_state = "buckshot_shell"

/obj/item/ammo_magazine/gauge_12/buckshot/incendiary
	name = "box of incendiary buckshots"
	desc = "A box filled with self-detonating buckshot incendiary shotgun rounds. 12 Gauge."
	icon_state = "incendiarybuck"
	item_state = "incendiarybuck"
	default_ammo = /datum/ammo/bullet/gauge_12/buckshot/incendiary
	handful_state = "incen_buckshot"

// 12 Gauge - Flechette Boxes
/obj/item/ammo_magazine/gauge_12/flechette
	name = "box of flechette shells"
	desc = "A box filled with flechette shotgun shells. 12 Gauge."
	icon_state = "flechette"
	item_state = "flechette"
	default_ammo = /datum/ammo/bullet/gauge_12/flechette
	handful_state = "flechette_shell"

// 12 Gauge - Beanbag Boxes
/obj/item/ammo_magazine/gauge_12/beanbag
	name = "box of beanbag slugs"
	desc = "A box filled with beanbag shotgun shells used for non-lethal crowd control. 12 Gauge."
	icon_state = "beanbag"
	item_state = "beanbag"
	default_ammo = /datum/ammo/bullet/gauge_12/beanbag
	handful_state = "beanbag_slug"

// 12 Gauge - Internal Tubes
// 12 Gauge - Basic Tubes
/obj/item/ammo_magazine/internal/shotgun
	name = "shotgun tube"
	desc = "An internal magazine. It is not supposed to be seen or removed."
	default_ammo = /datum/ammo/bullet/gauge_12/slug
	caliber = "12g"
	max_rounds = 9
	chamber_closed = 0

/obj/item/ammo_magazine/internal/shotgun/buckshot
	default_ammo = /datum/ammo/bullet/gauge_12/buckshot

/obj/item/ammo_magazine/internal/shotgun/merc
	max_rounds = 5

/obj/item/ammo_magazine/internal/shotgun/cmb
	default_ammo = /datum/ammo/bullet/gauge_12/buckshot
	max_rounds = 4

/obj/item/ammo_magazine/internal/shotgun/cmb/m3717
	max_rounds = 5

// 12 Gauge - Double Barrel Tubes
/obj/item/ammo_magazine/internal/shotgun/double //For a double barrel.
	default_ammo = /datum/ammo/bullet/gauge_12/buckshot
	max_rounds = 2
	chamber_closed = 1 //Starts out with a closed tube.

/obj/item/ammo_magazine/internal/shotgun/double/mou53
	default_ammo = /datum/ammo/bullet/gauge_12/flechette
	max_rounds = 3

// 12 Gauge - Handfuls
GLOBAL_LIST_INIT(shotgun_handfuls_12g, list(
	/obj/item/ammo_magazine/handful/gauge_12/slug,
	/obj/item/ammo_magazine/handful/gauge_12/buckshot,
	/obj/item/ammo_magazine/handful/gauge_12/flechette,
	/obj/item/ammo_magazine/handful/gauge_12/slug/incendiary,
	/obj/item/ammo_magazine/handful/gauge_12/buckshot/incendiary,
	/obj/item/ammo_magazine/handful/gauge_12/beanbag
	))

/obj/item/ammo_magazine/handful/gauge_12
	name = "handful of shotgun slugs (12g)"
	icon_state = "slug_shell_5"
	default_ammo = /datum/ammo/bullet/gauge_12/slug
	caliber = "12g"
	max_rounds = 5
	current_rounds = 5
	gun_type = /obj/item/weapon/gun/shotgun
	handful_state = "slug_shell"
	transfer_handful_amount = 5

/obj/item/ammo_magazine/handful/gauge_12/slug
	name = "handful of shotgun slugs (12g)"
	icon_state = "slug_shell_5"
	default_ammo = /datum/ammo/bullet/gauge_12/slug
	caliber = "12g"
	max_rounds = 5
	current_rounds = 5
	gun_type = /obj/item/weapon/gun/shotgun
	handful_state = "slug_shell"
	transfer_handful_amount = 5

/obj/item/ammo_magazine/handful/gauge_12/slug/incendiary
	name = "handful of incendiary slugs (12g)"
	icon_state = "incendiary_slug_5"
	default_ammo = /datum/ammo/bullet/gauge_12/slug/incendiary
	handful_state = "incendiary_slug"
/obj/item/ammo_magazine/handful/gauge_12/buckshot
	name = "handful of shotgun buckshot shells (12g)"
	icon_state = "buckshot_shell_5"
	default_ammo = /datum/ammo/bullet/gauge_12/buckshot
	handful_state = "buckshot_shell"

/obj/item/ammo_magazine/handful/gauge_12/buckshot/incendiary
	name = "handful of incendiary buckshot shells (12g)"
	icon_state = "incen_buckshot_5"
	default_ammo = /datum/ammo/bullet/gauge_12/buckshot/incendiary
	handful_state = "incen_buckshot"
/obj/item/ammo_magazine/handful/gauge_12/flechette
	name = "handful of shotgun flechette shells (12g)"
	icon_state = "flechette_shell_5"
	default_ammo = /datum/ammo/bullet/gauge_12/flechette
	handful_state = "flechette_shell"

/obj/item/ammo_magazine/handful/gauge_12/beanbag
	name = "handful of beanbag slugs (12g)"
	icon_state = "beanbag_slug_5"
	default_ammo = /datum/ammo/bullet/gauge_12/beanbag
	handful_state = "beanbag_slug"
