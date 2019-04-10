/*
stuff from quebec
*/


/obj/landmark/viscontents_spawn
	name = "visual mirror spawn"
	desc = "Causes turfs to push their contents to another turf's vis_contents, then goes bye-bye."
	var/targetZ = 1 // target z-level to push it's contents to
	var/xOffset = 0 // use only for pushing to the same z-level
	var/yOffset = 0 // use only for pushing to the same z-level

	New()
		var/turf/greasedupFrenchman = loc
		greasedupFrenchman.vistarget = locate(src.x + xOffset, src.y + yOffset, src.targetZ)
		greasedupFrenchman.vistarget.warptarget = greasedupFrenchman
		qdel(src) // vaccinate your children
