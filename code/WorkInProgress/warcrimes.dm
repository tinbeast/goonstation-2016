/*
stuff from quebec
*/


/turf/unsimulated/euclidean 
    name = ""
    desc = ""
    var/targetZ = 1
    var/xOffset = 0
    var/yOffset = 0
    var/turf/T = null

    new()
        T = locate((src.x + xOffset), (src.y + yOffset), src.targetZ)
        updateVis()
    ..()

    entered()
        updateVis()
        
    exited()
        updateVis()

    proc/updateVis()
        if(T)
            T.overlays.Cut()
            T.vis_contents = list()
            T.vis_contents += locate(src.loc)