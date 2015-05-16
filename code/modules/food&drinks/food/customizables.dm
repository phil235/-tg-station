
#define INGREDIENTS_STANDARD 0
#define INGREDIENTS_FILL 1
#define INGREDIENTS_SCATTER 2
#define INGREDIENTS_STACK 3
#define INGREDIENTS_LINE 4

//**************************************************************
//
// Customizable Food
//
//**************************************************************


/obj/item/weapon/reagent_containers/food/snacks/proc/update_overlays(obj/item/weapon/reagent_containers/food/snacks/S)
	var/image/I = new(src.icon, "[initial(icon_state)]_filling")
	if(S.filling_color == "#FFFFFF")
		I.color = pick("#FF0000","#0000FF","#008000","#FFFF00")
	else
		I.color = S.filling_color

	switch(Ingredientsplacement)

		if(INGREDIENTS_SCATTER)
			I.pixel_x = rand(-1,1)
			I.pixel_y = rand(-1,1)
		if(INGREDIENTS_STACK)
			I.pixel_x = rand(-1,1)
			I.pixel_y = 2 * ingredients.len - 1
			overlays.Cut(ingredients.len)
			var/image/TOP = new(icon, "[icon_state]_top")
			TOP.pixel_y = 2 * ingredients.len + 3
			overlays += I
			overlays += TOP
			return
		if(INGREDIENTS_FILL)
			overlays.Cut()
			I.color = filling_color
		if(INGREDIENTS_LINE)
			I.pixel_y = rand(-5,2)
			I.pixel_x = 2 * I.pixel_y

	overlays += I

/obj/item/weapon/reagent_containers/food/snacks/proc/update_name(obj/item/weapon/reagent_containers/food/snacks/S)
	for(var/obj/item/I in ingredients)
		if(!istype(S, I.type))
			customname = "custom"
			break
	if(ingredients.len == 1) //first ingredient
		if(istype(S, /obj/item/weapon/reagent_containers/food/snacks/meat))
			var/obj/item/weapon/reagent_containers/food/snacks/meat/M = S
			if(M.subjectname)
				customname = "[M.subjectname]"
			else if(M.subjectjob)
				customname = "[M.subjectjob]"
			else
				customname = S.name
		else
			customname = initial(S.name)
	name = "[customname] [initial(name)]"

/obj/item/weapon/reagent_containers/food/snacks/proc/mix_filling_color(obj/item/weapon/reagent_containers/food/snacks/S)

	if(ingredients.len == 1)
		filling_color = S.filling_color
	else
		var/list/rgbcolor = list(0,0,0,0)
		var/customcolor = GetColors(filling_color)
		var/ingcolor =  GetColors(S.filling_color)
		rgbcolor[1] = (customcolor[1]+ingcolor[1])/2
		rgbcolor[2] = (customcolor[2]+ingcolor[2])/2
		rgbcolor[3] = (customcolor[3]+ingcolor[3])/2
		rgbcolor[4] = (customcolor[4]+ingcolor[4])/2
		filling_color = rgb(rgbcolor[1], rgbcolor[2], rgbcolor[3], rgbcolor[4])






/////////////////////////////////////////////////////////////////////////////
//////////////      Customizable Food Types     /////////////////////////////
/////////////////////////////////////////////////////////////////////////////

/obj/item/weapon/reagent_containers/food/snacks/burger/custom
	name = "burger"
	desc = "A timeless classic."
	ingMax = 12
	Ingredientsplacement = INGREDIENTS_STACK
	icon_state = "customburger"
	customizable = 1
	volume = 80
	w_class = 3


/obj/item/weapon/reagent_containers/food/snacks/store/bread/custom
	name = "bread"
	ingMax = 6
	Ingredientsplacement = INGREDIENTS_FILL
	slice_path = /obj/item/weapon/reagent_containers/food/snacks/breadslice/custom
	slices_num = 5
	icon_state = "custombread"
	customizable = 1
	volume = 80


/obj/item/weapon/reagent_containers/food/snacks/store/cake/custom
	name = "cake"
	ingMax = 6
	Ingredientsplacement = INGREDIENTS_FILL
	slice_path = /obj/item/weapon/reagent_containers/food/snacks/cakeslice/custom
	slices_num = 5
	icon_state = "customcake"
	customizable = 1
	volume = 80


/obj/item/weapon/reagent_containers/food/snacks/kebab/custom
	name = "brochette"
	desc = "Delicious food on a stick."
	Ingredientsplacement = INGREDIENTS_LINE
	list_reagents = list("nutriment" = 1)
	ingMax = 6
	icon_state = "customkebab"
	customizable = 1
	volume = 80


/obj/item/weapon/reagent_containers/food/snacks/custompasta
	name = "spaghetti"
	desc = "Noodles. With stuff. Delicious."
	Ingredientsplacement = INGREDIENTS_SCATTER
	ingMax = 6
	icon = 'icons/obj/food/pizzaspaghetti.dmi'
	icon_state = "custompasta"
	customizable = 1
	volume = 80


/obj/item/weapon/reagent_containers/food/snacks/pie/custom
	name = "pie"
	Ingredientsplacement = INGREDIENTS_FILL
	ingMax = 6
	icon_state = "custompie"
	customizable = 1
	volume = 80


/obj/item/weapon/reagent_containers/food/snacks/pizza/custom
	name = "pizza"
	desc = "A personalized pan pizza meant for only one person."
	Ingredientsplacement = INGREDIENTS_SCATTER
	ingMax = 8
	slice_path = /obj/item/weapon/reagent_containers/food/snacks/pizzaslice/custom
	slices_num = 6
	icon_state = "custompizza"
	customizable = 1
	volume = 80


/obj/item/weapon/reagent_containers/food/snacks/salad/custom
	name = "salad"
	desc = "Very tasty."
	Ingredientsplacement = INGREDIENTS_FILL
	ingMax = 6
	icon_state = "customsalad"
	customizable = 1
	volume = 80


/obj/item/weapon/reagent_containers/food/snacks/sandwich/custom
	name = "sandwich"
	desc = "A timeless classic."
	ingMax = 12
	Ingredientsplacement = INGREDIENTS_STACK
	icon_state = "customsandwich"
	trash = null
	customizable = 1
	volume = 80
	w_class = 3


/obj/item/weapon/reagent_containers/food/snacks/soup/custom
	name = "soup"
	desc = "A bowl with liquid and... stuff in it."
	Ingredientsplacement = INGREDIENTS_FILL
	ingMax = 8
	icon_state = "customsoup"
	customizable = 1
	volume = 80






////////////////////// Bowl ////////////////////////////////////////////////

/obj/item/weapon/reagent_containers/glass/bowl
	name = "bowl"
	icon_state	= "snack_bowl"
	name = "bowl"
	desc = "A simple bowl, used for soups and salads."
	icon = 'icons/obj/food/soupsalad.dmi'
	icon_state = "bowl"
	flags = OPENCONTAINER
	w_class = 3

/obj/item/weapon/reagent_containers/glass/bowl/on_reagent_change()
	..()
	update_icon()

/obj/item/weapon/reagent_containers/glass/bowl/update_icon()
	overlays.Cut()
	if(reagents.total_volume)
		var/image/filling = image('icons/obj/food/soupsalad.dmi', "fullbowl")
		filling.color = mix_color_from_reagents(reagents.reagent_list)
		overlays += filling
	else
		icon_state = "bowl"

