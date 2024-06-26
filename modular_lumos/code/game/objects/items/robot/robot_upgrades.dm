/obj/item/borg/upgrade/bsrpd
	name = "engineering cyborg bluespace RPD"
	desc = "A bluespace RPD replacement for the engineering module's standard RPD."
	icon_state = "cyborg_upgrade3"
	require_module = TRUE
	module_type = list(/obj/item/robot_module/engineering)
	module_flags = BORG_MODULE_ENGINEERING

/obj/item/borg/upgrade/bsrpd/action(mob/living/silicon/robot/R, user = usr)
	. = ..()
	if(.)
		var/obj/item/pipe_dispenser/PD = locate() in R
		var/obj/item/pipe_dispenser/bluespace/BD = locate() in R
		if(!PD)
			PD = locate() in R.module
		if(!BD)
			BD = locate() in R.module
		if(BD)
			to_chat(user, "<span class='warning'>This unit is already equipped with a BSRPD module.</span>")
			return FALSE

		BD = new(R.module)
		qdel(PD)
		R.module.basic_modules += BD
		R.module.add_module(BD, FALSE, TRUE)

/obj/item/borg/upgrade/bsrpd/deactivate(mob/living/silicon/robot/R, user = usr)
	. = ..()
	if (.)
		for(var/obj/item/pipe_dispenser/bluespace/BD in R.module)
			R.module.remove_module(BD, TRUE)

		var/obj/item/pipe_dispenser/PD = new (R.module)
		R.module.basic_modules += PD
		R.module.add_module(PD, FALSE, TRUE)
