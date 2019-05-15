/*
 * Hey! You!
 * Remember to mirror your changes!
 * floors_unsimulated.dm & floors_airless.dm
 */

/turf/simulated/floor
	name = "floor"
	icon = 'icons/turf/floors.dmi'
	icon_state = "floor"
	thermal_conductivity = 0.040
	heat_capacity = 225000
	var/broken = 0
	var/burnt = 0

	New()
		..()
		var/obj/plan_marker/floor/P = locate() in src
		if (P)
			src.icon = P.icon
			src.icon_state = P.icon_state
			src.icon_old = P.icon_state
			allows_vehicles = P.allows_vehicles
			var/pdir = P.dir
			spawn(5)
				src.dir = pdir
			qdel(P)


/* ._.-'~'-._.-'~'-._.-'~'-._.-'~'-._.-'~'-._.-'~'-._.-'~'-._. */
/*-=-=-=-=I AM TIRED OF MAPING WITH NON-PATHED FLOORS=-=-=-=-=-*/
/*-=-=-=-=-=-=-=-=-=-=WITH LOVE BY ZEWAKA=-=-=-=-=-=-=-=-=-=-=-*/
/* '~'-._.-'~'-._.-'~'-._.-'~'-._.-'~'-._.-'~'-._.-'~'-._.-'~' */

/////////////////////////////////////////

/turf/simulated/floor/plating/random
	New()
		..()
		if (prob(20))
			src.icon_state = pick("panelscorched", "platingdmg1", "platingdmg2", "platingdmg3")
		if (prob(10))
			new /obj/decal/cleanable/dirt(src)
		else if (prob(2))
			var/obj/C = pick(/obj/decal/cleanable/paper, /obj/decal/cleanable/fungus, /obj/decal/cleanable/dirt, /obj/decal/cleanable/ash,\
			/obj/decal/cleanable/molten_item, /obj/decal/cleanable/machine_debris, /obj/decal/cleanable/oil, /obj/decal/cleanable/rust)
			new C (src)
		else if ((locate(/obj) in src) && prob(3))
			var/obj/C = pick(/obj/item/cable_coil/cut/small, /obj/item/brick, /obj/item/cigbutt, /obj/item/scrap, /obj/item/raw_material/scrap_metal,\
			/obj/item/spacecash, /obj/item/tile/steel, /obj/item/weldingtool, /obj/item/screwdriver, /obj/item/wrench, /obj/item/wirecutters, /obj/item/crowbar)
			new C (src)
		else if (prob(1) && prob(2)) // really rare. not "three space things spawn on destiny during first test with just prob(1)" rare.
			var/obj/C = pick(/obj/item/space_thing, /obj/item/sticker/gold_star, /obj/item/sticker/banana, /obj/item/sticker/heart,\
			/obj/item/reagent_containers/vending/bag/random, /obj/item/reagent_containers/vending/vial/random, /obj/item/clothing/mask/cigarette/random)
			new C (src)
		return

/turf/simulated/floor/plating/airless/random
	New()
		..()
		if (prob(20))
			src.icon_state = pick("panelscorched", "platingdmg1", "platingdmg2", "platingdmg3")


/////////////////////////////////////////

/turf/simulated/floor/scorched
	icon_state = "floorscorched1"

/turf/simulated/floor/scorched2
	icon_state = "floorscorched2"

/turf/simulated/floor/damaged1
	icon_state = "damaged1"

/turf/simulated/floor/damaged2
	icon_state = "damaged2"

/turf/simulated/floor/damaged3
	icon_state = "damaged3"

/turf/simulated/floor/damaged4
	icon_state = "damaged4"

/turf/simulated/floor/damaged5
	icon_state = "damaged5"

/////////////////////////////////////////

/turf/simulated/floor/plating
	name = "plating"
	icon_state = "plating"
	intact = 0

/turf/simulated/floor/plating/scorched
	icon_state = "panelscorched"

/turf/simulated/floor/plating/damaged1
	icon_state = "platingdmg1"

/turf/simulated/floor/plating/damaged2
	icon_state = "platingdmg2"

/turf/simulated/floor/plating/damaged3
	icon_state = "platingdmg3"

/////////////////////////////////////////

/turf/simulated/floor/grime
	icon_state = "floorgrime"

/////////////////////////////////////////

/turf/simulated/floor/neutral
	icon_state = "fullneutral"

/turf/simulated/floor/neutral/side
	icon_state = "neutral"

/turf/simulated/floor/neutral/corner
	icon_state = "neutralcorner"

/////////////////////////////////////////

/turf/simulated/floor/white
	icon_state = "white"

/turf/simulated/floor/white/side
	icon_state = "whitehall"

/turf/simulated/floor/white/corner
	icon_state = "whitecorner"

/turf/simulated/floor/white/checker
	icon_state = "whitecheck"

/turf/simulated/floor/white/checker2
	icon_state = "whitecheck2"

/turf/simulated/floor/white/grime
	icon_state = "floorgrime-w"

/////////////////////////////////////////

/turf/simulated/floor/black //Okay so 'dark' is darker than 'black', So 'dark' will be named black and 'black' named grey.
	icon_state = "dark"

/turf/simulated/floor/black/side
	icon_state = "greyblack"

/turf/simulated/floor/black/corner
	icon_state = "greyblackcorner"

/turf/simulated/floor/black/grime
	icon_state = "floorgrime-b"


/turf/simulated/floor/blackwhite
	icon_state = "darkwhite"

/turf/simulated/floor/blackwhite/corner
	icon_state = "darkwhitecorner"

/turf/simulated/floor/blackwhite/side
	icon_state = "whiteblack"

/turf/simulated/floor/blackwhite/whitegrime
	icon_state = "floorgrime_bw1"

/turf/simulated/floor/blackwhite/whitegrime/other
	icon_state = "floorgrime_bw2"

/////////////////////////////////////////

/turf/simulated/floor/grey
	icon_state = "fullblack"

/turf/simulated/floor/grey/side
	icon_state = "black"

/turf/simulated/floor/grey/corner
	icon_state = "blackcorner"

/turf/simulated/floor/grey/checker
	icon_state = "blackchecker"

/turf/simulated/floor/grey/blackgrime
	icon_state = "floorgrime_gb1"

/turf/simulated/floor/grey/blackgrime/other
	icon_state = "floorgrime_gb2"

/turf/simulated/floor/grey/whitegrime
	icon_state = "floorgrime_gw1"

/turf/simulated/floor/grey/whitegrime/other
	icon_state = "floorgrime_gw2"

/////////////////////////////////////////

/turf/simulated/floor/red
	icon_state = "fullred"

/turf/simulated/floor/red/side
	icon_state = "red"

/turf/simulated/floor/red/corner
	icon_state = "redcorner"

/turf/simulated/floor/red/checker
	icon_state = "redchecker"


/turf/simulated/floor/redblack
	icon_state = "redblack"

/turf/simulated/floor/redblack/corner
	icon_state = "redblackcorner"


/turf/simulated/floor/redwhite
	icon_state = "redwhite"

/turf/simulated/floor/redwhite/corner
	icon_state = "redwhitecorner"

/////////////////////////////////////////

/turf/simulated/floor/blue
	icon_state = "fullblue"

/turf/simulated/floor/blue/side
	icon_state = "blue"

/turf/simulated/floor/blue/corner
	icon_state = "bluecorner"

/turf/simulated/floor/blue/checker
	icon_state = "bluechecker"


/turf/simulated/floor/blueblack
	icon_state = "blueblack"

/turf/simulated/floor/blueblack/corner
	icon_state = "blueblackcorner"


/turf/simulated/floor/bluewhite
	icon_state = "bluewhite"

/turf/simulated/floor/bluewhite/corner
	icon_state = "bluewhitecorner"

/////////////////////////////////////////

/turf/simulated/floor/darkblue
	icon_state = "fulldblue"

/turf/simulated/floor/darkblue/checker
	icon_state = "blue-dblue"

/turf/simulated/floor/darkblue/checker/other
	icon_state = "blue-dblue2"

/////////////////////////////////////////

/turf/simulated/floor/bluegreen
	icon_state = "blugreenfull"

/turf/simulated/floor/bluegreen/side
	icon_state = "blugreen"

/turf/simulated/floor/bluegreen/corner
	icon_state = "blugreencorner"

/////////////////////////////////////////

/turf/simulated/floor/green
	icon_state = "fullgreen"

/turf/simulated/floor/green/side
	icon_state = "green"

/turf/simulated/floor/green/corner
	icon_state = "greencorner"

/turf/simulated/floor/green/checker
	icon_state = "greenchecker"


/turf/simulated/floor/greenblack
	icon_state = "greenblack"

/turf/simulated/floor/greenblack/corner
	icon_state = "greenblackcorner"


/turf/simulated/floor/greenwhite
	icon_state = "greenwhite"

/turf/simulated/floor/greenwhite/corner
	icon_state = "greenwhitecorner"

/////////////////////////////////////////

/turf/simulated/floor/greenwhite/other
	icon_state = "toxshuttle"

/turf/simulated/floor/greenwhite/other/corner
	icon_state = "toxshuttlecorner"

/////////////////////////////////////////

/turf/simulated/floor/purple
	icon_state = "fullpurple"

/turf/simulated/floor/purple/side
	icon_state = "purple"

/turf/simulated/floor/purple/corner
	icon_state = "purplecorner"

/turf/simulated/floor/purple/checker
	icon_state = "purplechecker"


/turf/simulated/floor/purpleblack
	icon_state = "purpleblack"

/turf/simulated/floor/purpleblack/corner
	icon_state = "purpleblackcorner"


/turf/simulated/floor/purplewhite
	icon_state = "purplewhite"

/turf/simulated/floor/purplewhite/corner
	icon_state = "purplewhitecorner"

/////////////////////////////////////////

/turf/simulated/floor/yellow
	icon_state = "fullyellow"

/turf/simulated/floor/yellow/side
	icon_state = "yellow"

/turf/simulated/floor/yellow/corner
	icon_state = "yellowcorner"

/turf/simulated/floor/yellow/checker
	icon_state = "yellowchecker"


/turf/simulated/floor/yellowblack
	icon_state = "yellowblack"

/turf/simulated/floor/yellowblack/corner
	icon_state = "yellowblackcorner"

/////////////////////////////////////////

/turf/simulated/floor/orange
	icon_state = "fullorange"

/turf/simulated/floor/orange/side
	icon_state = "orange"

/turf/simulated/floor/orange/corner
	icon_state = "orangecorner"


/turf/simulated/floor/orangeblack
	icon_state = "fullcaution"

/turf/simulated/floor/orangeblack/side
	icon_state = "caution"

/turf/simulated/floor/orangeblack/side/white
	icon_state = "cautionwhite"

/turf/simulated/floor/orangeblack/corner
	icon_state = "cautioncorner"

/turf/simulated/floor/orangeblack/corner/white
	icon_state = "cautionwhitecorner"

/////////////////////////////////////////

/turf/simulated/floor/grid //THE OLD ONE THAT IS NOT USED ANYMORE
	icon = 'icons/turf/floors.dmi'
	icon_state = "circuit"

/turf/simulated/floor/circuit
	name = "pharosium transduction matrix"
	desc = "An elaborate, faintly glowing matrix of isolinear circuitry."
	icon_state = "circuit"
	RL_LumR = 0
	RL_LumG = 0   //Corresponds to color of the icon_state.
	RL_LumB = 0.3

/turf/simulated/floor/circuit/green
	icon_state = "circuit-green"
	RL_LumR = 0
	RL_LumG = 0.3
	RL_LumB = 0

/turf/simulated/floor/circuit/white
	icon_state = "circuit-white"
	RL_LumR = 0.2
	RL_LumG = 0.2
	RL_LumB = 0.2

/turf/simulated/floor/circuit/purple
	icon_state = "circuit-purple"
	RL_LumR = 0.1
	RL_LumG = 0
	RL_LumB = 0.2

/turf/simulated/floor/circuit/red
	icon_state = "circuit-red"
	RL_LumR = 0.3
	RL_LumG = 0
	RL_LumB = 0

/turf/simulated/floor/circuit/vintage
	icon_state = "circuit-vint1"
	RL_LumR = 0.1
	RL_LumG = 0.1
	RL_LumB = 0.1

/turf/simulated/floor/circuit/off
	icon_state = "circuitoff"
	RL_LumR = 0
	RL_LumG = 0
	RL_LumB = 0

/////////////////////////////////////////

/turf/simulated/floor/carpet
	name = "carpet"
	icon = 'icons/turf/carpet.dmi'
	icon_state = "red1"

	break_tile()
		..()
		icon = 'icons/turf/floors.dmi'

	burn_tile()
		..()
		icon = 'icons/turf/floors.dmi'

/turf/simulated/floor/carpet/grime
	name = "cheap carpet"
	icon = 'icons/turf/floors.dmi'
	icon_state = "grimy"

/turf/simulated/floor/carpet/arcade
	icon = 'icons/turf/floors.dmi'
	icon_state = "arcade_carpet"

/turf/simulated/floor/carpet/arcade/half
	icon_state = "arcade_carpet_half"

/turf/simulated/floor/carpet/arcade/blank
	icon_state = "arcade_carpet_blank"

/turf/simulated/floor/carpet/office
	icon = 'icons/turf/floors.dmi'
	icon_state = "office_carpet"

/turf/simulated/floor/carpet/office/other
	icon = 'icons/turf/floors.dmi'
	icon_state = "office_carpet2"

/////////////////////////////////////////

/turf/simulated/floor/shiny
	icon_state = "shiny"

/turf/simulated/floor/shiny/white
	icon_state = "whiteshiny"

/turf/simulated/floor/sanitary
    icon_state = "freezerfloor"

/turf/simulated/floor/sanitary/white
    icon_state = "freezerfloor2"

/////////////////////////////////////////

/turf/simulated/floor/specialroom

/turf/simulated/floor/specialroom/arcade
	icon_state = "arcade"

/turf/simulated/floor/specialroom/bar
	icon_state = "bar"

/turf/simulated/floor/specialroom/bar/edge
	icon_state = "bar-edge"

/turf/simulated/floor/specialroom/gym
	name = "boxing mat"
	icon_state = "boxing"

/turf/simulated/floor/specialroom/gym/alt
	name = "gym mat"
	icon_state = "gym_mat"

/turf/simulated/floor/specialroom/cafeteria
	icon_state = "cafeteria"

/turf/simulated/floor/specialroom/chapel
	icon_state = "chapel"

/turf/simulated/floor/specialroom/freezer
	name = "freezer floor"
	icon_state = "freezerfloor"

/turf/simulated/floor/specialroom/freezer/white
	icon_state = "freezerfloor2"

/turf/simulated/floor/specialroom/freezer/blue
	icon_state = "freezerfloor3"

/turf/simulated/floor/specialroom/medbay
	icon_state = "medbay"

/////////////////////////////////////////

/turf/simulated/floor/arrival
	icon_state = "arrival"

/turf/simulated/floor/arrival/corner
	icon_state = "arrivalcorner"

/////////////////////////////////////////

/turf/simulated/floor/escape
	icon_state = "escape"

/turf/simulated/floor/escape/corner
	icon_state = "escapecorner"

/////////////////////////////////////////

/turf/simulated/floor/delivery
	icon_state = "delivery"

/turf/simulated/floor/delivery/white
	icon_state = "delivery_white"

/turf/simulated/floor/delivery/caution
	icon_state = "deliverycaution"


/turf/simulated/floor/bot
	icon_state = "bot"

/turf/simulated/floor/bot/white
	icon_state = "bot_white"

/turf/simulated/floor/bot/blue
	icon_state = "bot_blue"

/turf/simulated/floor/bot/caution
	icon_state = "botcaution"

/////////////////////////////////////////

/turf/simulated/floor/engine
	name = "reinforced floor"
	icon_state = "engine"
	thermal_conductivity = 0.025
	heat_capacity = 325000

	allows_vehicles = 1

/turf/simulated/floor/engine/vacuum
	name = "vacuum floor"
	icon_state = "engine"
	oxygen = 0
	nitrogen = 0.001
	temperature = TCMB

/turf/simulated/floor/engine/glow
	icon_state = "engine-glow"

/turf/simulated/floor/engine/glow/blue
	icon_state = "engine-blue"


/turf/simulated/floor/engine/caution/south
	icon_state = "engine_caution_south"

/turf/simulated/floor/engine/caution/north
	icon_state = "engine_caution_north"

/turf/simulated/floor/engine/caution/northsouth
	icon_state = "engine_caution_ns"

/turf/simulated/floor/engine/caution/west
	icon_state = "engine_caution_west"

/turf/simulated/floor/engine/caution/east
	icon_state = "engine_caution_east"

/turf/simulated/floor/engine/caution/westeast
	icon_state = "engine_caution_we"

/turf/simulated/floor/engine/caution/corner
	icon_state = "engine_caution_corners"

/turf/simulated/floor/engine/caution/corner2
	icon_state = "engine_caution_corners2"

/turf/simulated/floor/engine/caution/misc
	icon_state = "engine_caution_misc"

/////////////////////////////////////////

/turf/simulated/floor/caution/south
	icon_state = "caution_south"

/turf/simulated/floor/caution/north
	icon_state = "caution_north"

/turf/simulated/floor/caution/northsouth
	icon_state = "caution_ns"

/turf/simulated/floor/caution/west
	icon_state = "caution_west"

/turf/simulated/floor/caution/east
	icon_state = "caution_east"

/turf/simulated/floor/caution/westeast
	icon_state = "caution_we"

/turf/simulated/floor/caution/corner/se
	icon_state = "corner_east"

/turf/simulated/floor/caution/corner/sw
	icon_state = "corner_west"

/turf/simulated/floor/caution/corner/ne
	icon_state = "corner_neast"

/turf/simulated/floor/caution/corner/nw
	icon_state = "corner_nwest"

/turf/simulated/floor/caution/corner/misc
	icon_state = "floor_hazard_corners"

/turf/simulated/floor/caution/misc
	icon_state = "floor_hazard_misc"

/////////////////////////////////////////

/turf/simulated/floor/wood
	name = "wooden floor"
	icon_state = "wooden-2"

/turf/simulated/floor/wood/two
	icon_state = "wooden"

/turf/simulated/floor/wood/three
	icon_state = "wooden-3"

/turf/simulated/floor/wood/four
	icon_state = "wooden-4"

/////////////////////////////////////////
/turf/simulated/floor/stairs
	name = "stairs"
	icon_state = "Stairs_alone"

/turf/simulated/floor/stairs/wide
	icon_state = "Stairs_wide"

/turf/simulated/floor/stairs/wide/other
	icon_state = "Stairs2_wide"

/turf/simulated/floor/stairs/wide/green
	icon_state = "Stairs_wide_green"

/turf/simulated/floor/stairs/wide/middle
	icon_state = "stairs_middle"


/turf/simulated/floor/stairs/medical
	icon_state = "medstairs_alone"

/turf/simulated/floor/stairs/medical/wide
	icon_state = "medstairs_wide"

/turf/simulated/floor/stairs/medical/wide/other
	icon_state = "medstairs2_wide"

/turf/simulated/floor/stairs/medical/wide/middle
	icon_state = "medstairs_middle"


/turf/simulated/floor/stairs/quilty
	icon_state = "quiltystair"

/turf/simulated/floor/stairs/quilty/wide
	icon_state = "quiltystair2"


/turf/simulated/floor/stairs/wood
	icon_state = "wood_stairs"

/turf/simulated/floor/stairs/wood/wide
	icon_state = "wood_stairs2"


/turf/simulated/floor/stairs/wood2
	icon_state = "wood2_stairs"

/turf/simulated/floor/stairs/wood2/wide
	icon_state = "wood2_stairs2"


/turf/simulated/floor/stairs/wood3
	icon_state = "wood3_stairs"

/turf/simulated/floor/stairs/wood3/wide
	icon_state = "wood3_stairs2"


/turf/simulated/floor/stairs/dark
	icon_state = "dark_stairs"

/turf/simulated/floor/stairs/dark/wide
	icon_state = "dark_stairs2"

/////////////////////////////////////////

/turf/simulated/floor/Vspace
	name = "Vspace"
	icon_state = "flashyblue"
	var/network = "none"
	var/network_ID = "none"

/turf/simulated/floor/Vspace/brig
	name = "Brig"
	icon_state = "floor"
	network = "prison"

/turf/unsimulated/floor/vr
	icon_state = "vrfloor"

/turf/unsimulated/floor/vr/plating
	icon_state = "vrplating"

/turf/unsimulated/floor/vr/space
	icon_state = "vrspace"

/turf/unsimulated/floor/vr/white
	icon_state = "vrwhitehall"

/////////////////////////////////////////

/turf/simulated/floor/snow
	name = "snow"
	icon_state = "snow1"

	New()
		..()
		if (prob(50))
			icon_state = "snow2"
		else if (prob(25))
			icon_state = "snow3"
		else if (prob(5))
			icon_state = "snow4"
		src.dir = pick(cardinal)

/turf/simulated/floor/snow/snowball
	var/last_gather_time

	attack_hand(mob/user)
		if ((last_gather_time + 40) >= world.time)
			return
		else
			user.visible_message("<b>[user]</b> gathers up some snow and rolls it into a snowball!",\
			"You gather up some snow and roll it into a snowball!")
			var/obj/item/reagent_containers/food/snacks/snowball/S = new /obj/item/reagent_containers/food/snacks/snowball(user.loc)
			user.put_in_hand_or_drop(S)
			src.last_gather_time = world.time
			return

/turf/simulated/floor/snow/green
	name = "snow-covered floor"
	icon_state = "snowgreen"

/turf/simulated/floor/snow/green/corner
	name = "snow-covered floor"
	icon_state = "snowgreencorner"

/////////////////////////////////////////

/turf/simulated/floor/sand
	name = "sand"
	icon = 'icons/turf/outdoors.dmi'
	icon_state = "sand"

	New()
		..()
		src.dir = pick(cardinal)

/turf/simulated/floor/sandytile
	icon_state = "sandytile"

/////////////////////////////////////////

/turf/simulated/floor/grass
	name = "grass"
	icon = 'icons/turf/outdoors.dmi'
	icon_state = "grass"

/turf/simulated/floor/grass/random
	New()
		..()
		src.dir = pick(cardinal)

/turf/simulated/floor/grass/random/alt
	icon_state = "grass_eh"

/turf/simulated/floor/darkgrass
	name = "grass"
	icon = 'icons/misc/worlds.dmi'
	icon_state = "grass"


/////////////////////////////////////////

/* ._.-'~'-._.-'~'-._.-'~'-._.-'~'-._.-'~'-._.-'~'-._.-'~'-._. */
/*-=-=-=-=-=-=-=-FUCK THAT SHIT MY WRIST HURTS=-=-=-=-=-=-=-=-=*/
/* '~'-._.-'~'-._.-'~'-._.-'~'-._.-'~'-._.-'~'-._.-'~'-._.-'~' */


/turf/simulated/floor/plating/airless
	name = "airless plating"
	oxygen = 0.01
	nitrogen = 0.01
	temperature = TCMB
	//fullbright = 1
	allows_vehicles = 1

	New()
		..()
		name = "plating"

/turf/simulated/floor/plating/airless/shuttlebay
	name = "shuttle bay plating"
	icon_state = "engine"
	allows_vehicles = 1

/turf/simulated/floor/shuttlebay
	name = "shuttle bay plating"
	icon_state = "engine"
	allows_vehicles = 1

/turf/simulated/floor/metalfoam
	icon = 'icons/turf/floors.dmi'
	icon_state = "metalfoam"
	var/metal = 1
	oxygen = 0.01
	nitrogen = 0.01
	temperature = TCMB
	intact = 0
	allows_vehicles = 1 // let the constructor pods move around on these

	desc = "A flimsy foamed metal floor."

/turf/simulated/floor/blob
	name = "blob floor"
	icon = 'icons/mob/blob.dmi'
	icon_state = "bridge"
	default_melt_cap = 80

	New()
		..()
		setMaterial(getCachedMaterial("blob"))

	proc/setOvermind(var/mob/living/intangible/blob_overmind/O)
		if (!material)
			setMaterial(getCachedMaterial("blob"))
		material.color = O.color
		color = O.color

	attackby(var/obj/item/W, var/mob/user)
		if (istype(W, /obj/item/weldingtool))
			visible_message("<b>[user] hits [src] with [W]!</b>")
			if (prob(25))
				ReplaceWithSpace()

	ex_act(severity)
		if (prob(33))
			..(max(severity - 1, 1))
		else
			..(severity)

	burn_tile()
		return

// metal foam floors

/turf/simulated/floor/metalfoam/update_icon()
	if(metal == 1)
		icon_state = "metalfoam"
	else
		icon_state = "ironform"

/turf/simulated/floor/metalfoam/ex_act()
	ReplaceWithSpace()

/turf/simulated/floor/metalfoam/attackby(obj/item/C as obj, mob/user as mob)

	if(!C || !user)
		return 0
	if(prob(75 - metal * 25))
		ReplaceWithSpace()
		boutput(user, "You easily smash through the foamed metal floor.")
	else
		boutput(user, "Your attack bounces off the foamed metal floor.")

/turf/simulated/floor/CanPass(atom/movable/mover, turf/target, height=0, air_group=0)
	if (!src.allows_vehicles && (istype(mover, /obj/machinery/vehicle)))
		if (!( locate(/obj/machinery/mass_driver, src) ))
			return 0
	return ..()

/turf/unsimulated/floor/CanPass(atom/movable/mover, turf/target, height=0, air_group=0)
	if (!src.allows_vehicles && (istype(mover, /obj/machinery/vehicle)))
		if (!( locate(/obj/machinery/mass_driver, src) ))
			return 0
	return ..()

/turf/simulated/floor/burn_down()
	src.ex_act(2)

/turf/simulated/floor/ex_act(severity)
	switch(severity)
		if(1.0)
			src.ReplaceWithSpace()
		if(2.0)
			switch(pick(1,2;75,3))
				if (1)
					if(prob(33))
						var/obj/item/I = new /obj/item/raw_material/scrap_metal(src)
						if (src.material)
							I.setMaterial(src.material)
						else
							var/datum/material/M = getCachedMaterial("steel")
							I.setMaterial(M)
					src.ReplaceWithLattice()
				if(2)
					src.ReplaceWithSpace()
				if(3)
					if(prob(33))
						var/obj/item/I = new /obj/item/raw_material/scrap_metal(src)
						if (src.material)
							I.setMaterial(src.material)
						else
							var/datum/material/M = getCachedMaterial("steel")
							I.setMaterial(M)
					if(prob(80))
						src.break_tile_to_plating()
					else
						src.break_tile()
					src.hotspot_expose(1000,CELL_VOLUME)
		if(3.0)
			if (prob(50))
				src.break_tile()
				src.hotspot_expose(1000,CELL_VOLUME)
	return

/turf/simulated/floor/blob_act(var/power)
	return

/turf/simulated/floor/proc/update_icon()

/turf/simulated/floor/engine/attackby(obj/item/C as obj, mob/user as mob)
	if (!C)
		return
	if (!user)
		return
	if (istype(C, /obj/item/pen))
		var/obj/item/pen/P = C
		P.write_on_turf(src, user)
		return
	else if (istype(C, /obj/item/wrench))
		boutput(user, "<span style=\"color:blue\">Removing rods...</span>")
		playsound(src.loc, "sound/items/Ratchet.ogg", 80, 1)
		if(do_after(user, 30))
			var/obj/R1 = new /obj/item/rods(src)
			var/obj/R2 = new /obj/item/rods(src)
			if (material)
				R1.setMaterial(material)
				R2.setMaterial(material)
			else
				R1.setMaterial(getCachedMaterial("steel"))
				R2.setMaterial(getCachedMaterial("steel"))
			ReplaceWithFloor()
			var/turf/simulated/floor/F = src
			F.to_plating()
			return

/turf/simulated/floor/proc/to_plating(var/force_break)
	if(!force_break)
		if(istype(src,/turf/simulated/floor/engine)) return
	if(!intact) return
	if (!icon_old)
		icon_old = icon_state
	src.icon_state = "plating"
	intact = 0
	broken = 0
	burnt = 0
	levelupdate()

/turf/simulated/floor/proc/dismantle_wall()//can get called due to people spamming weldingtools on walls
	return

/turf/simulated/floor/proc/break_tile_to_plating()
	if(intact) to_plating()
	break_tile()

/turf/simulated/floor/proc/break_tile(var/force_break)
	if(!force_break)
		if(istype(src,/turf/simulated/floor/engine)) return
		if(istype(src,/turf/simulated/floor/shuttlebay)) return

	if(broken) return
	if (!icon_old)
		icon_old = icon_state
	if(intact)
		src.icon_state = "damaged[pick(1,2,3,4,5)]"
		broken = 1
	else
		src.icon_state = "platingdmg[pick(1,2,3)]"
		broken = 1

/turf/simulated/floor/proc/burn_tile()
	if(broken || burnt) return
	if (!icon_old)
		icon_old = icon_state
	if(intact)
		src.icon_state = "floorscorched[pick(1,2)]"
	else
		src.icon_state = "panelscorched"
	burnt = 1

/turf/simulated/floor/engine/burn_tile()
	return

/turf/simulated/floor/shuttlebay/burn_tile()
	return

/turf/simulated/floor/proc/restore_tile()
	if(intact) return
	intact = 1
	broken = 0
	burnt = 0
	if(icon_old)
		icon_state = icon_old
	else
		icon_state = "floor"
	levelupdate()

/turf/simulated/floor/attackby(obj/item/C as obj, mob/user as mob)

	if(!C || !user)
		return 0

	if(istype(C, /obj/item/crowbar) && intact)
		if(broken || burnt)
			boutput(user, "<span style=\"color:red\">You remove the broken plating.</span>")
		else
			var/atom/A = new /obj/item/tile(src)
			if(src.material)
				A.setMaterial(src.material)
			else
				var/datum/material/M = getCachedMaterial("steel")
				A.setMaterial(M)

		to_plating()
		playsound(src.loc, "sound/items/Crowbar.ogg", 80, 1)

		return

	if (istype(C, /obj/item/pen))
		var/obj/item/pen/P = C
		P.write_on_turf(src, user)
		return

	if(istype(C, /obj/item/seed/grass) && intact)
		if(broken || burnt) boutput(user, "<span style=\"color:red\">The floor is too damaged to put space grass on.</span>")
		else if (src.icon_state == "grass1" || src.icon_state == "grass2" || src.icon_state == "grass3" || src.icon_state == "grass4")
			boutput(user, "<span style=\"color:red\">There's already some grass here.</span>")
		else
			boutput(user, "<span style=\"color:blue\">You scatter seeds on the ground.</span>")
			if (!icon_old)
				icon_old = icon_state
			var/randtime = rand(5,12)
			spawn(randtime * 10)
				var/rnpick = rand(1,4)
				src.icon_state = "grass[rnpick]"
				user.u_equip(C)
				if(C)
					C.dropped()
					qdel (C)
				return
		return

	if(istype(C, /obj/item/rods))
		if (!src.intact)
			if (C:amount >= 2)
				boutput(user, "<span style=\"color:blue\">Reinforcing the floor...</span>")
				if(do_after(user, 30))
					ReplaceWithEngineFloor()
					if (C)
						C:amount -= 2
						if (C:amount <= 0)
							qdel (C) //wtf
					if(C.material) src.setMaterial(C.material)
					playsound(src.loc, "sound/items/Deconstruct.ogg", 80, 1)
			else
				boutput(user, "<span style=\"color:red\">You need more rods.</span>")
		else
			boutput(user, "<span style=\"color:red\">You must remove the plating first.</span>")
		return

	if(istype(C, /obj/item/tile) && !intact)
		restore_tile()
		var/obj/item/tile/T = C
		if(C.material)
			src.setMaterial(C.material)
		playsound(src.loc, "sound/weapons/Genhit.ogg", 50, 1)

		if(!istype(src.material, /datum/material/metal/steel))
			logTheThing("station", user, null, "constructs a floor (<b>Material:</b>: [src.material && src.material.name ? "[src.material.name]" : "*UNKNOWN*"]) at [log_loc(src)].")

		if(--T.amount < 1)
			qdel(T)
			return

	if(istype(C, /obj/item/cable_coil))
		if(!intact)
			var/obj/item/cable_coil/coil = C
			coil.turf_place(src, user)
		else
			boutput(user, "<span style=\"color:red\">You must remove the plating first.</span>")

//grabsmash??
	else if (istype(C, /obj/item/grab/))
		var/obj/item/grab/G = C
		if  (!grab_smash(G, user))
			return ..(C, user)
		else
			return

	else
		return attack_hand(user)

////////////////////////////////////////////ADVENTURE SIMULATED FLOORS////////////////////////


//////////////////////////////////////////////UNSIMULATED//////////////////////////////////////

/////////////////////// cogwerks - setpiece stuff

/turf/unsimulated/wall/setpieces
	icon = 'icons/misc/worlds.dmi'
	RL_Ignore = 0

	bloodwall
		name = "Bloody Wall"
		desc = "Gross."
		icon = 'icons/misc/meatland.dmi'
		icon_state = "bloodwall_1"

	leadwall
		name = "Shielded Wall"
		desc = "Seems pretty sturdy."
		icon_state = "leadwall"

		gray
			icon_state = "leadwall_gray"

		white
			name = "Microwave Power Transmitter"
			desc = "The outer shell of some large microwave array thing."
			icon_state = "leadwall_white"

	leadwindow
		name = "Shielded Window"
		desc = "Seems pretty sturdy."
		icon_state = "leadwindow_1"
		opacity = 0

		gray
			icon_state = "leadwindow_gray_1"

	rootwall
		name = "Overgrown Wall"
		desc = "This wall is covered in vines."
		icon_state = "rootwall"

	bluewall
		name = "blue wall"
		desc = "This doesn't look normal at all."
		icon_state = "bluewall"

	bluewall_glowing
		name = "glowing wall"
		desc = "It seems to be humming slightly. Huh."
		luminosity = 2
		icon_state = "bluewall_glow"
		can_replace_with_stuff = 1

		attackby(obj/item/W as obj, mob/user as mob)
			if (istype(W, /obj/item/device/key))
				playsound(src.loc, "sound/effects/mag_warp.ogg", 50, 1)
				src.visible_message("<span style=\"color:blue\"><b>[src] slides away!</b></span>")
				src.ReplaceWithSpace() // make sure the area override says otherwise - maybe this sucks

	hive
		name = "hive wall"
		desc = "Honeycomb's big, yeah yeah yeah."
		icon = 'icons/turf/walls.dmi'
		icon_state = "hive"

// -------------------- VR --------------------
/turf/unsimulated/floor/setpieces/gauntlet
	name = "Gauntlet Floor"
	desc = "Artist needs effort badly."
	icon = 'icons/effects/VR.dmi'
	icon_state = "gauntfloorDefault"

/turf/unsimulated/wall/setpieces/gauntlet
	name = "Gauntlet Wall"
	desc = "Is this retro? Thank god it's not team ninja."
	icon = 'icons/effects/VR.dmi'
	icon_state = "gauntwall"
// --------------------------------------------

/turf/proc/fall_to(var/turf/T, var/atom/A)
	if(istype(A, /obj/overlay/tile_effect)) //Ok enough light falling places. Fak.
		return
	if (isturf(T))
		visible_message("<span style=\"color:red\">[A] falls into [src]!</span>")
		if (ismob(A))
			var/mob/M = A
			if(!M.stat && ishuman(M))
				var/mob/living/carbon/human/H = M
				if(H.gender == MALE) playsound(H.loc, "sound/voice/male_fallscream.ogg", 100, 0, 0, H.get_age_pitch())
				else playsound(H.loc, "sound/voice/female_fallscream.ogg", 100, 0, 0, H.get_age_pitch())
			random_brute_damage(M, 50)
			M.paralysis += 5
			spawn(0)
				playsound(M.loc, pick('sound/effects/splat.ogg', 'sound/effects/fleshbr1.ogg'), 75, 1)
		T.contents += A
		T.Entered(A)
		return

/turf/unsimulated/floor/setpieces
	icon = 'icons/misc/worlds.dmi'
	RL_Ignore = 0

	ancient_pit
		name = "Broken Stairs"
		desc = "You can't see the bottom."
		icon_state = "black"

		Entered(atom/A as mob|obj)
			if (istype(A, /mob/dead) || (istype(A, /obj/critter) && A:flying))
				return ..()

			if (ancientfall.len)
				var/turf/T = pick(ancientfall)
				fall_to(T, A)
				return
			else ..()

		shaft
			name = "Elevator Shaft"

	bloodfloor
		name = "Bloody Floor"
		desc = "Yuck."
		icon_state = "bloodfloor_1"

	rootfloor
		name = "Overgrown Floor"
		desc = "This floor is covered in vines."
		icon_state = "rootfloor_1"

	oldfloor
		name = "Floor"
		desc = "Looks a bit different."
		icon_state = "old_floor1"

	bluefloor
		name = "Blue Floor"
		desc = "This floor looks awfully strange."
		icon_state = "bluefloor"

		pit
			name = "Ominous Pit"
			desc = "You can't see the bottom."
			icon_state = "deeps"

			Entered(atom/A as mob|obj)
				if (istype(A, /mob/dead))
					return ..()

				if (deepfall.len)
					var/turf/T = pick(deepfall)
					fall_to(T, A)
					return
				else ..()

	hivefloor
		name = "hive floor"
		desc = ""
		icon = 'icons/turf/floors.dmi'
		icon_state = "hive"

	swampgrass
		name = "reedy grass"
		desc = ""
		icon = 'icons/misc/worlds.dmi'
		icon_state = "swampgrass"

		New()
			..()
			dir = pick(1,2,4,8)
			return

	swampgrass_edging
		name = "reedy grass"
		desc = ""
		icon = 'icons/misc/worlds.dmi'
		icon_state = "swampgrass_edge"

////////////////////////////////////////////////