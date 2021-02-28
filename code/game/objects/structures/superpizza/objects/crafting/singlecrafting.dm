/obj/item/stack/component/get_main_recipes()
	. = ..()
	. += GLOB.component_recipes

GLOBAL_LIST_INIT(component_recipes, list ( \
	new/datum/stack_recipe("solar panel base", /obj/item/solar_assembly, 4, time = 10, on_floor = FALSE), \
	new/datum/stack_recipe("conveyor switch", /obj/item/conveyor_switch_construct, 2, time = 5, one_per_turf = 0), \
	new/datum/stack_recipe("conveyor belt", /obj/item/stack/conveyor, 2, time = 5, one_per_turf = 0), \
	new/datum/stack_recipe("apc electronics", /obj/item/electronics/apc, 1, time = 18), \
	new/datum/stack_recipe("airlock electronics", /obj/item/electronics/airalarm, 1, time = 18), \
	new/datum/stack_recipe("fire alarm electronics", /obj/item/electronics/firealarm, 1, time = 18),
	new/datum/stack_recipe("firelock electronics", /obj/item/electronics/firelock, 1, time = 18),
	new/datum/stack_recipe("air alarm electronics", /obj/item/electronics/airlock, 1, time = 18),
	new/datum/stack_recipe("tracker electronics", /obj/item/electronics/tracker, 1, time = 18),
	new/datum/stack_recipe("scrubber", /obj/machinery/portable_atmospherics/scrubber, 20, time = 50),
	new/datum/stack_recipe("pump", /obj/machinery/portable_atmospherics/pump, 20, time = 50),
	new/datum/stack_recipe("stasis machine", /obj/machinery/stasis, 20, time = 50),
	new/datum/stack_recipe("selling computer", /obj/machinery/computer/piratepad_control/ , 20, time = 50),
	new/datum/stack_recipe("selling machine", /obj/machinery/piratepad, 20, time = 50),
	))

GLOBAL_LIST_INIT(clayrec, list ( \
	new/datum/stack_recipe("clay bowl", /obj/item/pottery/wetbowl, 4, time = 10, on_floor = FALSE), \
	new/datum/stack_recipe("brick", /obj/item/pottery/brick, 1, time = 10, on_floor = FALSE), \
	))
GLOBAL_LIST_INIT(brick_recipe, list ( \
	new/datum/stack_recipe("brick wall", /turf/closed/wall/brick, 8, time = 60, one_per_turf = 1)
	))
GLOBAL_LIST_INIT(linen_recipes, list ( \
	new/datum/stack_recipe("shirt", /obj/item/clothing/under/serf, 10, time = 30, one_per_turf = 0), \
	new/datum/stack_recipe("the hat", /obj/item/clothing/head/serf, 5, time = 30, one_per_turf = 0), \
	new/datum/stack_recipe("little booties", /obj/item/clothing/shoes/serf, 5, time = 5, one_per_turf = 0), \
	new/datum/stack_recipe("sack", /obj/item/storage/backpack/sack, 20), \
	new/datum/stack_recipe("forager sock", /obj/item/storage/bag/plants/portaseeder, 10), \
	null, \
	new/datum/stack_recipe("mining satchel", /obj/item/storage/bag/ore, 10), \
	new/datum/stack_recipe("chemistry bag", /obj/item/storage/bag/chemistry, 10), \
	new/datum/stack_recipe("bio bag", /obj/item/storage/bag/bio, 10), \
	new/datum/stack_recipe("construction bag", /obj/item/storage/bag/construction, 10), \
	new/datum/stack_recipe("rug", /obj/item/stack/tile/carpet, 1), \
	))

GLOBAL_LIST_INIT(stone_recipe, list ( \
	new/datum/stack_recipe("short stone wall", /obj/structure/barricade/stonewall, 8, time = 30, one_per_turf = 1),
	new/datum/stack_recipe("hearth flooring", /obj/item/stack/tile/hearth, 8, time = 20, one_per_turf = 0),
	new/datum/stack_recipe("rock floor", /obj/item/stack/tile/rocks, 4, time = 20, one_per_turf = 0)
	))