/obj/item/ammo_magazine/flamer_tank/custom
	name = "M240A1 Custom Incinerator Tank"
	desc = "A fuel tank for use in the M240A1 incinerator unit. This one has been modified with a pressure regulator and an internal propellant tank."
	matter = list("metal" = 3750)
	flamer_chem = null
	max_rounds = 100
	max_range = 5
	fuel_pressure = 1
	custom = TRUE

/obj/item/ammo_magazine/flamer_tank/custom/upgraded
	name = "M240A1 Upgraded Custom Incinerator Tank"
	desc = "A fuel tank for use in the M240A1 incinerator unit. This one has been modified with a larger and more sophisticated internal propellant tank, allowing for larger capacity and stronger fuels."
	matter = list("metal" = 50) // no free metal
	flamer_chem = null
	max_rounds = 200
	max_range = 7
	fuel_pressure = 1
	max_duration = 50
	max_intensity = 60
	custom = TRUE

/obj/item/ammo_magazine/flamer_tank/smoke
	name = "M240A1 Custom Incinerator Smoke Tank"
	desc = "A tank holding powdered smoke that expands when exposed to an open flame and carries any chemicals along with it."
	matter = list("metal" = 3750)
	flamer_chem = null
	custom = TRUE

/obj/item/ammo_magazine/flamer_tank/smoke/upgraded
	name = "M240A1 Upgraded Custom Incinerator Smoke Tank"
	desc = "A tank holding powdered smoke that expands when exposed to an open flame and carries any chemicals along with it. This one has been outfitted with an upgraded internal compressor, allowing for larger capacity."
	matter = list("metal" = 50) //no free metal
	flamer_chem = null
	custom = TRUE
	max_rounds = 150

/obj/item/ammo_magazine/flamer_tank/custom/large
	name = "M240-T Custom Incinerator Tank"
	desc = "A large fuel tank for use in the M240-T incinerator unit. This one has been modified with a pressure regulator and a large internal propellant tank. Must be manually attached."
	gun_type = /obj/item/weapon/gun/flamer/m240/spec
	max_rounds = 250

	max_intensity = 60
	max_range = 8
	max_duration = 50

/obj/item/ammo_magazine/flamer_tank/custom/verb/set_fuel_pressure()
	set name = "Change Fuel Pressure"
	set category = "Object"

	set src in usr

	if(usr.get_active_hand() != src)
		return

	var/set_pressure = clamp(tgui_input_number(usr, "Change fuel pressure to: (max: [max_pressure])", "Fuel pressure", fuel_pressure, 10, 1), 1 ,max_pressure)
	if(!set_pressure)
		to_chat(usr, SPAN_WARNING("You can't find that setting on the regulator!"))
	else
		to_chat(usr, SPAN_NOTICE("You set the pressure regulator to [set_pressure] U/t"))
		fuel_pressure = set_pressure

/obj/item/ammo_magazine/flamer_tank/custom/get_examine_text(mob/user)
	. = ..()
	. += SPAN_NOTICE("The pressure regulator is set to: [src.fuel_pressure] U/t")
