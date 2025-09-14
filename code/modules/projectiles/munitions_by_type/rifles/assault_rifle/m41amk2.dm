/obj/item/ammo_magazine/rifle
	name = "\improper M41A magazine (10x24mm)"
	desc = "A 10x24mm assault rifle magazine."
	caliber = "10x24mm"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/USCM/assault_rifles.dmi'
	icon_state = "m41a"
	item_state = "generic_mag"
	item_icons = list(
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/weapons/ammo_righthand.dmi'
		)
	w_class = SIZE_MEDIUM
	default_ammo = /datum/ammo/bullet/rifle/caliber_10x24mm
	max_rounds = 40
	gun_type = /obj/item/weapon/gun/rifle/m41a
	ammo_band_icon = "+m41a_band"
	ammo_band_icon_empty = "+m41a_band_e"

/obj/item/ammo_magazine/rifle/extended
	name = "\improper M41A extended magazine (10x24mm)"
	desc = "An extended 10x24mm assault rifle magazine."
	icon_state = "m41a_extended"
	max_rounds = 60
	bonus_overlay_icon = 'icons/obj/items/weapons/guns/guns_by_faction/USCM/assault_rifles.dmi'
	bonus_overlay = "m41a_ex"

/obj/item/ammo_magazine/rifle/incendiary
	name = "\improper M41A incendiary magazine (10x24mm)"
	desc = "An incendiary 10x24mm assault rifle magazine."
	default_ammo = /datum/ammo/bullet/rifle/caliber_10x24mm/incendiary
	ammo_band_color = AMMO_BAND_COLOR_INCENDIARY

/obj/item/ammo_magazine/rifle/explosive
	name = "\improper M41A explosive magazine (10x24mm)"
	desc = "An explosive 10x24mm assault rifle magazine. Oh god... just don't hit friendlies with it."
	default_ammo = /datum/ammo/bullet/rifle/caliber_10x24mm/explosive
	ammo_band_color = AMMO_BAND_COLOR_EXPLOSIVE

/obj/item/ammo_magazine/rifle/heap
	name = "\improper M41A HEAP magazine (10x24mm)"
	desc = "A high-explosive armor-piercing 10x24mm assault rifle magazine."
	default_ammo = /datum/ammo/bullet/rifle/caliber_10x24mm/heap
	ammo_band_color = AMMO_BAND_COLOR_HEAP

/obj/item/ammo_magazine/rifle/ap
	name = "\improper M41A AP magazine (10x24mm)"
	desc = "An armor-piercing 10x24mm assault rifle magazine."
	desc_lore = "Unlike standard HEAP magazines, these reserve bullets do not have depleted uranium tips. Instead, these rounds trade off some of their bullet package for a lighter weight, reducing damage but increasing penetration capabilities and muzzle velocity."
	default_ammo = /datum/ammo/bullet/rifle/caliber_10x24mm/ap
	ammo_band_color = AMMO_BAND_COLOR_AP

/obj/item/ammo_magazine/rifle/le
	name = "\improper M41A LE magazine (10x24mm)"
	desc = "An armor-shredding 10x24mm assault rifle magazine."
	default_ammo = /datum/ammo/bullet/rifle/caliber_10x24mm/le
	ammo_band_color = AMMO_BAND_COLOR_LIGHT_EXPLOSIVE

/obj/item/ammo_magazine/rifle/penetrating
	name = "\improper M41A wall-penetrating magazine (10x24mm)"
	desc = "A wall-penetrating 10x24mm assault rifle magazine."
	default_ammo = /datum/ammo/bullet/rifle/caliber_10x24mm/ap/penetrating
	ammo_band_color = AMMO_BAND_COLOR_PENETRATING

/obj/item/ammo_magazine/rifle/toxin
	name = "\improper M41A toxin magazine (10x24mm)"
	desc = "A toxin 10x24mm assault rifle magazine."
	default_ammo = /datum/ammo/bullet/rifle/caliber_10x24mm/ap/toxin
	ammo_band_color = AMMO_BAND_COLOR_TOXIN


/obj/item/ammo_magazine/rifle/rubber
	name = "M41A Rubber Magazine (10x24mm)"
	desc = "A 10x24mm assault rifle magazine filled with rubber bullets."
	default_ammo = /datum/ammo/bullet/rifle/caliber_10x24mm/rubber
	ammo_band_color = AMMO_BAND_COLOR_RUBBER
