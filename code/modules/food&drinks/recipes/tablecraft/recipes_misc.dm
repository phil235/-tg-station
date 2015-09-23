
// see code/module/crafting/table.dm

// MISC

/datum/table_recipe/candiedapple
	name = "Candied apple"
	reqs = list(/datum/reagent/water = 5,
		/datum/reagent/consumable/sugar = 5,
		/obj/item/weapon/reagent_containers/snacks/grown/apple = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/candiedapple
	category = CAT_FOOD

/datum/table_recipe/chococoin
	name = "Choco coin"
	reqs = list(
		/obj/item/weapon/coin = 1,
		/obj/item/weapon/reagent_containers/snacks/chocolatebar = 1,
	)
	result = /obj/item/weapon/reagent_containers/snacks/chococoin
	category = CAT_FOOD

/datum/table_recipe/chocoorange
	name = "Choco orange"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/grown/citrus/orange = 1,
		/obj/item/weapon/reagent_containers/snacks/chocolatebar = 1,
	)
	result = /obj/item/weapon/reagent_containers/snacks/chocoorange
	category = CAT_FOOD

/datum/table_recipe/loadedbakedpotato
	name = "Loaded baked potato"
	time = 40
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/grown/potato = 1,
		/obj/item/weapon/reagent_containers/snacks/cheesewedge = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/loadedbakedpotato
	category = CAT_FOOD

/datum/table_recipe/cheesyfries
	name = "Cheesy fries"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/fries = 1,
		/obj/item/weapon/reagent_containers/snacks/cheesewedge = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/cheesyfries
	category = CAT_FOOD

/datum/table_recipe/wrap
	name = "Wrap"
	reqs = list(/datum/reagent/consumable/soysauce = 10,
		/obj/item/weapon/reagent_containers/snacks/friedegg = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/cabbage = 1,
	)
	result = /obj/item/weapon/reagent_containers/snacks/eggwrap
	category = CAT_FOOD

/datum/table_recipe/beans
	name = "Beans"
	time = 40
	reqs = list(/datum/reagent/consumable/ketchup = 5,
		/obj/item/weapon/reagent_containers/snacks/grown/soybeans = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/beans
	category = CAT_FOOD

/datum/table_recipe/eggplantparm
	name ="Eggplant parmigiana"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/cheesewedge = 2,
		/obj/item/weapon/reagent_containers/snacks/grown/eggplant = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/eggplantparm
	category = CAT_FOOD

/datum/table_recipe/baguette
	name = "Baguette"
	time = 40
	reqs = list(/datum/reagent/consumable/sodiumchloride = 1,
				/datum/reagent/consumable/blackpepper = 1,
				/obj/item/weapon/reagent_containers/snacks/pastrybase = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/baguette
	category = CAT_FOOD

////////////////////////////////////////////////TOAST////////////////////////////////////////////////

/datum/table_recipe/slimetoast
	name = "Slime toast"
	reqs = list(
		/datum/reagent/toxin/slimejelly = 5,
		/obj/item/weapon/reagent_containers/snacks/breadslice/plain = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/jelliedtoast/slime
	category = CAT_FOOD

/datum/table_recipe/jelliedyoast
	name = "Jellied toast"
	reqs = list(
		/datum/reagent/consumable/cherryjelly = 5,
		/obj/item/weapon/reagent_containers/snacks/breadslice/plain = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/jelliedtoast/cherry
	category = CAT_FOOD

/datum/table_recipe/twobread
	name = "Two bread"
	reqs = list(
		/datum/reagent/consumable/ethanol/wine = 5,
		/obj/item/weapon/reagent_containers/snacks/breadslice/plain = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/twobread
	category = CAT_FOOD

/datum/table_recipe/burrito
	name ="Burrito"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/tortilla = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/soybeans = 2
	)
	result = /obj/item/weapon/reagent_containers/snacks/burrito
	category = CAT_FOOD

/datum/table_recipe/cheesyburrito
	name ="Cheesy burrito"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/tortilla = 1,
		/obj/item/weapon/reagent_containers/snacks/cheesewedge = 2,
		/obj/item/weapon/reagent_containers/snacks/grown/soybeans = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/cheesyburrito
	category = CAT_FOOD

/datum/table_recipe/carneburrito
	name ="Carne de asada burrito"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/tortilla = 1,
		/obj/item/weapon/reagent_containers/snacks/meat/cutlet = 2,
		/obj/item/weapon/reagent_containers/snacks/grown/soybeans = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/carneburrito
	category = CAT_FOOD

/datum/table_recipe/fuegoburrito
	name ="Fuego plasma burrito"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/tortilla = 1,,
		/obj/item/weapon/reagent_containers/snacks/grown/ghost_chili = 2,
		/obj/item/weapon/reagent_containers/snacks/grown/soybeans = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/fuegoburrito
	category = CAT_FOOD

/datum/table_recipe/melonfruitbowl
	name ="Melon fruit bowl"
	reqs = list(
		/obj/item/weapon/reagent_containers/snacks/grown/watermelon = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/apple = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/citrus/orange = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/citrus/lemon = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/banana = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/ambrosia = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/melonfruitbowl
	category = CAT_FOOD

/datum/table_recipe/spacefreezy
	name ="Space freezy"
	reqs = list(
		/datum/reagent/consumable/bluecherryjelly = 5,
		/datum/reagent/consumable/spacemountainwind = 15,
		/obj/item/weapon/reagent_containers/snacks/icecream = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/spacefreezy
	category = CAT_FOOD

/datum/table_recipe/sundae
	name ="Sundae"
	reqs = list(
		/datum/reagent/consumable/cream = 5,
		/obj/item/weapon/reagent_containers/snacks/grown/cherries = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/banana = 1,
		/obj/item/weapon/reagent_containers/snacks/icecream = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/sundae
	category = CAT_FOOD

/datum/table_recipe/honkdae
	name ="Honkdae"
	reqs = list(
		/datum/reagent/consumable/cream = 5,
		/obj/item/clothing/mask/gas/clown_hat = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/cherries = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/banana = 2,
		/obj/item/weapon/reagent_containers/snacks/icecream = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/honkdae
	category = CAT_FOOD

/datum/table_recipe/nachos
	name ="Nachos"
	reqs = list(
		/datum/reagent/consumable/sodiumchloride = 1,
		/obj/item/weapon/reagent_containers/snacks/tortilla = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/nachos
	category = CAT_FOOD

/datum/table_recipe/cheesynachos
	name ="Cheesy nachos"
	reqs = list(
		/datum/reagent/consumable/sodiumchloride = 1,
		/obj/item/weapon/reagent_containers/snacks/cheesewedge = 1,
		/obj/item/weapon/reagent_containers/snacks/tortilla = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/cheesynachos
	category = CAT_FOOD

/datum/table_recipe/cubannachos
	name ="Cuban nachos"
	reqs = list(
		/datum/reagent/consumable/ketchup = 5,
		/obj/item/weapon/reagent_containers/snacks/grown/chili = 2,
		/obj/item/weapon/reagent_containers/snacks/tortilla = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/cubannachos
	category = CAT_FOOD

/datum/table_recipe/melonkeg
	name ="Melon keg"
	reqs = list(
		/datum/reagent/consumable/ethanol/vodka = 25,
		/obj/item/weapon/reagent_containers/snacks/grown/holymelon = 1,
		/obj/item/weapon/reagent_containers/drinks/bottle/vodka = 1
	)
	parts = list(/obj/item/weapon/reagent_containers/drinks/bottle/vodka = 1)
	result = /obj/item/weapon/reagent_containers/snacks/melonkeg
	category = CAT_FOOD

/datum/table_recipe/chawanmushi
	name = "Chawanmushi"
	reqs = list(
		/datum/reagent/water = 5,
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/weapon/reagent_containers/snacks/boiledegg = 2,
		/obj/item/weapon/reagent_containers/snacks/grown/mushroom/chanterelle = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/chawanmushi
	category = CAT_FOOD

/datum/table_recipe/hotdog
	name = "Hot dog"
	reqs = list(
		/datum/reagent/consumable/ketchup = 5,
		/obj/item/weapon/reagent_containers/snacks/bun = 1,
		/obj/item/weapon/reagent_containers/snacks/sausage = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/hotdog
	category = CAT_FOOD

/datum/table_recipe/meatbun
	name = "Meat bun"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/weapon/reagent_containers/snacks/bun = 1,
		/obj/item/weapon/reagent_containers/snacks/faggot = 1,
		/obj/item/weapon/reagent_containers/snacks/grown/cabbage = 1
	)
	result = /obj/item/weapon/reagent_containers/snacks/meatbun
	category = CAT_FOOD