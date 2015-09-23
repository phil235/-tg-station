
// see code/module/crafting/table.dm

////////////////////////////////////////////////SPAGHETTI////////////////////////////////////////////////

/datum/table_recipe/tomatopasta
	name = "Tomato pasta"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/boiledspaghetti = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/tomato = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/pastatomato
	category = CAT_FOOD

/datum/table_recipe/copypasta
	name = "Copypasta"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/pastatomato = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/copypasta
	category = CAT_FOOD

/datum/table_recipe/spaghettimeatball
	name = "Spaghetti meatball"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/boiledspaghetti = 1,
		/obj/item/weapon/reagent_containers/snacks/faggot = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/meatballspaghetti
	category = CAT_FOOD

/datum/table_recipe/spesslaw
	name = "Spesslaw"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/boiledspaghetti = 1,
		/obj/item/weapon/reagent_containers/snacks/faggot = 4
	)
	result = /obj/item/weapon/reagent_containers/snacks/spesslaw
	category = CAT_FOOD

/datum/table_recipe/beefnoodle
	name = "Beef noodle"
	reqs = list(
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/boiledspaghetti = 1,
		/obj/item/weapon/reagent_containers/snacks/meat/cutlet = 2,
		/obj/item/weapon/reagent_containers/snacks/grown/cabbage = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/beefnoodle
	category = CAT_FOOD

/datum/table_recipe/chowmein
	name = "Chowmein"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/boiledspaghetti = 1,
		/obj/item/weapon/reagent_containers/snacks/meat/cutlet = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/cabbage = 2,
		/obj/item/weapon/reagent_containers/snacks/grown/carrot = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/chowmein
	category = CAT_FOOD

/datum/table_recipe/customspaghetti
	name = "Custom spaghetti"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/boiledspaghetti = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/custompasta
	category = CAT_FOOD