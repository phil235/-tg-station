/obj/machinery/computer
	name = "computer"
	icon = 'icons/obj/computer.dmi'
	icon_state = "computer"
	density = 1
	anchored = 1
	use_power = 1
	idle_power_usage = 300
	active_power_usage = 300
	var/obj/item/weapon/circuitboard/circuit = null // if circuit==null, computer can't disassembly
	var/processing = 0
	var/brightness_on = 2
	var/icon_keyboard = "generic_key"
	var/icon_screen = "generic"
	var/computer_health = 25

/obj/machinery/computer/New(location, obj/item/weapon/circuitboard/C)
	..(location)
	if(C && istype(C))
		circuit = C
	else
		if(circuit)
			circuit = new circuit(null)
	power_change()
	update_icon()

/obj/machinery/computer/initialize()
	power_change()

/obj/machinery/computer/process()
	if(stat & (NOPOWER|BROKEN))
		return 0
	return 1

/obj/machinery/computer/emp_act(severity)
	if(severity == 1)
		take_damage(rand(15,30))
	else
		take_damage(rand(15,25))
	..()

/obj/machinery/computer/ex_act(severity, target)
	if(target == src)
		qdel(src)
		return
	switch(severity)
		if(1)
			qdel(src)
		if(2)
			if(prob(25))
				qdel(src)
			else
				take_damage(rand(20,30))
		if(3)
			take_damage(rand(10,30))


/obj/machinery/computer/bullet_act(obj/item/projectile/Proj)
	if((Proj.damage_type == BRUTE || Proj.damage_type == BURN))
		take_damage(Proj.damage)
	..()

/obj/machinery/computer/update_icon()
	overlays.Cut()
	if(stat & NOPOWER)
		overlays += "[icon_keyboard]_off"
		return
	overlays += icon_keyboard
	if(stat & BROKEN)
		overlays += "[icon_state]_broken"
	else
		overlays += icon_screen

/obj/machinery/computer/power_change()
	..()
	if(stat & NOPOWER)
		SetLuminosity(0)
	else
		SetLuminosity(brightness_on)
	update_icon()
	return

/obj/machinery/computer/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/weapon/screwdriver) && circuit && !(flags&NODECONSTRUCT))
		playsound(src.loc, 'sound/items/Screwdriver.ogg', 50, 1)
		user << "<span class='notice'> You start to disconnect the monitor...</span>"
		if(do_after(user, 20/I.toolspeed, target = src))
			var/obj/structure/computerframe/A = new /obj/structure/computerframe( src.loc )
			A.circuit = circuit
			A.anchored = 1
			circuit = null
			for (var/obj/C in src)
				C.loc = src.loc
			if (stat & BROKEN)
				user << "<span class='notice'>The broken glass falls out.</span>"
				new /obj/item/weapon/shard( src.loc )
				A.state = 3
				A.icon_state = "3"
			else
				user << "<span class='notice'>You disconnect the monitor.</span>"
				A.state = 4
				A.icon_state = "4"
			qdel(src)
	else
		return ..()

/obj/machinery/computer/attacked_by(obj/item/I, mob/user)
	..()
	if(I.damtype != STAMINA)
		take_damage(I.force, I.damtype, 1)

/obj/machinery/computer/attack_paw(mob/living/user)
	user.do_attack_animation(src)
	user.changeNext_move(CLICK_CD_MELEE)
	user.visible_message("<span class='danger'>[user.name] smashes against the [src.name] with its paws.</span>",\
	"<span class='danger'>You smash against the [src.name] with your paws.</span>",\
	"<span class='italics'>You hear a clicking sound.</span>")
	take_damage(4, BRUTE, 1)

/obj/machinery/computer/attack_alien(mob/living/user)
	user.do_attack_animation(src)
	user.changeNext_move(CLICK_CD_MELEE)
	user.visible_message("<span class='danger'>[user.name] smashes against the [src.name] with its claws.</span>",\
	"<span class='danger'>You smash against the [src.name] with your claws.</span>",\
	"<span class='italics'>You hear a clicking sound.</span>")
	take_damage(20, BRUTE, 1)

/obj/machinery/computer/attack_animal(mob/living/simple_animal/M)
	M.do_attack_animation(src)
	M.changeNext_move(CLICK_CD_MELEE)
	if(M.melee_damage_upper)
		M.visible_message("<span class='danger'>[M.name] smashes against the [src.name].</span>",\
		"<span class='danger'>You smash against the [src.name].</span>",\
		"<span class='italics'>You hear a clicking sound.</span>")
		take_damage(M.melee_damage_upper, M.melee_damage_type, 1)

/obj/machinery/computer/proc/take_damage(amount, damage_type = BRUTE, attack_sound = 0)
	if(attack_sound)
		switch(damage_type)
			if(BRUTE)
				if(stat & BROKEN)
					playsound(src.loc, 'sound/effects/hit_on_shattered_glass.ogg', 70, 1)
				else
					playsound(src.loc, 'sound/effects/Glasshit.ogg', 75, 1)
			if(BURN)
				playsound(src.loc, 'sound/items/Welder.ogg', 100, 1)
	computer_health = max(computer_health - amount, 0)
	if(circuit) //no circuit, no breaking
		if(!computer_health && !(stat && BROKEN))
			playsound(loc, 'sound/effects/Glassbr3.ogg', 100, 1)
			stat |= BROKEN
			update_icon()
