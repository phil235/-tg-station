
// see code/module/crafting/table.dm

////////////////////////////////////////////////SALADS////////////////////////////////////////////////

/datum/table_recipe/herbsalad
	name = "Herb salad"
	reqs = list(
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/ambrosia/vulgaris = 3,
		/obj/item/weapon/reagent_containers/snacks/grown/apple = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/salad/herbsalad
	category = CAT_FOOD

/datum/table_recipe/aesirsalad
	name = "Aesir salad"
	reqs = list(
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/ambrosia/deus = 3,
		/obj/item/weapon/reagent_containers/snacks/grown/apple/gold = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/salad/aesirsalad
	category = CAT_FOOD

/datum/table_recipe/validsalad
	name = "Valid salad"
	reqs = list(
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/ambrosia/vulgaris = 3,
		/obj/item/weapon/reagent_containers/snacks/grown/potato = 1,
		/obj/item/weapon/reagent_containers/snacks/faggot = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/salad/validsalad
	category = CAT_FOOD

/datum/table_recipe/monkeysdelight
	name = "Monkeys delight"
	reqs = list(
		/datum/reagent/consumable/flour = 5,
		/datum/reagent/consumable/sodiumchloride = 1,
		/datum/reagent/consumable/blackpepper = 1,
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/monkeycube = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/banana = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/monkeysdelight
	category = CAT_FOOD

/datum/table_recipe/oatmeal
	name = "Oatmeal"
	reqs = list(
		/datum/reagent/consumable/milk = 10,
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/oat = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/salad/oatmeal
	category = CAT_FOOD

/datum/table_recipe/fruitsalad
	name = "Fruit salad"
	reqs = list(
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/citrus/orange = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/apple = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/grapes = 1,
		/obj/item/weapon/reagent_containers/snacks/watermelonslice = 2

	)
	result = /obj/item/weapon/reagent_containers/snacks/salad/fruit
	category = CAT_FOOD

/datum/table_recipe/junglesalad
	name = "Jungle salad"
	reqs = list(
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/apple = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/grapes = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/banana = 2,
		/obj/item/weapon/reagent_containers/snacks/watermelonslice = 2

	)
	result = /obj/item/weapon/reagent_containers/snacks/salad/jungle
	category = CAT_FOOD

/datum/table_recipe/citrusdelight
	name = "Citrus delight"
	reqs = list(
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/citrus/lime = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/citrus/lemon = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/citrus/orange = 1

	)
	result = /obj/item/weapon/reagent_containers/snacks/salad/citrusdelight
	category = CAT_FOOD

/datum/table_recipe/ricepork
	name = "Rice and pork"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/salad/boiledrice = 1,
		/obj/item/weapon/reagent_containers/snacks/meat/cutlet = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/salad/ricepork
	category = CAT_FOOD

/datum/table_recipe/eggbowl
	name = "Egg bowl"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/salad/boiledrice = 1,
		/obj/item/weapon/reagent_containers/snacks/boiledegg = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/carrot = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/corn = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/salad/eggbowl
	category = CAT_FOOD

/datum/table_recipe/ricepudding
	name = "Rice pudding"
	reqs = list(
		/datum/reagent/consumable/milk = 5,
		/datum/reagent/consumable/sugar = 5,
		/obj/item/weapon/reagent_containers/snacks/salad/boiledrice = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/salad/ricepudding
	category = CAT_FOOD

/datum/table_recipe/customsalad
	name = "Custom salad"
	reqs = list(
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/grown = 1 //phil235 check that it works
	)
	result = /obj/item/weapon/reagent_containers/snacks/salad/custom
	category = CAT_FOOD