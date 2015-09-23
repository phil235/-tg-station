
// see code/module/crafting/table.dm

////////////////////////////////////////////////DONUTS////////////////////////////////////////////////

/datum/table_recipe/chaosdonut
	name = "Chaos donut"
	reqs = list(
		/datum/reagent/consumable/frostoil = 5,
		/datum/reagent/consumable/capsaicin = 5,
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/donut/chaos
	category = CAT_FOOD

/datum/table_recipe/donut
	time = 15
	name = "Donut"
	reqs = list(
		/datum/reagent/consumable/sugar = 1,
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/donut
	category = CAT_FOOD

/datum/table_recipe/jellydonut
	name = "Jelly donut"
	reqs = list(
		/datum/reagent/consumable/berryjuice = 5,
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/donut/jelly
	category = CAT_FOOD

/datum/table_recipe/cherryjellydonut
	name = "Cherry jelly donut"
	reqs = list(
		/datum/reagent/consumable/cherryjelly = 5,
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/donut/jelly/cherryjelly
	category = CAT_FOOD

/datum/table_recipe/slimejellydonut
	name = "Slime jelly donut"
	reqs = list(
		/datum/reagent/toxin/slimejelly = 5,
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/donut/jelly/slimejelly
	category = CAT_FOOD

////////////////////////////////////////////////WAFFLES////////////////////////////////////////////////

/datum/table_recipe/waffles
	time = 15
	name = "Waffles"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/waffles
	category = CAT_FOOD


/datum/table_recipe/soylenviridians
	name = "Soylent viridians"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 2,
		/obj/item/weapon/reagent_containers/snacks/grown/soybeans = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/soylenviridians
	category = CAT_FOOD

/datum/table_recipe/soylentgreen
	name = "Soylent green"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 2,
		/obj/item/weapon/reagent_containers/snacks/meat/slab/human = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/soylentgreen
	category = CAT_FOOD


/datum/table_recipe/rofflewaffles
	name = "Roffle waffles"
	reqs = list(
		/datum/reagent/mushroomhallucinogen = 5,
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/rofflewaffles
	category = CAT_FOOD

////////////////////////////////////////////////DONKPOCCKETS////////////////////////////////////////////////

/datum/table_recipe/donkpocket
	time = 15
	name = "Donkpocket"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 1,
		/obj/item/weapon/reagent_containers/snacks/faggot = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/donkpocket
	category = CAT_FOOD


////////////////////////////////////////////////MUFFINS////////////////////////////////////////////////

/datum/table_recipe/muffin
	time = 15
	name = "Muffin"
	reqs = list(
		/datum/reagent/consumable/milk = 5,
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/muffin
	category = CAT_FOOD

/datum/table_recipe/berrymuffin
	name = "Berry muffin"
	reqs = list(
		/datum/reagent/consumable/milk = 5,
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/berries = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/muffin/berry
	category = CAT_FOOD

/datum/table_recipe/booberrymuffin
	name = "Booberry muffin"
	reqs = list(
		/datum/reagent/consumable/milk = 5,
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/berries = 1,
		/obj/item/weapon/ectoplasm = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/muffin/booberry
	category = CAT_FOOD

////////////////////////////////////////////OTHER////////////////////////////////////////////

/datum/table_recipe/sugarcookie
	time = 15
	name = "Sugar cookie"
	reqs = list(
		/datum/reagent/consumable/sugar = 5,
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/sugarcookie
	category = CAT_FOOD

/datum/table_recipe/fortunecookie
	time = 15
	name = "Fortune cookie"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 1,
		/obj/item/weapon/paper = 1
	)
	parts =	list(
		/obj/item/weapon/paper = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/fortunecookie
	category = CAT_FOOD

/datum/table_recipe/poppypretzel
	time = 15
	name = "Poppy pretzel"
	reqs = list(
		/obj/item/seeds/poppyseed = 1,
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/poppypretzel
	category = CAT_FOOD

/datum/table_recipe/plumphelmetbiscuit
	time = 15
	name = "Plumphelmet biscuit"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/mushroom/plumphelmet = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/plumphelmetbiscuit
	category = CAT_FOOD

/datum/table_recipe/cracker
	time = 15
	name = "Cracker"
	reqs = list(
		/datum/reagent/consumable/sodiumchloride = 1,
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 1,
	)
	result = /obj/item/weapon/reagent_containers/snacks/cracker
	category = CAT_FOOD

/datum/table_recipe/chococornet
	name = "Choco cornet"
	reqs = list(
		/datum/reagent/consumable/sodiumchloride = 1,
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 1,
		/obj/item/weapon/reagent_containers/snacks/chocolatebar = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/chococornet
	category = CAT_FOOD

/datum/table_recipe/oatmealcookie
	name = "Oatmeal cookie"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/oat = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/oatmealcookie

/datum/table_recipe/raisincookie
	name = "Raisin cookie"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/no_raisin = 1,
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/oat = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/raisincookie
	category = CAT_FOOD

/datum/table_recipe/cherrycupcake
	name = "Cherry cupcake"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/cherries = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/cherrycupcake
	category = CAT_FOOD

/datum/table_recipe/bluecherrycupcake
	name = "Blue cherry cupcake"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/rawpastrybase = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/bluecherries = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/bluecherrycupcake
	category = CAT_FOOD