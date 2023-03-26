
/datum/emote/living/fart
    key = "fart"
    key_third_person = "farts"
    message = "farts."
    message_param = "farts at %t."
    emote_type = EMOTE_AUDIBLE
    muzzle_ignore = TRUE
    restraint_check = FALSE
    mob_type_allowed_typecache = /mob/living/carbon/human

/datum/emote/living/fart/run_emote(mob/living/user, params)
    if(!(. = ..()))
        return
    user.adjust_nutrition(rand(-10, -2))

    if(user.nextsoundemote >= world.time)
        return

    user.nextsoundemote = world.time + 20
    playsound(user, pickweight(list(
		'modular_lumos/sound/effects/fart_rarereverb.ogg' = 1,
		'modular_lumos/sound/effects/fart_rarewet.ogg' = 4,
		'modular_lumos/sound/effects/fart.ogg' = 20,
		'modular_lumos/sound/effects/fart2.ogg' = 15,
		'modular_lumos/sound/effects/fart3.ogg' = 15,
		'modular_lumos/sound/effects/fart4.ogg' = 15,
		'modular_lumos/sound/effects/fart5.ogg' = 10,
		'modular_lumos/sound/effects/fart6.ogg' = 10,
		'modular_lumos/sound/effects/fart7.ogg' = 10)), 50, FALSE)
