/obj/item/ammo_magazine/flamer_tank/large
	name = "M240-T Incinerator Tank"
	desc = "A large fuel tank for use in the M240-T incinerator unit. Handle with extreme caution."
	icon_state = "flametank_large_custom"
	item_state = "flametank_large"
	max_rounds = 250
	gun_type = /obj/item/weapon/gun/flamer/m240/spec

	max_intensity = 80
	max_range = 5
	max_duration = 50

/obj/item/ammo_magazine/flamer_tank/large/empty
	flamer_chem = null

// This is the green flamer fuel for the pyro.
/obj/item/ammo_magazine/flamer_tank/large/B
	name = "M240-T Incinerator Tank (B)"
	desc = "A large fuel tank of Ultra Thick Napthal Fuel type B, a special variant of napalm that is easily extinguished, but disperses over a wide area while burning slowly."
	desc_lore = "Unlike its thinner contemporaries, this special ultra-thick variant of napalm is easily extinguished, but disperses over a wide area and lingers on the ground in a viscous mess. The composition reacts violently with inorganic materials to break them down, causing severe structural damage. Handle with extreme caution."
	caliber = "Napalm B"
	flamer_chem = "napalmb"

	max_range = 6

// This is the blue flamer fuel for the pyro.
/obj/item/ammo_magazine/flamer_tank/large/X
	name = "M240-T Incinerator Tank (X)"
	desc = "A large fuel tank of Ultra Thick Napthal Fuel type X, a sticky combustible liquid chemical that burns extremely hot, for use in the M240-T incinerator unit. Handle with extreme caution."
	caliber = "Napalm X"
	flamer_chem = "napalmx"

	max_range = 6

/obj/item/ammo_magazine/flamer_tank/large/EX
	name = "M240-T Incinerator Tank (EX)"
	desc = "A large fuel tank of Ultra Thick Napthal Fuel type EX, a sticky combustible liquid chemical that burns so hot it melts straight through most flame-resistant materials, for use in the M240-T incinerator unit. Handle with extreme caution."
	caliber = "Napalm EX"
	flamer_chem = "napalmex"

	max_range = 7
