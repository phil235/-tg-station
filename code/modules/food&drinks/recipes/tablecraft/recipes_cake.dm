
// see code/module/crafting/table.dm

////////////////////////////////////////////////CAKE////////////////////////////////////////////////

/datum/table_recipe/carrotcake
	name = "Carrot cake"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/cakebatter = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/carrot = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/store/cake/carrot
	category = CAT_FOOD

/datum/table_recipe/cheesecake
	name = "Cheese cake"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/cakebatter = 1,
		/obj/item/weapon/reagent_containers/snacks/cheesewedge = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/store/cake/cheese
	category = CAT_FOOD

/datum/table_recipe/applecake
	name = "Apple cake"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/cakebatter = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/apple = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/store/cake/apple
	category = CAT_FOOD

/datum/table_recipe/orangecake
	name = "Orange cake"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/cakebatter = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/citrus/orange = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/store/cake/orange
	category = CAT_FOOD

/datum/table_recipe/limecake
	name = "Lime cake"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/cakebatter = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/citrus/lime = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/store/cake/lime
	category = CAT_FOOD

/datum/table_recipe/lemoncake
	name = "Lemon cake"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/cakebatter = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/citrus/lemon = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/store/cake/lemon
	category = CAT_FOOD

/datum/table_recipe/chocolatecake
	name = "Chocolate cake"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/cakebatter = 1,
		/obj/item/weapon/reagent_containers/snacks/chocolatebar = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/store/cake/chocolate
	category = CAT_FOOD

/datum/table_recipe/birthdaycake
	name = "Birthday cake"
	reqs = list(
		/obj/item/clothing/head/cakehat = 1,
		/obj/item/weapon/reagent_containers/snacks/cakebatter = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/store/cake/birthday
	category = CAT_FOOD

/datum/table_recipe/braincake
	name = "Brain cake"
	reqs = list(
		/obj/item/organ/internal/brain = 1,
		/obj/item/weapon/reagent_containers/snacks/cakebatter = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/store/cake/brain
	category = CAT_FOOD

/datum/table_recipe/slimecake
	name = "Slime cake"
	reqs = list(
		/obj/item/slime_extract = 1,
		/obj/item/weapon/reagent_containers/snacks/cakebatter = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/store/cake/slimecake
	category = CAT_FOOD

/datum/table_recipe/pumpkinspicecake
	name = "Pumpkin spice cake"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/cakebatter = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/pumpkin = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/store/cake/pumpkinspice
	category = CAT_FOOD

/datum/table_recipe/customcake
	name = "Custom cake batter"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/cakebatter = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/store/cake/custom
	category = CAT_FOOD