/proc/tgswho()
	var/list/message = list("Players: \n")
	var/list/player_keys = list()
	for(var/player in GLOB.clients)
		var/client/C = player
		player_keys += "[(C in GLOB.admins) ? "[C.holder.fakekey ? C.holder.fakekey : C]" : C]"

	for(var/verified_player in player_keys)
		message += "- [verified_player]\n"

	return jointext(message, "")
