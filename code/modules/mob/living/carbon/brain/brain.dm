//This file was auto-corrected by findeclaration.exe on 25.5.2012 20:42:32

/mob/living/carbon/brain
	languages = HUMAN
	var/obj/item/container = null
	var/timeofhostdeath = 0
	var/emp_damage = 0//Handles a type of MMI damage
	var/alert = null

/mob/living/carbon/brain/New()
	create_reagents(1000)
	..()

/mob/living/carbon/brain/Destroy()
	if(key)				//If there is a mob connected to this thing. Have to check key twice to avoid false death reporting.
		if(stat!=DEAD)	//If not dead.
			death(1)	//Brains can die again. AND THEY SHOULD AHA HA HA HA HA HA
		ghostize()		//Ghostize checks for key so nothing else is necessary.
	..()

/mob/living/carbon/brain/update_canmove()
	if(in_contents_of(/obj/mecha))	canmove = 1
	else							canmove = 0
	return canmove

/mob/living/carbon/brain/toggle_throw_mode()
	return
