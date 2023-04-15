/mob/living/simple_animal/pet/dog/cheems
	name = "\proper Cheems"
	desc = "Cargo's overfed and slightly greasy disposal bin."
	icon = 'modular_lumos/icons/mob/doges.dmi'
	icon_state = "cheems"
	icon_dead = "cheems_dead"
	icon_living = "cheems"
	speak = list("Borf!", "Boof!", "Bork!")
	butcher_results = list(/obj/item/reagent_containers/food/snacks/burger/cheese = 1, /obj/item/reagent_containers/food/snacks/meat/slab = 2, /obj/item/trash/syndi_cakes = 1)
	faction = list("dog", "doge")
	animal_species = /mob/living/simple_animal/pet/dog
	gold_core_spawnable = FRIENDLY_SPAWN

/mob/living/simple_animal/pet/dog/cheems/Move(atom/newloc, direct)
	. = ..()
	if(.)
		for(var/obj/item/reagent_containers/food/snacks/burger/burbger in view(1, src))
			visible_message("<span class='danger'><b>\The [src]</b> consumes the [burbger]!</span>")
			qdel(burbger)
			revive(full_heal = 1)

/mob/living/simple_animal/pet/dog/cheems/attacked_by(obj/item/I, mob/living/user)
	. = ..()
	if(.)
		if(istype(I, /obj/item/reagent_containers/food/snacks/burger))
			qdel(I)
			if(stat == DEAD)
				visible_message("<b>\The [src]</b> stands right back up after nibbling the [I]!")
			else
				visible_message("<b>\The [src]</b> swallows the [I] whole!")
			revive(full_heal = 1)
