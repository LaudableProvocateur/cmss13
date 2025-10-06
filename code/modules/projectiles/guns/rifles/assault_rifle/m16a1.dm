/obj/item/weapon/gun/rifle/m16/dutch
	name = "\improper Dutch's M16A1"
	desc = "A modified M16 employed by Dutch's Dozen mercenaries. It has 'CLOAKER KILLER' printed on a label on the side. Chambered in 5.56x45mm."
	icon_state = "m16a1"
	current_mag = /obj/item/ammo_magazine/rifle/m16/ap
	starting_attachment_types = list(/obj/item/attachable/bayonet)

	random_spawn_rail = list(
		/obj/item/attachable/reddot,
		/obj/item/attachable/reflex,
	)
	random_spawn_under = list(
		/obj/item/attachable/angledgrip,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/burstfire_assembly,
		/obj/item/attachable/attached_gun/extinguisher,
		/obj/item/attachable/attached_gun/shotgun,
		/obj/item/attachable/lasersight,
	)
	random_spawn_muzzle = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/extended_barrel,
	)

/obj/item/weapon/gun/rifle/m16/dutch/set_gun_config_values()
	..()
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_8

/obj/item/weapon/gun/rifle/m16/grenadier/dutch
	name = "\improper Dutch's Grenadier M16A1"
	desc = "A modified M16 employed by Dutch's Dozen mercenaries. It has 'CLOAKER KILLER' printed on a label on the side. It is chambered in 5.56x45mm. This one has an irremovable M203 grenade launcher attached to it, holds one propriatary 40mm shell at a time, it lacks modern IFF systems and will impact the first target it hits; introduce your little friend."
	current_mag = /obj/item/ammo_magazine/rifle/m16/ap
	starting_attachment_types = list(/obj/item/attachable/scope/mini, /obj/item/attachable/bayonet)

/obj/item/weapon/gun/rifle/m16/grenadier/dutch/set_gun_config_values()
	..()
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_8

/obj/item/weapon/gun/rifle/xm177/dutch
	name = "\improper Dutch's XM177E2 Carbine"
	desc = "A modified XM177 employed by Dutch's Dozen mercenaries. It has 'CLOAKER KILLER' printed on a label on the side. It is chambered in 5.56x45mm. The short length inhibits the attachment of most underbarrel attachments, and the barrel moderator prohibits the attachment of all muzzle devices."
	desc_lore = "A carbine similar to the M16A1, with a collapsible stock and a distinct flash suppressor. A stamp on the receiver reads: 'COLT AR-15 - PROPERTY OF U.S. GOVT - XM177E2 - CAL 5.56MM', above the receiver is a crude sketching of some sort of mask? with the words 'CLOAKER KILLER' and seven tally marks etched on. \nA design originating from the Vietnam War, the XM177, also known as the Colt Commando or GAU-5/A, was an improvement on the CAR-15 Model 607, fixing multiple issues found with the limited service of the Model 607 with Special Forces. The XM177 saw primary use with Army Special Forces and Navy Seals operating as commandos. \nHow this got here is a mystery."
	icon_state = "xm177"
	current_mag = /obj/item/ammo_magazine/rifle/m16/ap

/obj/item/weapon/gun/rifle/xm177/dutch/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_SMG)
	set_burst_amount(BURST_AMOUNT_TIER_3)
	set_burst_delay(FIRE_DELAY_TIER_SMG)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_6
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_3
	scatter = SCATTER_AMOUNT_TIER_8
	burst_scatter_mult = SCATTER_AMOUNT_TIER_7
	scatter_unwielded = SCATTER_AMOUNT_TIER_4
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_8
	recoil_unwielded = RECOIL_AMOUNT_TIER_2
