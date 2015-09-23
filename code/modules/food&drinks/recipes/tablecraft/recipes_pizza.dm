
// see code/module/crafting/table.dm

////////////////////////////////////////////////PIZZA!!!////////////////////////////////////////////////

/datum/table_recipe/margheritapizza
	name = "Margherita pizza"
	reqs = list(
		/datum/reagent/consumable/ketchup = 10,
		/obj/item/weapon/reagent_containers/snacks/flatdough = 1,
		/obj/item/weapon/reagent_containers/snacks/cheesewedge = 4
	)
	result = /obj/item/weapon/reagent_containers/snacks/pizza/margherita
	category = CAT_FOOD

/datum/table_recipe/meatpizza
	name = "Meat pizza"
	reqs = list(
		/datum/reagent/consumable/ketchup = 10,
		/obj/item/weapon/reagent_containers/snacks/flatdough = 1,
		/obj/item/weapon/reagent_containers/snacks/meat/cutlet = 4,
		/obj/item/weapon/reagent_containers/snacks/cheesewedge = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/pizza/meat
	category = CAT_FOOD

/datum/table_recipe/mushroompizza
	name = "Mushroom pizza"
	reqs = list(
		/datum/reagent/consumable/ketchup = 10,
		/obj/item/weapon/reagent_containers/snacks/flatdough = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/mushroom = 5
	)
	result = /obj/item/weapon/reagent_containers/snacks/pizza/mushroom
	category = CAT_FOOD

/datum/table_recipe/vegetablepizza
	name = "Vegetable pizza"
	reqs = list(
		/datum/reagent/consumable/ketchup = 10,
		/obj/item/weapon/reagent_containers/snacks/flatdough = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/eggplant = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/carrot = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/corn = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/pizza/vegetable
	category = CAT_FOOD

/datum/table_recipe/donpocketpizza
	name = "Donkpocket pizza"
	reqs = list(
		/datum/reagent/consumable/ketchup = 10,
		/obj/item/weapon/reagent_containers/snacks/flatdough = 1,
		/obj/item/weapon/reagent_containers/snacks/donkpocket/warm = 3,
		/obj/item/weapon/reagent_containers/snacks/cheesewedge = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/pizza/donkpocket
	category = CAT_FOOD

/datum/table_recipe/dankpizza
	name = "Dank pizza"
	reqs = list(
		/datum/reagent/consumable/ketchup = 10,
		/obj/item/weapon/reagent_containers/snacks/flatdough = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/ambrosia/vulgaris = 3,
		/obj/item/weapon/reagent_containers/snacks/cheesewedge = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/pizza/dank
	category = CAT_FOOD

/datum/table_recipe/sassysagepizza
	name = "Sassysage pizza"
	reqs = list(
		/datum/reagent/consumable/ketchup = 10,
		/obj/item/weapon/reagent_containers/snacks/flatdough = 1,
		/obj/item/weapon/reagent_containers/snacks/faggot = 3,
		/obj/item/weapon/reagent_containers/snacks/cheesewedge = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/pizza/sassysage
	category = CAT_FOOD

/datum/table_recipe/custompizza
	name = "Custom pizza"
	reqs = list(
		/datum/reagent/consumable/ketchup = 10,
		/obj/item/weapon/reagent_containers/snacks/flatdough = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/pizza/custom
	category = CAT_FOOD