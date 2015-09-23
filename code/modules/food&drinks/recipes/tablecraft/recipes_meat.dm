

////////////////////////////////////////////////KEBABS////////////////////////////////////////////////

/datum/table_recipe/humankebab
	name = "Human kebab"
	reqs = list(
		/obj/item/stack/rods = 1,
		/obj/item/weapon/reagent_containers/snacks/meat/steak/plain/human = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/kebab/human
	category = CAT_FOOD

/datum/table_recipe/kebab
	name = "Kebab"
	reqs = list(
		/obj/item/stack/rods = 1,
		/obj/item/weapon/reagent_containers/snacks/meat/steak = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/kebab/monkey
	category = CAT_FOOD

/datum/table_recipe/tofukebab
	name = "Tofu kebab"
	reqs = list(
		/obj/item/stack/rods = 1,
		/obj/item/weapon/reagent_containers/snacks/tofu = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/kebab/tofu
	category = CAT_FOOD

/datum/table_recipe/customkebab
	name = "Custom kebab"
	reqs = list(
		/obj/item/stack/rods = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/kebab/custom
	category = CAT_FOOD

////////////////////////////////////////////////FISH////////////////////////////////////////////////

/datum/table_recipe/cubancarp
	name = "Cuban carp"
	reqs = list(
		/datum/reagent/consumable/flour = 5,
		/obj/item/weapon/reagent_containers/snacks/grown/chili = 1,
		/obj/item/weapon/reagent_containers/snacks/carpmeat = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/cubancarp
	category = CAT_FOOD

/datum/table_recipe/fishandchips
	name = "Fish and chips"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/fries = 1,
		/obj/item/weapon/reagent_containers/snacks/carpmeat = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/fishandchips
	category = CAT_FOOD

/datum/table_recipe/fishfingers
	name = "Fish fingers"
	reqs = list(
		/datum/reagent/consumable/flour = 5,
		/obj/item/weapon/reagent_containers/snacks/bun = 1,
		/obj/item/weapon/reagent_containers/snacks/carpmeat = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/fishfingers
	category = CAT_FOOD

/datum/table_recipe/sashimi
	name = "Sashimi"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/weapon/reagent_containers/snacks/spidereggs = 1,
		/obj/item/weapon/reagent_containers/snacks/carpmeat = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/sashimi
	category = CAT_FOOD

////////////////////////////////////////////////MR SPIDER////////////////////////////////////////////////

/datum/table_recipe/spidereggsham
	name = "Spider eggs ham"
	reqs = list(
		/datum/reagent/consumable/sodiumchloride = 1,
		/obj/item/weapon/reagent_containers/snacks/spidereggs = 1,
		/obj/item/weapon/reagent_containers/snacks/meat/cutlet/spider = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/spidereggsham
	category = CAT_FOOD

////////////////////////////////////////////////MISC RECIPE's////////////////////////////////////////////////

/datum/table_recipe/cornedbeef
	name = "Corned beef"
	reqs = list(
		/datum/reagent/consumable/sodiumchloride = 5,
		/obj/item/weapon/reagent_containers/snacks/meat/steak = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/cabbage = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/cornedbeef
	category = CAT_FOOD

/datum/table_recipe/bearsteak
	name = "Filet migrawr"
	reqs = list(
		/datum/reagent/consumable/ethanol/manly_dorf = 5,
		/obj/item/weapon/reagent_containers/snacks/meat/steak/bear = 1,
	)
	tools = list(/obj/item/weapon/lighter)
	result = /obj/item/weapon/reagent_containers/snacks/bearsteak
	category = CAT_FOOD

/datum/table_recipe/enchiladas
	name = "Enchiladas"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/meat/cutlet = 2,
		/obj/item/weapon/reagent_containers/snacks/grown/chili = 2,
		/obj/item/weapon/reagent_containers/snacks/tortilla = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/enchiladas
	category = CAT_FOOD

/datum/table_recipe/stewedsoymeat
	name = "Stewed soymeat"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/soydope = 2,
		/obj/item/weapon/reagent_containers/snacks/grown/carrot = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/tomato = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/stewedsoymeat
	category = CAT_FOOD

/datum/table_recipe/sausage
	name = "Sausage"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/faggot = 1,
		/obj/item/weapon/reagent_containers/snacks/meat/cutlet = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/sausage
	category = CAT_FOOD
