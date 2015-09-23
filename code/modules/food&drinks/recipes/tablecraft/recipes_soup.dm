
// see code/module/crafting/table.dm

////////////////////////////////////////////////SOUP////////////////////////////////////////////////

/datum/table_recipe/meatballsoup
	name = "Meatball soup"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/faggot = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/carrot = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/potato = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/meatball
	category = CAT_FOOD

/datum/table_recipe/vegetablesoup
	name = "Vegetable soup"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/carrot = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/corn = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/eggplant = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/potato = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/vegetable
	category = CAT_FOOD

/datum/table_recipe/nettlesoup
	name = "Nettle soup"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/grown/nettle = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/potato = 1,
		/obj/item/weapon/reagent_containers/snacks/boiledegg = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/nettle
	category = CAT_FOOD

/datum/table_recipe/wingfangchu
	name = "Wingfangchu"
	reqs = list(
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/weapon/reagent_containers/snacks/meat/cutlet/xeno = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/wingfangchu
	category = CAT_FOOD

/datum/table_recipe/wishsoup
	name = "Wish soup"
	reqs = list(
		/datum/reagent/water = 20,
		/obj/item/weapon/reagent_containers/glass/bowl = 1
	)
	result= /obj/item/weapon/reagent_containers/snacks/soup/wish
	category = CAT_FOOD

/datum/table_recipe/hotchili
	name = "Hot chili"
	reqs = list(
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/meat/cutlet = 2,
		/obj/item/weapon/reagent_containers/snacks/grown/chili = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/tomato = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/hotchili
	category = CAT_FOOD

/datum/table_recipe/coldchili
	name = "Cold chili"
	reqs = list(
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/meat/cutlet = 2,
		/obj/item/weapon/reagent_containers/snacks/grown/icepepper = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/tomato = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/coldchili
	category = CAT_FOOD

/datum/table_recipe/tomatosoup
	name = "Tomato soup"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/tomato = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/tomato
	category = CAT_FOOD

/datum/table_recipe/milosoup
	name = "Milo soup"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/soydope = 2,
		/obj/item/weapon/reagent_containers/snacks/tofu = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/milo
	category = CAT_FOOD

/datum/table_recipe/bloodsoup
	name = "Blood soup"
	reqs = list(
		/datum/reagent/blood = 10,
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/tomato/blood = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/blood
	category = CAT_FOOD

/datum/table_recipe/slimesoup
	name = "Slime soup"
	reqs = list(
			/datum/reagent/water = 10,
			/datum/reagent/toxin/slimejelly = 5,
			/obj/item/weapon/reagent_containers/glass/bowl = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/slime
	category = CAT_FOOD

/datum/table_recipe/clownstears
	name = "Clowns tears"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/banana = 1,
		/obj/item/weapon/ore/bananium = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/clownstears
	category = CAT_FOOD

/datum/table_recipe/mysterysoup
	name = "Mystery soup"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/badrecipe = 1,
		/obj/item/weapon/reagent_containers/snacks/tofu = 1,
		/obj/item/weapon/reagent_containers/snacks/boiledegg = 1,
		/obj/item/weapon/reagent_containers/snacks/cheesewedge = 1,
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/mystery
	category = CAT_FOOD

/datum/table_recipe/mushroomsoup
	name = "Mushroom soup"
	reqs = list(
		/datum/reagent/consumable/milk = 5,
		/datum/reagent/water = 5,
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/mushroom/chanterelle = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/mushroom
	category = CAT_FOOD

/datum/table_recipe/beetsoup
	name = "Beet soup"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/whitebeet = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/cabbage = 1,
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/beet
	category = CAT_FOOD

/datum/table_recipe/stew
	name = "Stew"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/tomato = 1,
		/obj/item/weapon/reagent_containers/snacks/meat/cutlet = 3,
		/obj/item/weapon/reagent_containers/snacks/grown/potato = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/carrot = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/eggplant = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/mushroom = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/stew
	category = CAT_FOOD

/datum/table_recipe/spacylibertyduff
	name = "Spacy liberty duff"
	reqs = list(
		/datum/reagent/consumable/ethanol/vodka = 5,
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/mushroom/libertycap = 3
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/spacylibertyduff
	category = CAT_FOOD

/datum/table_recipe/amanitajelly
	name = "Amanita jelly"
	reqs = list(
		/datum/reagent/consumable/ethanol/vodka = 5,
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/mushroom/amanita = 3
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/amanitajelly
	category = CAT_FOOD

/datum/table_recipe/sweetpotatosoup
	name = "Sweet potato soup"
	reqs = list(
		/datum/reagent/water = 10,
		/datum/reagent/consumable/sugar = 5,
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/sweetpotato = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/sweetpotato
	category = CAT_FOOD

/datum/table_recipe/redbeetsoup
	name = "Red beet soup"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/weapon/reagent_containers/glass/bowl = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/redbeet = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/cabbage = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/beet/red
	category = CAT_FOOD

/datum/table_recipe/customsoup
	name = "Custom soup"
	reqs = list(
		/datum/reagent/water = 10,
		/obj/item/weapon/reagent_containers/glass/bowl = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/soup/custom
	category = CAT_FOOD