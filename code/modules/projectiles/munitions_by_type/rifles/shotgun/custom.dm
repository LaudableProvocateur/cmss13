/obj/item/ammo_magazine/handful/gauge_12/custom_color
	name = "abstract handful custom type"
	icon_state = "shell_greyscale_5"
	default_ammo = /datum/ammo/bullet/shell/gauge_12/buckshot
	handful_state = "shell_greyscale" //unneeded
/obj/item/ammo_magazine/handful/gauge_12/custom_color/update_icon()
	overlays.Cut()
	. = ..()
	icon_state = "shell_greyscale" + "_[current_rounds]"
	var/image/I = image(icon, src, "+shell_base_[src.current_rounds]")
	I.color = "#ffffff"
	I.appearance_flags = RESET_COLOR|KEEP_APART
	overlays += I
// i fucking hate gun code

/obj/item/ammo_magazine/handful/revolver
	name = "handful of revolver bullets (.44)"
	default_ammo = /datum/ammo/bullet/revolver/caliber_10_9x33mmR
	caliber = ".44"
	max_rounds = 8
	current_rounds = 8
	gun_type = /obj/item/weapon/gun/shotgun/double/cane

/obj/item/ammo_magazine/handful/revolver/marksman
	name = "handful of marksman revolver bullets (.44)"
	default_ammo = /datum/ammo/bullet/revolver/caliber_10_9x33mmR/marksman
	gun_type = /obj/item/weapon/gun/shotgun/double/cane

/obj/item/ammo_magazine/handful/revolver/marksman/six_rounds
	name = "handful of marksman revolver bullets (.44)"
	default_ammo = /datum/ammo/bullet/revolver/caliber_10_9x33mmR/marksman
	current_rounds = 6
	gun_type = /obj/item/weapon/gun/shotgun/double/cane
