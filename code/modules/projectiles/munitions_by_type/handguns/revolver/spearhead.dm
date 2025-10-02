/obj/item/ammo_magazine/revolver/cmb_spearhead_autorevolver
	name = "\improper Spearhead hollowpoint speed loader (.357)"
	desc = "This 6-round speed loader was created for the Colonial Marshals' most commonly issued sidearm, loaded with hollow-point rounds either for colonies with wildlife problems or orbital stations, which favor the lesser penetration over other ammunition to reduce the risk of hull breaches. In exchange, they're near useless against armored targets, but what's the chance of that being a problem on a space station?"
	default_ammo = /datum/ammo/bullet/revolver/caliber_9x33mmR/hp
	caliber = ".357"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/colony/revolvers.dmi'
	icon_state = "cmb_hp"
	max_rounds = 6
	gun_type = /obj/item/weapon/gun/revolver/cmb
/obj/item/ammo_magazine/revolver/cmb_spearhead_autorevolver/normalpoint //put these in the marshal ert - ok sure :)
	name = "\improper Spearhead speed loader (.357)"
	desc = "This 6-round speed loader is fitted with standard .357 revolver bullets. A surprising rarity, as most CMB revolvers are issued with hollow-point rounds to Marshals on colonies with inimical wildlife, or thin-hulled space stations."
	default_ammo = /datum/ammo/bullet/revolver/caliber_9x33mmR
	icon_state = "cmb"
/obj/item/ammo_magazine/internal/revolver/cmb_spearhead_autorevolver
	default_ammo = /datum/ammo/bullet/revolver/caliber_9x33mmR
	caliber = ".357"
	gun_type = /obj/item/weapon/gun/revolver/cmb

/obj/item/ammo_magazine/internal/revolver/cmb_spearhead_autorevolver/hollowpoint
	default_ammo = /datum/ammo/bullet/revolver/caliber_9x33mmR/hp
	caliber = ".357"
	gun_type = /obj/item/weapon/gun/revolver/cmb
