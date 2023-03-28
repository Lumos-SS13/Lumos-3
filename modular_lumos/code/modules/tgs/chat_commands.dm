/datum/tgs_chat_command/who
	name = "who"
	help_text = "Lists everyone currently on the server"
	admin_only = FALSE

/datum/tgs_chat_command/who/Run(datum/tgs_chat_user/sender, params)
	return tgswho()
