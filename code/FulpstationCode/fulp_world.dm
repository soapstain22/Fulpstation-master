

/world/proc/update_status_fulp()

	var/list/features = list()

	//if(GLOB.master_mode)
	//	features += GLOB.master_mode	// FULP REMOVE: This is done below

	if (!GLOB.enter_allowed)
		features += "closed"

	var/s = ""
	var/hostedby
	if(config)
		var/server_name = CONFIG_GET(string/servername)
		if (server_name)
			s += "<b>[server_name]</b>\] &#8212; " // Fulpstation: added "\]" so we close the name with a ]  This looks clean!
		features += "[CONFIG_GET(flag/norespawn) ? "no " : ""]respawn"
		if(CONFIG_GET(flag/allow_vote_mode))
			features += "vote"
		if(CONFIG_GET(flag/allow_ai))
			features += "AI allowed"
		hostedby = CONFIG_GET(string/hostedby)

	var/server_caption = CONFIG_GET(string/servercaption)
	s += "<br><b>What Befell of Space Station 13</b>"
	s += "<br>A hand-crafted, survival horror adventure spin-off, taking place during a return to the earth near a gas station left to fester."
	s += "<br><b>You will not be led by the hand.</b>"

	s += "<a href=\"[CONFIG_GET(string/discordurl)]\">"//Change this to wherever you want the hub to link to
	s += "Discord"  //Replace this with something else. Or ever better, delete it and uncomment the game version.
	s += "</a>"


	if(GLOB.master_mode)
	//	s += "<br>Mode: \[<b>" + (GLOB.master_mode == "secret_extended" ? "secret" : GLOB.master_mode) + "</b>"//\]" // FULPSTATION: What's the point in making it secret if it's going to just say the actual mode (extended)?
		// NOTE: If this is the LAST THING to be added to the description, then it'll end with a ] anyway. So don't include it here

	var/players = GLOB.clients.len

	var/popcaptext = ""
	var/popcap = max(CONFIG_GET(number/extreme_popcap), CONFIG_GET(number/hard_popcap), CONFIG_GET(number/soft_popcap))
	if (popcap)
		popcaptext = "/[popcap]"

	if (players > 1)
		features += "[players][popcaptext] funny little men"
	else if (players > 0)
		features += "[players][popcaptext] sad little man"

	game_state = (CONFIG_GET(number/extreme_popcap) && players >= CONFIG_GET(number/extreme_popcap)) //tells the hub if we are full

	if (!host && hostedby)
		features += "<b>You will not be led by the hand.</b>"

	// FUPLP REMOVE: We don't list features!
	//if (features)
	//	s += ": [jointext(features, ", ")]"

	//s += "<br>Light RP, New Antagonists"

	status = s
	return s