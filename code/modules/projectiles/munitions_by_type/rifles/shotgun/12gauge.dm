// 12 Gauge - Boxes
GLOBAL_LIST_INIT(shotgun_boxes_12g, list(
	/obj/item/ammo_magazine/gauge_12/buckshot,
	/obj/item/ammo_magazine/gauge_12/flechette,
	/obj/item/ammo_magazine/gauge_12/slug
	))

/obj/item/ammo_magazine/gauge_12
	name = "box of generic shells (12g)"
	desc = "You shouldn't be seeing this, if you are, you should probably report it to someone/something who can fix it."

	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/shotguns.dmi' // replace this with wherever is relevant
	icon_state = "slugs"
	item_state = "slugs"
	item_icons = list(
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_righthand.dmi'
		)
	handful_state = "slug_shell"

	default_ammo = /datum/ammo/bullet/gauge_12/slug
	caliber = "12g"

	gun_type = /obj/item/weapon/gun/shotgun
	max_rounds = 25 // Real shotgun boxes are usually 5 or 25 rounds. This works with the new system, five handfuls.
	transfer_handful_amount = 5

	w_class = SIZE_LARGE // Can't throw it in your pocket, friend.
	flags_magazine = AMMUNITION_REFILLABLE|AMMUNITION_HANDFUL_BOX

/obj/item/ammo_magazine/gauge_12/attack_self(mob/user)
	if(current_rounds == 0)
		new /obj/item/stack/sheet/cardboard(user.loc)
		qdel(src)
	else
		return ..()

// 12 Gauge - Slug Boxes
/obj/item/ammo_magazine/gauge_12/slug
	name = "box of slug shells (12g)"
	desc = "A box filled with heavy shotgun shells. A timeless classic. 12 Gauge."

	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/shotguns.dmi'
	icon_state = "slugs"
	item_state = "slugs"
	item_icons = list(
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_righthand.dmi'
		)
	handful_state = "slug_shell"

	default_ammo = /datum/ammo/bullet/gauge_12/slug
	caliber = "12g"

	gun_type = /obj/item/weapon/gun/shotgun
	max_rounds = 25
	transfer_handful_amount = 5 // Real shotgun boxes are usually 5 or 25 rounds. This works with the new system, five handfuls.

	w_class = SIZE_LARGE // Can't throw it in your pocket, friend.
	flags_magazine = AMMUNITION_REFILLABLE|AMMUNITION_HANDFUL_BOX

/obj/item/ammo_magazine/gauge_12/slug/incendiary
	name = "box of incendiary slug shells (12g)"
	desc = "A box filled with self-detonating incendiary shotgun rounds. 12 Gauge."

	icon_state = "incendiary"
	item_state = "incendiary"
	handful_state = "incendiary_slug"

	default_ammo = /datum/ammo/bullet/gauge_12/slug/incendiary

// 12 Gauge - Buckshot Boxes
/obj/item/ammo_magazine/gauge_12/buckshot
	name = "box of buckshot shells (12g)"
	desc = "A box filled with buckshot spread shotgun shells. 12 Gauge."

	icon_state = "buckshot"
	item_state = "buckshot"
	handful_state = "buckshot_shell"

	default_ammo = /datum/ammo/bullet/gauge_12/buckshot

/obj/item/ammo_magazine/gauge_12/buckshot/incendiary
	name = "box of incendiary buckshot shells (12g)"
	desc = "A box filled with self-detonating buckshot incendiary shotgun rounds. 12 Gauge."

	icon_state = "incendiarybuck"
	item_state = "incendiarybuck"
	default_ammo = /datum/ammo/bullet/gauge_12/buckshot/incendiary
	handful_state = "incen_buckshot"

// 12 Gauge - Flechette Boxes
/obj/item/ammo_magazine/gauge_12/flechette
	name = "box of flechette shells (12g)"
	desc = "A box filled with flechette shotgun shells. 12 Gauge."

	icon_state = "flechette"
	item_state = "flechette"
	handful_state = "flechette_shell"

	default_ammo = /datum/ammo/bullet/gauge_12/flechette

// 12 Gauge - Beanbag Boxes
/obj/item/ammo_magazine/gauge_12/beanbag
	name = "box of beanbag shells (12g)"
	desc = "A box filled with beanbag shotgun shells used for non-lethal crowd control. 12 Gauge."

	icon_state = "beanbag"
	item_state = "beanbag"
	handful_state = "beanbag_slug"

	default_ammo = /datum/ammo/bullet/gauge_12/beanbag

// 12 Gauge - Internal Tubes
// 12 Gauge - Basic Tubes
/obj/item/ammo_magazine/internal/shotgun
	name = "12 gauge shotgun tube"
	desc = "An internal tube intended to house shotgun shells inside a shotgun, but of course within the confines of this game you should never see this, so if you have you should report this to someone who can fix whatever went wrong."

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
	name = "handful of generic shells (12g)"
	desc = "A handful of generic shotgun shells, if your reading this, you have an item that should never be generated in normal gameplay, and should report its generation to someone able to fix it."

	icon_state = "slug_shell_5"
	handful_state = "slug_shell"

	default_ammo = /datum/ammo/bullet/gauge_12/slug
	gun_type = /obj/item/weapon/gun/shotgun
	caliber = "12g"
	max_rounds = 5
	current_rounds = 5
	transfer_handful_amount = 5

/obj/item/ammo_magazine/handful/gauge_12/slug
	name = "handful of slug shells (12g)"
	desc = "A handful of plastic cased, slug loaded 12 gauge shotgun shells effective against armour and heavy enough to pack a punch."

	icon_state = "slug_shell_5"
	handful_state = "slug_shell"

	default_ammo = /datum/ammo/bullet/gauge_12/slug
	caliber = "12g"
	max_rounds = 5
	current_rounds = 5
	transfer_handful_amount = 5

/obj/item/ammo_magazine/handful/gauge_12/slug/incendiary
	name = "handful of incendiary shotgun slug shells (12g)"
	desc = "A handful of magnesium based, plastic cased, slug loaded 12 gauge shotgun shells effective against armour and heavy enough to pack a punch."

	icon_state = "incendiary_slug_5"
	handful_state = "incendiary_slug"

	default_ammo = /datum/ammo/bullet/gauge_12/slug/incendiary

/obj/item/ammo_magazine/handful/gauge_12/buckshot
	name = "handful of buckshot shotgun shells (12g)"
	desc = "A handful of plastic cased, buckshot loaded 12 gauge shotgun shells capable of inflicting significant damage to soft targets at close range, though due to the nature of the projectile, these shells struggle to inflict meaningful damage to armoured targets, or targets at significant distance."

	icon_state = "buckshot_shell_5"
	handful_state = "buckshot_shell"

	default_ammo = /datum/ammo/bullet/gauge_12/buckshot

/obj/item/ammo_magazine/handful/gauge_12/buckshot/incendiary
	name = "handful of incendiary buckshot shells (12g)"
	desc = "A handful of magnesium based, plastic cased, buckshot loaded 12 gauge shotgun shells capable of inflicting significant damage and punch to soft targets at close range, though due to the nature of the projectile, these shells struggle to inflict meaningful damage to armoured targets, or targets at significant distance."

	icon_state = "incen_buckshot_5"
	handful_state = "incen_buckshot"

	default_ammo = /datum/ammo/bullet/gauge_12/buckshot/incendiary

/obj/item/ammo_magazine/handful/gauge_12/flechette
	name = "handful of shotgun flechette shells (12g)"
	desc = "A handful of plastic cased, flechette loaded 12 gauge shotgun shells which prove effective at dealing significant damage through armour, though as a consequence of the nature of the projectile, struggle to deliver the punch shotgun shells are typically known for."

	icon_state = "flechette_shell_5"
	handful_state = "flechette_shell"

	default_ammo = /datum/ammo/bullet/gauge_12/flechette
/obj/item/ammo_magazine/handful/gauge_12/beanbag
	name = "handful of beanbag slugs (12g)"
	desc = "A handful of plastic cased, beanbag loaded 12 gauge shotgun shells which prove effective at inflicting blunted trauma on a target without causing significant injury, and as a consequence of the cohesive nature of the projectile can be used at significant distance with little dropoff."

	icon_state = "beanbag_slug_5"
	default_ammo = /datum/ammo/bullet/gauge_12/beanbag
	handful_state = "beanbag_slug"
