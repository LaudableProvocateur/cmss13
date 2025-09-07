/obj/item/ammo_magazine/internal/shotgun
	name = "12 gauge shotgun tube"
	desc = "An internal tube intended to house shotgun shells inside a shotgun, but of course within the confines of this game you should never see this, so if you have you should report this to someone who can fix whatever went wrong."

	default_ammo = /datum/ammo/bullet/shell/gauge_12/slug

	max_rounds = 9
	chamber_closed = 0
	caliber = "12g"

/obj/item/ammo_magazine/internal/shotgun/buckshot
	default_ammo = /datum/ammo/bullet/shell/gauge_12/buckshot

/obj/item/ammo_magazine/internal/shotgun/merc
	max_rounds = 5

/obj/item/ammo_magazine/internal/shotgun/cmb
	default_ammo = /datum/ammo/bullet/shell/gauge_12/buckshot
	max_rounds = 4

/obj/item/ammo_magazine/internal/shotgun/cmb/m3717
	max_rounds = 5

// 12 Gauge - Double Barrel Tubes
/obj/item/ammo_magazine/internal/shotgun/double //For a double barrel.
	default_ammo = /datum/ammo/bullet/shell/gauge_12/buckshot
	max_rounds = 2
	chamber_closed = 1 //Starts out with a closed tube.

/obj/item/ammo_magazine/internal/shotgun/double/mou53
	default_ammo = /datum/ammo/bullet/shell/gauge_12/flechette
	max_rounds = 3
