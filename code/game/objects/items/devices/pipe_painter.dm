
/obj/item/device/pipe_painter
	name = "pipe painter"
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "labeler1"
	item_state = "flight"
	var/list/modes = list(
		"grey"		= rgb(255,255,255),
		"red"			= rgb(255,0,0),
		"blue"		= rgb(0,0,255),
		"cyan"		= rgb(0,256,249),
		"green"		= rgb(30,255,0),
		"yellow"	= rgb(255,198,0),
		"purple"	= rgb(130,43,255)
	)
	var/mode = "grey"

	m_amt = 5000
	g_amt = 2000

/obj/item/device/pipe_painter/afterattack(atom/A, mob/user as mob, proximity_flag)
	//Make sure we only paint adjacent items
	if(proximity_flag!= 1)
		return

	if(!istype(A,/obj/machinery/atmospherics/pipe/simple) && !istype(A,/obj/machinery/atmospherics/pipe/manifold) && !istype(A,/obj/machinery/atmospherics/pipe/manifold4w))
		return

	var/obj/machinery/atmospherics/pipe/P = A
	P.color = modes[mode]
	P.pipe_color = modes[mode]
	user.visible_message("<span class='notice'>[user] paints \the [P] [mode].</span>","<span class='notice'>You paint \the [P] [mode].</span>")
	//P.update_icon()

	if(istype(A,/obj/machinery/atmospherics/pipe/simple))
		var/obj/machinery/atmospherics/pipe/simple/pipe = A

		if(pipe.node1)
			pipe.node1.update_icon()
		if(pipe.node2)
			pipe.node2.update_icon()
	else if(istype(A,/obj/machinery/atmospherics/pipe/manifold))
		var/obj/machinery/atmospherics/pipe/manifold/pipe = A

		if(pipe.node1)
			pipe.node1.update_icon()
		if(pipe.node2)
			pipe.node2.update_icon()
		if(pipe.node3)
			pipe.node3.update_icon()
	else if(istype(A,/obj/machinery/atmospherics/pipe/manifold4w))
		var/obj/machinery/atmospherics/pipe/manifold4w/pipe = A

		if(pipe.node1)
			pipe.node1.update_icon()
		if(pipe.node2)
			pipe.node2.update_icon()
		if(pipe.node3)
			pipe.node3.update_icon()
		if(pipe.node4)
			pipe.node4.update_icon()


/obj/item/device/pipe_painter/attack_self(mob/user as mob)
	mode = input("Which colour do you want to use?","Pipe painter") in modes

/obj/item/device/pipe_painter/examine()
	..()
	usr << "It is set to [mode]."
