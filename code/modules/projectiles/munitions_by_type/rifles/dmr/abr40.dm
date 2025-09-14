/obj/item/ammo_magazine/rifle/l42a/abr40
	name = "\improper ABR-40 magazine (10x24mm)"
	desc = "An ABR-40 magazine loaded with full metal jacket ammunition, for use at the firing range or while hunting. Theoretically cross-compatible with an L42A battle rifle."
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/colony/marksman_rifles.dmi'
	icon_state = "abr40"
	bonus_overlay = "abr40_mag_overlay"
	bonus_overlay_icon = 'icons/obj/items/weapons/guns/guns_by_faction/colony/marksman_rifles.dmi'
	max_rounds = 12
	w_class = SIZE_SMALL
	ammo_band_icon = "+abr40_band"
	ammo_band_icon_empty = "+abr40_band_e"

/obj/item/ammo_magazine/rifle/l42a/abr40/holo_target
	name = "\improper ABR-40 holotargeting magazine (10x24mm)"
	desc = "An ABR-40 magazine loaded with holo-targeting ammunition, primarily utilized to highlight hunting targets for easier target capture. Theoretically cross-compatible with an L42A battle rifle."
	default_ammo = /datum/ammo/bullet/rifle/caliber_10x24mm/holo_target/hunting
	ammo_band_color = AMMO_BAND_COLOR_HOLOTARGETING
