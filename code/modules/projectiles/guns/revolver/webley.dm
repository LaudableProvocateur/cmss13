/obj/item/weapon/gun/revolver/m44/custom/webley
	name = "\improper Webley SRV-80"
	desc = "A top-break revolver used by the Imperial Armed Space Force’s 24th Para Regiment, and sometimes seen in the hands of other TWE military forces. Fires .455 Magnum. Archaic, yes, but brutally effective. Vacuum-sealed internals, Bakelite-style grips, and a recoil like getting kicked by a mule. Still puts things down. Hard."
	current_mag = /obj/item/ammo_magazine/internal/revolver/webley
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/TWE/revolvers.dmi'
	icon_state = "webley"
	item_state = "m44r"
	attachable_allowed = list(
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonet/upp,
		/obj/item/attachable/bayonet/antique,
		/obj/item/attachable/bayonet/custom,
		/obj/item/attachable/bayonet/custom/red,
		/obj/item/attachable/bayonet/custom/blue,
		/obj/item/attachable/bayonet/custom/black,
		/obj/item/attachable/bayonet/tanto,
		/obj/item/attachable/bayonet/tanto/blue,
		/obj/item/attachable/bayonet/rmc_replica,
		/obj/item/attachable/bayonet/rmc,
	)

/obj/item/weapon/gun/revolver/m44/custom/webley/set_gun_config_values()
	..()
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_2

/obj/item/weapon/gun/revolver/m44/custom/webley/IASF_webley
	icon_state = "webley_black"
	item_state = "m44r"
