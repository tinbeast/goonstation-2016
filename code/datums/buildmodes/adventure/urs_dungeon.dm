
/obj/adventurepuzzle/multi_element_link

	// Look, please don't break this. okay? Please please please don't break this. This is very breakable. You promise? Good.

	var/triggerer_id = null
	var/triggerable_id = null
	var/act_type = null
	var/list/triggerers = list()
	var/list/triggerables = list()
	var/is_unpress = 0

	New()
		..()
		spawn(1)
			src.link_elements()
			spawn(10)
				qdel(src)

	proc/link_elements()

		if(src.triggerer_id == src.triggerable_id)
			return // I literally just said NOT to break this, you PROMISED.

		for(var/obj/adventurepuzzle/A)

			if(A.id == src.triggerer_id)
				src.triggerers += A

			if(A.id == src.triggerable_id)
				src.triggerables += A


		for(var/obj/item/adventurepuzzle/A)

			if(A.id == src.triggerer_id)
				src.triggerers += A

			if(A.id == src.triggerable_id)
				src.triggerables += A

		if((src.triggerers.len > 0) && (src.triggerables.len > 0))

			for(var/Z in src.triggerers)

				for(var/W in src.triggerables)

					if(istype(W,/obj/adventurepuzzle/triggerable))

						var/obj/adventurepuzzle/triggerable/Y = W

						if(istype(Z,/obj/adventurepuzzle/triggerer/twostate))

							var/obj/adventurepuzzle/triggerer/twostate/X = Z

							if(is_unpress)
								X.triggered_unpress += Y
								X.triggered_unpress[Y] = act_type

							else
								X.triggered += Y
								X.triggered[Y] = act_type

						else if(istype(Z,/obj/adventurepuzzle/triggerer))

							var/obj/adventurepuzzle/triggerer/X = Z

							X.triggered += Y
							X.triggered[Y] = act_type

						else if(istype(Z,/obj/adventurepuzzle/triggerable/triggerer))

							var/obj/adventurepuzzle/triggerable/triggerer/X = Z

							X.triggered += Y
							X.triggered[Y] = act_type

						else if(istype(Z,/obj/item/adventurepuzzle/triggerer))

							var/obj/item/adventurepuzzle/triggerer/X = Z

							X.triggered += Y
							X.triggered[Y] = act_type


/obj/adventurepuzzle/triggerable/bomb


	name = "adventure bomb"
	invisibility = 20
	icon = 'icons/obj/assemblies.dmi'
	icon_state = "Pipe_Timed"
	density = 0
	opacity = 0
	anchored = 1
	var/trap_delay = 100
	var/next_trap = 0
	var/power = 100

	var/is_on = 1

	var/static/list/triggeracts = list("Activate" = "act", "Disable" = "off", "Destroy" = "del", "Do nothing" = "nop", "Enable" = "on")

	New()
		var/datum/reagents/R = new/datum/reagents(5000)
		reagents = R
		R.my_atom = src
		..()

	trigger_actions()
		return triggeracts

	trigger(var/act)
		switch (act)
			if ("del")
				is_on = 0
				qdel(src)
			if ("act")
				if (is_on && next_trap <= world.time)
					explosion_new(src, get_turf(src), power)
					next_trap = world.time + trap_delay
			if ("off")
				is_on = 0
				return
			if ("on")
				is_on = 1
				return

/obj/adventurepuzzle/triggerable/targetable/portal

	name = "adventure portal"
	invisibility = 20
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "portal"
	density = 0
	opacity = 0
	anchored = 1
	target = null
	var/my_portal = null
	var/start_on = 0

	var/static/list/triggeracts = list("Disable" = "off", "Do nothing" = "nop", "Enable" = "on")

	New()
		..()
		if(start_on)
			spawn(10)
				src.trigger("on")

	trigger_actions()
		return triggeracts

	trigger(var/act)
		switch(act)
			if ("on")
				if(my_portal)
					return
				if(!target)
					return
				var/obj/perm_portal/P = new /obj/perm_portal(get_turf(src))
				P.target = get_turf(target)
				src.my_portal = P
				return
			if ("off")
				qdel(my_portal)
				my_portal = null
				return

	setTarget(var/atom/A)
		..()

/obj/item/clothing/glasses/urs_dungeon_entry
	name = "\improper VR goggles"
	desc = "These goggles don't look quite right..."
	icon_state = "vr"
	item_state = "sunglasses"
	color = "#550000"
	var/target = null

	New()
		..()
		spawn(1)
			for(var/obj/adventurepuzzle/invisible/target_link/T)
				if (T.id == "UD-LANDING-ZONE")
					target = get_turf(T)


	equipped(var/mob/user, var/slot)
		var/mob/living/carbon/human/H = user
		if(istype(H) && slot == "eyes")
			spawn(10)
				enter_urs_dungeon(user)
		return

	proc/enter_urs_dungeon(var/mob/living/carbon/human/H)
		if(target && H.mind)

			var/datum/mind/M = H.mind

			H.u_equip(src)
			src.set_loc(get_turf(H))

			for(var/mob/O in AIviewers(src, null)) O.show_message("<span style=\"color:red\">[H.name] disappears in a flash of light!!</span>", 1)
			playsound(src.loc, "sound/weapons/flashbang.ogg", 50, 1)
			for (var/mob/N in viewers(src, null))
				if (get_dist(N, src) <= 6)
					N.apply_flash(20, 1)
				if (N.client)
					shake_camera(N, 6, 4)

			var/orig_dnr = M.dnr

			if (orig_dnr)
				M.dnr = 0

			H.unkillable = 1
			H.set_loc(src.target)
			H.firegib()
			spawn(1)
				var/mob/living/carbon/human/new_H = M.current
				new_H.unkillable = 0
				M.dnr = orig_dnr
		return

/obj/item/clothing/glasses/urs_dungeon_exit
	name = "\improper VR goggles"
	desc = "About goddamn time."
	icon_state = "vr"
	item_state = "sunglasses"
	color = "#00CCCC"

	New()
		..()

	equipped(var/mob/user, var/slot)
		var/mob/living/carbon/human/H = user
		if(istype(H) && slot == "eyes")
			spawn(10)
				exit_urs_dungeon(user)
		return

	proc/exit_urs_dungeon(var/mob/living/carbon/human/H)

		var/area/thearea = /area/station/crew_quarters/arcade

		H.u_equip(src)
		src.set_loc(get_turf(H))

		var/list/L = list()
		for (var/turf/T3 in get_area_turfs(thearea.type))
			if (!T3.density)
				var/clear = 1
				for (var/obj/O in T3)
					if (O.density)
						clear = 0
						break
				if (clear)
					L += T3

		for(var/mob/O in AIviewers(src, null)) O.show_message("<span style=\"color:red\">[H.name] disappears in a flash of light!!</span>", 1)
		playsound(src.loc, "sound/weapons/flashbang.ogg", 50, 1)

		for (var/mob/N in viewers(src, null))
			if (get_dist(N, src) <= 6)
				N.apply_flash(20, 1)
			if (N.client)
				shake_camera(N, 6, 4)

		src.set_loc(pick(L))

		return

/obj/adventurepuzzle/triggerable/adventure_announcement
	name = "announcer"
	desc = "A strange device that emits a very loud sound, truly the future."
	anchored = 1
	var/speaker_type
	var/message = null
	var/text_color = "#FF0000"
	var/sound  = null

	var/static/list/triggeracts = list("Do nothing" = "nop", "Announce message" = "announce")

	trigger_actions()
		return triggeracts

	trigger(var/act)
		switch (act)
			if ("announce")
				src.announce()
			else
				return

	proc/announce()
		for (var/mob/M in mobs)
			if (istype(get_turf(M).loc,/area/adventure))
				if(sound)
					playsound(get_turf(M), src.sound, 75, 0)
				if(message)
					M.show_message("<span class='game say bold'><span class='message'><span style='color: [src.text_color]'>[message]</span></span></span>", 2)
		return

/area/adventure/urs_dungeon
	teleport_blocked = 1
	virtual = 0


/obj/adventurepuzzle/triggerable/puzzletile
	icon = 'icons/obj/puzzletile.dmi'
	icon_state = "tile_border"
	name = "Colored Tile"
	desc = "Some kind of coloured tile."
	density = 0
	opacity = 0
	anchored = 1
	var/icon/tile = icon('icons/obj/puzzletile.dmi',"tile")


	var/is_on = 1

	var/red = 0
	var/green = 0
	var/blue = 0

	var/static/list/triggeracts = list("Do nothing" = "nop", "Toggle" = "toggle", "Turn on" = "on", "Turn off" = "off", "Add Red" = "ared", "Remove Red" = "rred","Add Blue" = "ablue", "Remove Blue" = "rblue", "Add Green" = "agreen", "Remove Green" = "rgreen")

	New()
		..()
		underlays += src.tile
		update_color()


	proc/on()
		if (!is_on)
			is_on = 1
			update_color()

	proc/off()
		if (is_on)
			is_on = 0
			update_color()

	proc/toggle()
		if (is_on)
			off()
		else
			on()

	proc/add_red()
		if(red<3)
			red++
			update_color()

	proc/remove_red()
		if(red>0)
			red--
		update_color()

	proc/add_blue()
		if(blue<3)
			blue++
		update_color()

	proc/remove_blue()
		if(blue>0)
			blue--
		update_color()

	proc/add_green()
		if(green<3)
			green++
		update_color()

	proc/remove_green()
		if(green>0)
			green--
		update_color()

	proc/update_color()
		var/new_color = "#"

		if(!is_on)
			new_color = "#000000"
		else
			switch (red)
				if(0)
					new_color += "88"
				if(1)
					new_color += "AA"
				if(2)
					new_color += "CC"
				if(3)
					new_color += "FF"

			switch (green)
				if(0)
					new_color += "88"
				if(1)
					new_color += "AA"
				if(2)
					new_color += "CC"
				if(3)
					new_color += "FF"

			switch (blue)
				if(0)
					new_color += "88"
				if(1)
					new_color += "AA"
				if(2)
					new_color += "CC"
				if(3)
					new_color += "FF"

		underlays -= src.tile
		var/icon/I = icon('icons/obj/puzzletile.dmi',"tile")
		I.Blend(new_color,ICON_ADD)
		src.tile = I
		underlays += src.tile

	trigger_actions()
		return triggeracts

	trigger(var/act)
		switch (act)
			if ("on")
				src.on()
				return
			if ("off")
				src.off()
				return
			if ("toggle")
				src.toggle()
				return
			if ("ared")
				src.add_red()
				return
			if ("rred")
				src.remove_red()
				return
			if ("agreen")
				src.add_green()
				return
			if ("rgreen")
				src.remove_green()
				return
			if ("ablue")
				src.add_blue()
				return
			if ("rblue")
				src.remove_blue()
				return

/obj/storage/closet/syndi/hidden/shovel_me

	attack_hand(mob/user as mob)
		return

	attackby(obj/item/W as obj, mob/user as mob)
		if (istype(W, /obj/item/shovel))
			user.visible_message("<span style=\"color:blue\">[user] digs in [src] with [W]!</span>")
			src.open()
		return