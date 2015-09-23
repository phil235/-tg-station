/obj/item/weapon/reagent_containers/snacks
	name = "snack"
	desc = "Yummy."
	icon = 'icons/obj/food/food.dmi'
	icon_state = null
	var/bitesize = 2
	var/bitecount = 0
	var/trash = null
	var/slice_path    // for sliceable food. path of the item resulting from the slicing
	var/slices_num
	var/eatverb
	var/wrapped = 0
	var/dried_type = null
	var/potency = null
	var/dry = 0
	var/cooked_type = null  //for microwave cooking. path of the resulting item after microwaving
	var/filling_color = "#FFFFFF" //color to use when added to custom food.
	var/junkiness = 0  //for junk food. used to lower human satiety.
	var/list/bonus_reagents = list() //the amount of reagents (usually nutriment and vitamin) added to crafted/cooked snacks, on top of the ingredients reagents.

	var/customizable = 0
	var/ingMax = 0
	var/list/ingredients = list()
	var/Ingredientsplacement = INGREDIENTS_STANDARD
	var/customname = "custom"
	var/raw = 0
	var/food_name = "snack"
	var/cooked_icon = "" //new icon when cooked
	var/icon_raw = "" //new icon when uncooked

	possible_transfer_amounts = null
	volume = 50	//Sets the default container amount for all food items.
	burn_state = 0 //Burnable

/obj/item/weapon/reagent_containers/snacks/New()
		..()
		pixel_x = rand(-5, 5)	//Randomizes postion slightly.
		pixel_y = rand(-5, 5)

	//Placeholder for effect that trigger on eating that aren't tied to reagents.
/obj/item/weapon/reagent_containers/snacks/proc/On_Consume()
	if(!usr)	return
	if(!reagents.total_volume)
		usr.unEquip(src)	//so icons update :[

		if(trash)
			if(ispath(trash,/obj/item/weapon/grown))
				var/obj/item/TrashItem = new trash(usr,src.potency)
				usr.put_in_hands(TrashItem)
			else if(ispath(trash,/obj/item))
				var/obj/item/TrashItem = new trash(usr)
				usr.put_in_hands(TrashItem)
			else if(istype(trash,/obj/item))
				usr.put_in_hands(trash)
		qdel(src)
	return


/obj/item/weapon/reagent_containers/snacks/attack_self(mob/user)
	if(customizable) //renaming the food
		var/txt = stripped_input(user, "What would you like the food to be called?", "Food Naming", "", 30)
		if(txt)
			ingMax = ingredients.len
			user << "<span class='notice'>You add a last touch to the dish by renaming it.</span>"
			customname = txt
			name = "[customname] [initial(name)]"
	return


/obj/item/weapon/reagent_containers/snacks/attack(mob/M, mob/user, def_zone)
	if(!eatverb)
		eatverb = pick("bite","chew","nibble","gnaw","gobble","chomp")
	if(!reagents.total_volume)						//Shouldn't be needed but it checks to see if it has anything left in it.
		user << "<span class='notice'>None of [src] left, oh no!</span>"
		M.unEquip(src)	//so icons update :[
		qdel(src)
		return 0
	if(iscarbon(M))
		if(!canconsume(M, user))
			return 0

		var/fullness = M.nutrition + 10
		for(var/datum/reagent/consumable/C in M.reagents.reagent_list) //we add the nutrition value of what we're currently digesting
			fullness += C.nutriment_factor * C.volume / C.metabolization_rate

		if(M == user)								//If you're eating it yourself.
			if(raw)
				M << "<span class='warning'>[src] isn't cooked, you shouldn't eat it raw.</span>"
				return 0
			else if(junkiness && M.satiety < -150 && M.nutrition > NUTRITION_LEVEL_STARVING + 50 )
				M << "<span class='notice'>You don't feel like eating any more junk food at the moment.</span>"
				return 0
			else if(wrapped)
				M << "<span class='warning'>You can't eat wrapped food!</span>"
				return 0
			else if(fullness <= 50)
				M << "<span class='notice'>You hungrily [eatverb] some of \the [src] and gobble it down!</span>"
			else if(fullness > 50 && fullness < 150)
				M << "<span class='notice'>You hungrily begin to [eatverb] \the [src].</span>"
			else if(fullness > 150 && fullness < 500)
				M << "<span class='notice'>You [eatverb] \the [src].</span>"
			else if(fullness > 500 && fullness < 600)
				M << "<span class='notice'>You unwillingly [eatverb] a bit of \the [src].</span>"
			else if(fullness > (600 * (1 + M.overeatduration / 2000)))	// The more you eat - the more you can eat
				M << "<span class='warning'>You cannot force any more of \the [src] to go down your throat!</span>"
				return 0
		else
			if(!isbrain(M))		//If you're feeding it to someone else.
				if(wrapped)
					return 0
				if(fullness <= (600 * (1 + M.overeatduration / 1000)))
					M.visible_message("<span class='danger'>[user] attempts to feed [M] [src].</span>", \
										"<span class='userdanger'>[user] attempts to feed [M] [src].</span>")
				else
					M.visible_message("<span class='warning'>[user] cannot force anymore of [src] down [M]'s throat!</span>", \
										"<span class='warning'>[user] cannot force anymore of [src] down [M]'s throat!</span>")
					return 0

				if(!do_mob(user, M))
					return
				add_logs(user, M, "fed", object="[reagentlist(src)]")
				M.visible_message("<span class='danger'>[user] forces [M] to eat [src].</span>", \
									"<span class='userdanger'>[user] feeds [M] to eat [src].</span>")

			else
				user << "<span class='warning'>[M] doesn't seem to have a mouth!</span>"
				return

		if(reagents)								//Handle ingestion of the reagent.
			M.satiety = max(M.satiety-junkiness, -200)
			playsound(M.loc,'sound/items/eatfood.ogg', rand(10,50), 1)
			if(reagents.total_volume)
				reagents.reaction(M, INGEST)
				spawn(5)
					if(raw)
						reagents.add_reagent("????", bitesize) //ingesting raw food gives tox damage.
					reagents.trans_to(M, bitesize)
					volume = max(volume-bitesize,0) //so you can't refill food with a syringe endlessly
					bitecount++
					On_Consume()
			return 1

	return 0


/obj/item/weapon/reagent_containers/snacks/afterattack(obj/target, mob/user , proximity)
	return


/obj/item/weapon/reagent_containers/snacks/examine(mob/user)
	..()
	if(bitecount == 1)
		user << "[src] was bitten by someone!"
	else if(bitecount > 2)
		user << "[src] was bitten multiple times!"

	if(ingredients.len)
		var/ingredients_listed = ""
		for(var/obj/item/weapon/reagent_containers/snacks/ING in ingredients)
			ingredients_listed += "[ING.name], "
		var/size = "standard"
		if(ingredients.len<2)
			size = "small"
		if(ingredients.len>5)
			size = "big"
		if(ingredients.len>8)
			size = "monster"
		user << "It contains [ingredients_listed]making a [size]-sized [initial(name)]."
	else if(customizable)
		user << "It contains no ingredients."



/obj/item/weapon/reagent_containers/snacks/attackby(obj/item/weapon/W, mob/user, params)
	if(istype(W,/obj/item/weapon/storage))
		..() // -> item/attackby()
		return 0
	if(is_sharp(W))
		var/sharpness = is_sharp(W)
		if(slice(sharpness, W, user))
			return 1

	if(customizable)
		//adding an ingredient
		if(istype(W,/obj/item/weapon/reagent_containers/snacks))
			var/obj/item/weapon/reagent_containers/snacks/S = W
			if(S.w_class > 2)
				user << "<span class='warning'>The ingredient is too big for [src]!</span>"
			else if((ingredients.len >= ingMax) || (reagents.total_volume >= volume))
				user << "<span class='warning'>You can't add more ingredients to [src]!</span>"
			else
				user.drop_item()
				if(S.trash)
					new S.trash(get_turf(user))
					S.trash = null  //we remove the plate before adding the ingredient
				ingredients += S
				S.loc = src
				mix_filling_color(S)
				S.reagents.trans_to(src, S.reagents.total_volume)
				update_overlays(S)
				user << "<span class='notice'>You add the [S.name] to the [name].</span>"
				update_name(S)



//Called when you finish tablecrafting a snack.
/obj/item/weapon/reagent_containers/snacks/CheckParts()
	if(icon_raw)
		raw = 1
		name = "raw [initial(name)]"
		icon_state = icon_raw
	if(!raw && bonus_reagents.len)
		for(var/r_id in bonus_reagents)
			var/amount = bonus_reagents[r_id]
			reagents.add_reagent(r_id, amount)
	if(customizable)
		name = "[customname] [initial(name)]"

/obj/item/weapon/reagent_containers/snacks/proc/slice(var/accuracy, obj/item/weapon/W, mob/user)
	if((slices_num <= 0 || !slices_num) || !slice_path) //is the food sliceable?
		return 0

	if ( \
			!isturf(src.loc) || \
			!(locate(/obj/structure/table) in src.loc) && \
			!(locate(/obj/structure/optable) in src.loc) && \
			!(locate(/obj/item/weapon/storage/bag/tray) in src.loc) \
		)
		user << "<span class='warning'>You cannot slice [src] here! You need a table or at least a tray.</span>"
		return 1

	var/slices_lost = 0
	if (accuracy > 1)
		user.visible_message( \
			"[user] slices [src].", \
			"<span class='notice'>You slice [src].</span>" \
		)
	else
		user.visible_message( \
			"[user] inaccurately slices [src] with [W]!", \
			"<span class='notice'>You inaccurately slice [src] with your [W]!</span>" \
		)
		slices_lost = rand(1,min(1,round(slices_num/2)))

	var/reagents_per_slice = reagents.total_volume/slices_num
	for(var/i=1 to (slices_num-slices_lost))
		var/obj/item/weapon/reagent_containers/snacks/slice = new slice_path (loc)
		initialize_slice(slice, reagents_per_slice)
	qdel(src)

/obj/item/weapon/reagent_containers/snacks/proc/initialize_slice(obj/item/weapon/reagent_containers/snacks/slice, reagents_per_slice)
	slice.create_reagents(slice.volume)
	slice.raw = raw
	reagents.trans_to(slice,reagents_per_slice)
	if(customizable)
		slice.name = "[customname] [initial(slice.name)]"
		slice.ingredients = ingredients
		slice.filling_color = filling_color
		slice.update_overlays(src)

// initialize_cooked_food() is called when microwaving the food
/obj/item/weapon/reagent_containers/snacks/proc/initialize_cooked_food(obj/item/weapon/reagent_containers/snacks/S, cooking_efficiency = 1)
	S.create_reagents(S.volume)
	if(reagents)
		reagents.trans_to(S, reagents.total_volume)
	if(S.bonus_reagents.len)
		for(var/r_id in S.bonus_reagents)
			var/amount = S.bonus_reagents[r_id] * cooking_efficiency
			S.reagents.add_reagent(r_id, amount)

/obj/item/weapon/reagent_containers/snacks/Destroy()
	if(contents)
		for(var/atom/movable/something in contents)
			something.loc = get_turf(src)
	if(customizable)
		for(var/A in ingredients)
			qdel(A)
	..()

/obj/item/weapon/reagent_containers/snacks/attack_animal(mob/M)
	if(iscorgi(M))
		if(bitecount == 0 || prob(50))
			M.emote("me", 1, "nibbles away at \the [src]")
		bitecount++
		if(bitecount >= 5)
			var/sattisfaction_text = pick("burps from enjoyment", "yaps for more", "woofs twice", "looks at the area where \the [src] was")
			if(sattisfaction_text)
				M.emote("me", 1, "[sattisfaction_text]")
			qdel(src)


//////////////////////////////////////////////////
////////////////////////////////////////////Snacks
//////////////////////////////////////////////////
//Items in the "Snacks" subcategory are food items that people actually eat. The key points are that they are created
//	already filled with reagents and are destroyed when empty. Additionally, they make a "munching" noise when eaten.

//Notes by Darem: Food in the "snacks" subtype can hold a maximum of 50 units Generally speaking, you don't want to go over 40
//	total for the item because you want to leave space for extra condiments. If you want effect besides healing, add a reagent for
//	it. Try to stick to existing reagents when possible (so if you want a stronger healing effect, just use omnizine). On use
//	effect (such as the old officer eating a donut code) requires a unique reagent (unless you can figure out a better way).

//The nutriment reagent and bitesize variable replace the old heal_amt and amount variables. Each unit of nutriment is equal to
//	2 of the old heal_amt variable. Bitesize is the rate at which the reagents are consumed. So if you have 6 nutriment and a
//	bitesize of 2, then it'll take 3 bites to eat. Unlike the old system, the contained reagents are evenly spread among all
//	the bites. No more contained reagents = no more bites.

//Here is an example of the new formatting for anyone who wants to add more food items.
///obj/item/weapon/reagent_containers/snacks/xenoburger			//Identification path for the object.
//	name = "Xenoburger"													//Name that displays in the UI.
//	desc = "Smells caustic. Tastes like heresy."						//Duh
//	icon_state = "xburger"												//Refers to an icon in food.dmi
//	New()																//Don't mess with this.
//		..()															//Same here.
//		reagents.add_reagent("xenomicrobes", 10)						//This is what is in the food item. you may copy/paste
//		reagents.add_reagent("nutriment", 2)							//	this line of code for all the contents.
//		bitesize = 3													//This is the amount each bite consumes.

//All foods are distributed among various categories. Use common sense.

/////////////////////////////////////////////////Store////////////////////////////////////////
// All the food items that can store an item inside itself, like bread or cake.


/obj/item/weapon/reagent_containers/snacks/store
	w_class = 3
	var/stored_item = 0

/obj/item/weapon/reagent_containers/snacks/store/attackby(obj/item/weapon/W, mob/user, params)
	..()
	if(W.w_class <= 2 && !istype(W, /obj/item/weapon/reagent_containers/snacks) ) //can't slip snacks inside food
		if(is_sharp(W))
			return 0
		if(stored_item)
			return 0
		if(!iscarbon(user))
			return 0
		if(contents.len >= 20)
			user << "<span class='warning'>[src] is full.</span>"
			return 0
		user << "<span class='notice'>You slip [W] inside [src].</span>"
		user.unEquip(W)
		add_fingerprint(user)
		contents += W
		stored_item = 1
		return 1 // no afterattack here

/obj/item/weapon/reagent_containers/snacks/MouseDrop(atom/over)
	var/turf/T = get_turf(src)
	var/obj/structure/table/TB = locate(/obj/structure/table) in T
	if(TB)
		TB.MouseDrop(over)
	else
		..()

#undef INGREDIENTS_STANDARD
#undef INGREDIENTS_FILL
#undef INGREDIENTS_SCATTER
#undef INGREDIENTS_STACK
#undef INGREDIENTS_LINE
