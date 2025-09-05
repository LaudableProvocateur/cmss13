/obj/item/ammo_magazine/pistol/desert_eagle
	name = "\improper Desert Eagle magazine (.50)"
	desc = "Seven rounds of powerful 50-caliber destruction."
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/deagle
	caliber = ".50"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/colony/pistols.dmi'
	icon_state = "deagle"
	max_rounds = 7
	gun_type = /obj/item/weapon/gun/pistol/heavy
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/heavy
	ammo_band_icon = "+deagle_band"
	ammo_band_icon_empty = "+deagle_band_e"

/obj/item/ammo_magazine/pistol/desert_eagle/super //Commander's variant
	name = "heavy Desert Eagle magazine (.50)"
	desc = "Seven rounds of devastatingly powerful 50-caliber destruction."
	gun_type = /obj/item/weapon/gun/pistol/heavy/co
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/deagle
	ammo_band_color = AMMO_BAND_COLOR_SUPER

/obj/item/ammo_magazine/pistol/desert_eagle/super/highimpact
	name = "high impact heavy Desert Eagle magazine (.50)"
	desc = "Seven rounds of devastatingly powerful 50-caliber destruction. The bullets are tipped with a synthesized osmium and lead alloy to stagger absolutely anything they hit. Point away from anything you value."
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/deagle/highimpact
	ammo_band_color = AMMO_BAND_COLOR_HIGH_IMPACT

/obj/item/ammo_magazine/pistol/desert_eagle/super/highimpact/ap
	name = "\improper High Impact Armor-Piercing Desert Eagle magazine (.50)"
	desc = "Seven rounds of devastatingly powerful 50-caliber destruction. Packs a devastating punch. The bullets are tipped with an osmium-tungsten carbide alloy to not only stagger but also shred through any target's armor. Issued in few numbers due to the massive production cost and worries about hull breaches. Point away from anything you value."
	default_ammo = /datum/ammo/bullet/caliber_9x19mm/heavy/highimpact/ap
	ammo_band_color = AMMO_BAND_COLOR_AP
