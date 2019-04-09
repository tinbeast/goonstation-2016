/*
stuff from quebec
*/


/turf/unsimulated/floor/euclidean
	name = "floor"
	desc = "this floor should do things"
	var/targetZ = 1
	var/xOffset = 0
	var/yOffset = 0
	var/turf/T = null

	New()
		..()
		T = locate((src.x + xOffset), (src.y + yOffset), src.targetZ)
		updateVis()

	Entered()
		updateVis()

	Exited()
		updateVis()

	proc/updateVis()
		if(T)
			T.overlays.Cut()
			T.vis_contents = list()
			for(var/atom/A in src.contents)
				if (istype(A, (/obj/overlay)))
					continue
				if (istype(A, (/mob/dead)))
					continue
				if (istype(A, (/mob/living/intangible)))
					continue
				T.vis_contents += A