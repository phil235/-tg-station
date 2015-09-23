
// see code/datums/recipe.dm


// see code/module/crafting/table.dm

////////////////////////////////////////////////SANDWICHES////////////////////////////////////////////////

/datum/table_recipe/sandwich
	name = "Sandwich"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/breadslice/plain = 2,
		/obj/item/weapon/reagent_containers/snacks/meat/steak = 1,
		/obj/item/weapon/reagent_containers/snacks/cheesewedge = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/sandwich
	category = CAT_FOOD

/datum/table_recipe/grilledcheesesandwich
	name = "Grilled cheese sandwich"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/breadslice/plain = 2,
		/obj/item/weapon/reagent_containers/snacks/cheesewedge = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/grilledcheese
	category = CAT_FOOD

/datum/table_recipe/slimesandwich
	name = "Jelly sandwich"
	reqs = list(
		/datum/reagent/toxin/slimejelly = 5,
		/obj/item/weapon/reagent_containers/snacks/breadslice/plain = 2,
	)
	result = /obj/item/weapon/reagent_containers/snacks/jellysandwich/slime
	category = CAT_FOOD

/datum/table_recipe/cherrysandwich
	name = "Jelly sandwich"
	reqs = list(
		/datum/reagent/consumable/cherryjelly = 5,
		/obj/item/weapon/reagent_containers/snacks/breadslice/plain = 2,
	)
	result = /obj/item/weapon/reagent_containers/snacks/jellysandwich/cherry
	category = CAT_FOOD

/datum/table_recipe/icecreamsandwich
	name = "Icecream sandwich"
	reqs = list(
		/datum/reagent/consumable/cream = 5,
		/datum/reagent/consumable/ice = 5,
		/obj/item/weapon/reagent_containers/snacks/icecream = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/icecreamsandwich
	category = CAT_FOOD

/datum/table_recipe/notasandwich
	name = "Not a sandwich"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/breadslice/plain = 2,
		/obj/item/clothing/mask/fakemoustache = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/notasandwich
	category = CAT_FOOD

/datum/table_recipe/customsandwich
	name = "Custom sandwich"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/breadslice = 2 //check that it works phil235
	)
	parts = list(/obj/item/weapon/reagent_containers/snacks/breadslice = 2) //to save the slice's icon for the overlay/icon.
	result = /obj/item/weapon/reagent_containers/snacks/customsandwich
	category = CAT_FOOD

