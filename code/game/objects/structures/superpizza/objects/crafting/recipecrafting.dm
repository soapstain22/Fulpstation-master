/datum/crafting_recipe/ivdrip
	name = "IV Drip"
	reqs = list(
           /obj/item/stack/rods = 8,
           /obj/item/reagent_containers/syringe = 1,
           /obj/item/stack/sticky_tape = 1)
	result = /obj/machinery/iv_drip
	category = CAT_MISC
	time = 120

/datum/crafting_recipe/shitaxe
	name = "shitty pickaxe"
	reqs = list(
           /obj/item/stack/rods = 1,
           /obj/item/stack/sheet/mineral/wood = 1)
	result = /obj/item/pickaxe/shitaxe
	category = CAT_MISC
	always_availible = TRUE
	time = 60
/datum/crafting_recipe/axe
	name = "hatchet"
	reqs = list(
           /obj/item/stack/sheet/metal = 1,
           /obj/item/stack/sheet/mineral/wood = 1)
	result = /obj/item/hatchet/wooden
	time = 60
	category = CAT_MISC
	always_availible = TRUE
/obj/item/book/granter/crafting_recipe/guns
	name = "what is guns"
	desc = "thats so funny"
	crafting_recipe_types = list(/datum/crafting_recipe/revolver, /datum/crafting_recipe/ishotgun, /datum/crafting_recipe/c38,)
	icon = 'icons/obj/library.dmi'
	icon_state = "bullot"
	oneuse = FALSE
	remarks = list("woah", "fuckin hell", "bullet in gun...", "bang",)
/obj/item/book/granter/crafting_recipe/medi
	name = "meddysin"
	desc = "degree lmao"
	crafting_recipe_types = list(/datum/crafting_recipe/ivdrip,/datum/crafting_recipe/wheelchair)
	icon = 'icons/obj/library.dmi'
	icon_state = "boneworking_learing"
	oneuse = FALSE
	remarks = list("1 + 1 = 2..........", "drugs.......", "readin...", "pills here",)
//Pickaxe recipes
/datum/crafting_recipe/diamondpick
	name = "diamond pickaxe"
	reqs = list(
           /obj/item/stack/sheet/mineral/diamond = 5,
           /obj/item/stack/sheet/mineral/wood = 1)
	result = /obj/item/pickaxe/diamond
	category = CAT_MISC
	always_availible = TRUE
	time = 60
/datum/crafting_recipe/silverpick
	name = "silver pickaxe"
	reqs = list(
           /obj/item/stack/sheet/mineral/silver = 5,
           /obj/item/stack/sheet/mineral/wood = 1)
	result = /obj/item/pickaxe/silver
	category = CAT_MISC
	always_availible = TRUE
	time = 60
/datum/crafting_recipe/jackhammer
	name = "jackhammer"
	reqs = list(
           /obj/item/stack/sheet/mineral/silver = 5,
           /obj/item/stack/sheet/mineral/titanium = 5,
           /obj/item/stack/sheet/mineral/diamond = 5,
           /obj/item/stack/sheet/mineral/silver = 5,
           /obj/item/stack/sheet/metal = 20,)
	result = /obj/item/pickaxe/drill/jackhammer
	category = CAT_MISC
	always_availible = TRUE
	time = 60

/obj/item/book/granter/crafting_recipe/minecraft
	name = "minecraft players guide"
	desc = "brown bricks"
	crafting_recipe_types = list(/datum/crafting_recipe/diamondpick,/datum/crafting_recipe/silverpick, /datum/crafting_recipe/jackhammer)
	icon = 'icons/obj/library.dmi'
	icon_state = "boneworking_learing"
	oneuse = FALSE
	remarks = list("woah", "how curious", "readin...", "fuk",)
/obj/effect/spawner/lootdrop/research
	name = "resercsh"
	lootdoubles = FALSE
	loot = list(
		/obj/item/book/granter/crafting_recipe/guns = 3,
		/obj/item/book/granter/spell/summonitem = 3,
		/obj/item/book/granter/crafting_recipe/medi = 3,
		/obj/item/book/granter/crafting_recipe/minecraft = 3,
		)

/datum/crafting_recipe/research
	name = "conduct research experiment"
	reqs = list(
           /obj/item/paper/ = 5)
	tools = list(/obj/item/pen = 1)
	result = /obj/effect/spawner/lootdrop/research
	category = CAT_MISC
	always_availible = TRUE
	time = 60

//bb gun
/datum/crafting_recipe/bbgun
	name = "bb gun"
	reqs = list(
           /obj/item/pipe = 1,
           /obj/item/spring = 1,
           /obj/item/weaponcrafting/stock = 1,
           /obj/machinery/atmospherics/components/binary/passive_gate = 1,
           )
	result = /obj/item/pickaxe/shitaxe
	category = CAT_MISC
	always_availible = TRUE
	time = 60
/datum/crafting_recipe/revolver
	name = "revolver"
	reqs = list(
			/obj/item/revp1 = 1,
			/obj/item/handle = 1,
			/obj/item/revp2 = 1)
	result = /obj/item/gun/ballistic/revolver
	category = CAT_WEAPON
/datum/crafting_recipe/hydrobin
	name = "hydroponics bin"
	always_availible = TRUE
	reqs = list(
			/obj/item/reagent_containers/glass/bucket = 2,
			/obj/item/stack/sheet/metal/ = 4)
	result = /obj/machinery/hydroponics
	category = CAT_MISC
	always_availible = TRUE
/datum/crafting_recipe/chemlab
	name = "chem lab"
	always_availible = TRUE
	reqs = list(
			/obj/item/reagent_containers/glass/beaker = 3,
			/obj/item/stack/component = 4,
			/obj/item/stack/sheet/metal/ = 3)
	result = /obj/machinery/chem_master/lab
	category = CAT_MISC
	always_availible = TRUE
/datum/crafting_recipe/c38
	name = "reshell 38 bullet"
	reqs = list(
			/datum/reagent/gunpowder = 1,
			/obj/item/ammo_casing/c38/ = 1)
	result = /obj/item/ammo_casing/c38
	category = CAT_MISC

/datum/crafting_recipe/a762
	name = "reshell 7.62 bullet"
	reqs = list(/datum/reagent/gunpowder = 1,
				/obj/item/ammo_casing/a762 = 1)
	result = /obj/item/ammo_casing/a762
	category = CAT_MISC