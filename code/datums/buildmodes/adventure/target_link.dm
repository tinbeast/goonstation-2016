/obj/adventurepuzzle/invisible/target_link

	var/triggerable_id = null
	var/obj/adventurepuzzle/triggerable/targetable/trap

	New()
		..()
		spawn(1)
			src.target_me()

	proc/target_me()
		for(var/obj/adventurepuzzle/triggerable/targetable/A)

			if(A.id == src.triggerable_id)
				src.trap = A

		if(src.trap)
			src.trap.setTarget(src)