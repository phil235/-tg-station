
// see code/module/crafting/table.dm

////////////////////////////////////////////////EGG RECIPE's////////////////////////////////////////////////

/datum/table_recipe/friedegg
	name = "Fried egg"
	reqs = list(
		/datum/reagent/consumable/sodiumchloride = 1,
		/datum/reagent/consumable/blackpepper = 1,
		/obj/item/weapon/reagent_containers/snacks/boiledegg = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/friedegg
	category = CAT_FOOD

/datum/table_recipe/omelette
	name = "omelette"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/boiledegg = 2,
		/obj/item/weapon/reagent_containers/snacks/cheesewedge = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/omelette
	category = CAT_FOOD

/datum/table_recipe/chocolateegg
	name = "Chocolate egg"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/boiledegg = 1,
		/obj/item/weapon/reagent_containers/snacks/chocolatebar = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/chocolateegg
	category = CAT_FOOD

/datum/table_recipe/eggsbenedict
	name = "Eggs benedict"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/friedegg = 1,
		/obj/item/weapon/reagent_containers/snacks/meat/steak = 1,
		/obj/item/weapon/reagent_containers/snacks/breadslice/plain = 1,
	)
	result = /obj/item/weapon/reagent_containers/snacks/benedict
	category = CAT_FOOD
