/*
stuff from quebec
*/


/turf/unsimulated/floor/euclidean
	name = ""
	desc = ""
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
			T.vis_contents += locate(src.loc)