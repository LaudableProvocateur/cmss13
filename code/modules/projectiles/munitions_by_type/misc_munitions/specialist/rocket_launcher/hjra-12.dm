/obj/item/ammo_magazine/rocket/upp
	name = "\improper HJRA-12 High-Explosive Rocket"
	desc = "A rocket for the UPP standard-issue HJRA-12 Handheld Anti-Tank Rocket Launcher. This one is a standard high-explosive rocket for use against light vehicles or as an anti-personnel grenade."

	caliber = "88mm"
	icon_state = "hjra_explosive"
	icon = 'icons/obj/items/weapons/guns/ammo_by_faction/UPP/rocket_launchers.dmi'

	max_rounds = 1
	default_ammo = /datum/ammo/rocket
	gun_type = /obj/item/weapon/gun/launcher/rocket/upp
	reload_delay = 85

/obj/item/ammo_magazine/rocket/upp/update_icon()
	if(current_rounds <= 0)
		qdel(src)
	else
		icon_state = initial(icon_state)

/obj/item/ammo_magazine/rocket/upp/at
	name = "\improper HJRA-12 Anti-Tank Rocket"
	desc = "A rocket for the UPP standard-issue HJRA-12 Handheld Anti-Tank Rocket Launcher. This one is a standard anti-tank rocket designed to disable or destroy hostile armored vehicles."

	caliber = "88mm"
	icon_state = "hjra_tank"

	max_rounds = 1
	default_ammo = /datum/ammo/rocket/ap/anti_tank
	gun_type = /obj/item/weapon/gun/launcher/rocket/upp
	reload_delay = 85

/obj/item/ammo_magazine/rocket/upp/incen
	name = "\improper HJRA-12 Extreme-Intensity Incendiary Rocket"
	desc = "A rocket for the UPP standard-issue HJRA-12 Handheld Anti-Tank Rocket Launcher. This one is an extreme-intensity incendiary rocket."
	desc_lore = "This incendiary rocket uses an experimental chemical designated 'R-189' by the UPP. It is designed to melt through fortifications and bunkers but is most commonly used in an anti-personnel role due to over-issuing and the tempeartures after use in its intended role leaving behind a cloud of super-heated air, preventing troops' advance."
	caliber = "88mm"
	icon_state = "hjra_incen"

	max_rounds = 1
	default_ammo = /datum/ammo/rocket/wp/upp
	gun_type = /obj/item/weapon/gun/launcher/rocket/upp
	reload_delay = 85
