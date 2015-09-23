
// see code/module/crafting/table.dm

////////////////////////////////////////////////BREAD////////////////////////////////////////////////

/datum/table_recipe/meatbread
	name = "Meat bread"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/store/bread/plain = 1,
		/obj/item/weapon/reagent_containers/snacks/meat/cutlet/plain = 3,
		/obj/item/weapon/reagent_containers/snacks/cheesewedge = 3
	)
	result = /obj/item/weapon/reagent_containers/snacks/store/bread/meat
	category = CAT_FOOD

/datum/table_recipe/xenomeatbread
	name = "Xenomeat bread"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/store/bread/plain = 1,
		/obj/item/weapon/reagent_containers/snacks/meat/cutlet/xeno = 3,
		/obj/item/weapon/reagent_containers/snacks/cheesewedge = 3
	)
	result = /obj/item/weapon/reagent_containers/snacks/store/bread/xenomeat
	category = CAT_FOOD

/datum/table_recipe/spidermeatbread
	name = "Spidermeat bread"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/store/bread/plain = 1,
		/obj/item/weapon/reagent_containers/snacks/meat/cutlet/spider = 3,
		/obj/item/weapon/reagent_containers/snacks/cheesewedge = 3
	)
	result = /obj/item/weapon/reagent_containers/snacks/store/bread/spidermeat
	category = CAT_FOOD

/datum/table_recipe/banananutbread
	name = "Banana nut bread"
	reqs = list(
		/datum/reagent/consumable/milk = 5,
		/obj/item/weapon/reagent_containers/snacks/dough = 1,
		/obj/item/weapon/reagent_containers/snacks/egg = 3,
		/obj/item/weapon/reagent_containers/snacks/grown/banana = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/store/bread/banana
	category = CAT_FOOD

/datum/table_recipe/tofubread
	name = "Tofu bread"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/dough = 1,
		/obj/item/weapon/reagent_containers/snacks/tofu = 3,
		/obj/item/weapon/reagent_containers/snacks/cheesewedge = 3
	)
	result = /obj/item/weapon/reagent_containers/snacks/store/bread/tofu
	category = CAT_FOOD

/datum/table_recipe/creamcheesebread
	name = "Cream cheese bread"
	reqs = list(
		/datum/reagent/consumable/milk = 5,
		/obj/item/weapon/reagent_containers/snacks/dough = 1,
		/obj/item/weapon/reagent_containers/snacks/cheesewedge = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/store/bread/creamcheese
	category = CAT_FOOD

/datum/table_recipe/mimanabread
	name = "Mimana bread"
	reqs = list(
		/datum/reagent/consumable/soymilk = 5,
		/obj/item/weapon/reagent_containers/snacks/dough = 1,
		/obj/item/weapon/reagent_containers/snacks/tofu = 3,
		/obj/item/weapon/reagent_containers/snacks/grown/mimana = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/store/bread/mimana
	category = CAT_FOOD

/datum/table_recipe/custombread
	name = "Custom bread dough"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/dough = 1,
	)
	result = /obj/item/weapon/reagent_containers/snacks/store/bread/custom
	category = CAT_FOOD