/datum/techweb_node/computermath
	id = "computermath"
	display_name = "Problem Computer"
	description = "Solve problems for either cargo credits or research points."
	prereq_ids = list("base")
	design_ids = list("computermath")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/bluespace_portal/New()
	design_ids += "bsrpd"
	design_ids += "borg_upgrade_bsrpd"
	. = ..()
