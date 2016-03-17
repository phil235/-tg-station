/obj/structure/fireaxecabinet
	name = "fire axe cabinet"
	desc = "There is small label that reads \"For Emergency use only\" along with details for safe use of the axe. As if."
	var/obj/item/weapon/twohanded/fireaxe/fireaxe = new/obj/item/weapon/twohanded/fireaxe
	icon = 'icons/obj/wallmounts.dmi'
	icon_state = "fireaxe"
	anchored = 1
	density = 0
	var/locked = 1
	var/open = 0
	var/glass_hp = 60

/obj/structure/fireaxecabinet/New()
	..()
	update_icon()

/obj/structure/fireaxecabinet/attackby(obj/item/I, mob/user, params)
	if(isrobot(user) || istype(I,/obj/item/device/multitool))
		toggle_lock(user)
		return
	if(open || glass_hp <= 0)
		if(istype(I, /obj/item/weapon/twohanded/fireaxe) && !fireaxe)
			var/obj/item/weapon/twohanded/fireaxe/F = I
			if(F.wielded)
				user << "<span class='warning'>Unwield the [F.name] first.</span>"
				return
			if(!user.drop_item())
				return
			fireaxe = F
			src.contents += F
			user << "<span class='caution'>You place the [F.name] back in the [name].</span>"
			update_icon()
			return
		else if(glass_hp > 0)
			toggle_open()
	else
		return ..()

/obj/structure/fireaxecabinet/attacked_by(obj/item/I, mob/living/user)
	..()
	take_damage(I.force, user)

/obj/structure/fireaxecabinet/proc/take_damage(amount, mob/user)
	if(open || glass_hp <= 0)
		return
	playsound(src, 'sound/effects/Glasshit.ogg', 100, 1)
	if(amount >= 10)
		glass_hp -= amount
		if(glass_hp <= 0)
			playsound(src, 'sound/effects/Glassbr3.ogg', 100, 1)
		update_icon()
	else if(user)
		user << "<span class='warning'>The [name]'s protective glass glances off the hit.</span>"

/obj/structure/fireaxecabinet/ex_act(severity, target)
	switch(severity)
		if(1)
			qdel(src)
			return
		if(2)
			if(prob(50) && fireaxe)
				fireaxe.loc = src.loc
				qdel(src)
				return
		if(3)
			return

/obj/structure/fireaxecabinet/bullet_act(obj/item/projectile/Proj)
	if((Proj.damage_type == BRUTE || Proj.damage_type == BURN))
		if(Proj.damage)
			take_damage(Proj.damage)
	..()

/obj/structure/fireaxecabinet/blob_act()
	if(fireaxe)
		fireaxe.loc = src.loc
	qdel(src)

/obj/structure/fireaxecabinet/attack_hand(mob/user)
	if(open || glass_hp <= 0)
		if(fireaxe)
			user.put_in_hands(fireaxe)
			fireaxe = null
			user << "<span class='caution'>You take the fire axe from the [name].</span>"
			src.add_fingerprint(user)
			update_icon()
			return
	if(locked)
		user <<"<span class='warning'> The [name] won't budge!</span>"
		return
	else
		open = !open
		update_icon()
		return

/obj/structure/fireaxecabinet/attack_paw(mob/living/user)
	attack_hand(user)

/obj/structure/fireaxecabinet/attack_alien(mob/living/user)
	take_damage(20, user)
	user.visible_message("<span class='warning'>[user] slashes [src].</span>")

/obj/structure/fireaxecabinet/attack_animal(mob/living/simple_animal/M)
	if(M.melee_damage_upper == 0 || (M.melee_damage_type != BRUTE && M.melee_damage_type != BURN))
		return
	M.visible_message("<span class='warning'>[M] smashes against [src].</span>", \
					  "<span class='danger'>You smash against [src].</span>")
	take_damage(M.melee_damage_upper, M)

/obj/structure/fireaxecabinet/attack_ai(mob/user)
	toggle_lock(user)
	return

/obj/structure/fireaxecabinet/update_icon()
	overlays.Cut()
	if(fireaxe)
		overlays += "axe"
	if(!open)
		switch(glass_hp)
			if(-INFINITY to 0)
				overlays += "glass4"
			if(1 to 20)
				overlays += "glass3"
			if(21 to 40)
				overlays += "glass2"
			if(41 to 59)
				overlays += "glass1"
			if(60)
				overlays += "glass"
		if(locked)
			overlays += "locked"
		else
			overlays += "unlocked"
	else
		overlays += "glass_raised"

/obj/structure/fireaxecabinet/proc/toggle_lock(mob/user)
	user << "<span class = 'caution'> Resetting circuitry...</span>"
	playsound(src, 'sound/machines/locktoggle.ogg', 50, 1)
	if(do_after(user, 20, target = src))
		user << "<span class='caution'>You [locked ? "disable" : "re-enable"] the locking modules.</span>"
		locked = !locked
		update_icon()

/obj/structure/fireaxecabinet/verb/toggle_open()
	set name = "Open/Close"
	set category = "Object"
	set src in oview(1)

	if(locked)
		usr <<"<span class='warning'> The [name] won't budge!</span>"
		return
	else
		open = !open
		update_icon()
		return
