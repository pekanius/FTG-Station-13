/obj/item/weapon/banhammer
	desc = "A banhammer"
	name = "banhammer"
	icon = 'icons/obj/items.dmi'
	icon_state = "toyhammer"
	slot_flags = SLOT_BELT
	throwforce = 0
	w_class = 1.0
	throw_speed = 3
	throw_range = 7
	attack_verb = list("banned")

/obj/item/weapon/banhammer/suicide_act(mob/user)
		user.visible_message("<span class='suicide'>[user] is hitting \himself with the [src.name]! It looks like \he's trying to ban \himself from life.</span>")
		return (BRUTELOSS|FIRELOSS|TOXLOSS|OXYLOSS)

/obj/item/weapon/banhammer/attack(mob/M, mob/user)
	M << "<font color='red'><b> You have been banned FOR NO REISIN by [user]<b></font>"
	user << "<font color='red'> You have <b>BANNED</b> [M]</font>"
	playsound(loc, 'sound/effects/adminhelp.ogg', 15) //keep it at 15% volume so people don't jump out of their skin too much


/obj/item/weapon/nullrod
	name = "null rod"
	desc = "A rod of pure obsidian, its very presence disrupts and dampens the powers of Nar-Sie's followers."
	icon_state = "nullrod"
	item_state = "nullrod"
	slot_flags = SLOT_BELT
	force = 15
	throw_speed = 3
	throw_range = 4
	throwforce = 10
	w_class = 1

/obj/item/weapon/nullrod/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is impaling \himself with the [src.name]! It looks like \he's trying to commit suicide.</span>")
	return (BRUTELOSS|FIRELOSS)

/obj/item/weapon/sord
	name = "\improper SORD"
	desc = "This thing is so unspeakably shitty you are having a hard time even holding it."
	icon_state = "sord"
	item_state = "sord"
	slot_flags = SLOT_BELT
	force = 2
	throwforce = 1
	w_class = 3
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")

/obj/item/weapon/sord/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is impaling \himself with the [src.name]! It looks like \he's trying to commit suicide.</span>")
	return(BRUTELOSS)

/obj/item/weapon/claymore
	name = "claymore"
	desc = "What are you standing around staring at this for? Get to killing!"
	icon_state = "claymore"
	item_state = "claymore"
	hitsound = 'sound/weapons/bladeslice.ogg'
	flags = CONDUCT
	slot_flags = SLOT_BELT
	force = 40
	throwforce = 10
	w_class = 3
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")

/obj/item/weapon/claymore/IsShield()
	return 1

/obj/item/weapon/claymore/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is falling on the [src.name]! It looks like \he's trying to commit suicide.</span>")
	return(BRUTELOSS)

/obj/item/weapon/katana
	name = "katana"
	desc = "Woefully underpowered in D20"
	icon_state = "katana"
	item_state = "katana"
	flags = CONDUCT
	slot_flags = SLOT_BELT | SLOT_BACK
	force = 40
	throwforce = 10
	w_class = 3
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")

/obj/item/weapon/katana/cursed
	slot_flags = null

/obj/item/weapon/katana/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is slitting \his stomach open with the [src.name]! It looks like \he's trying to commit seppuku.</span>")
	return(BRUTELOSS)

/obj/item/weapon/katana/IsShield()
		return 1

obj/item/weapon/wirerod
	name = "wired rod"
	desc = "A rod with some wire wrapped around the top. It'd be easy to attach something to the top bit."
	icon_state = "wiredrod"
	item_state = "rods"
	flags = CONDUCT
	force = 9
	throwforce = 10
	w_class = 3
	m_amt = 1875
	attack_verb = list("hit", "bludgeoned", "whacked", "bonked")

obj/item/weapon/wirerod/attackby(var/obj/item/I, mob/user as mob)
	..()
	if(istype(I, /obj/item/weapon/shard))
		var/obj/item/weapon/twohanded/spear/S = new /obj/item/weapon/twohanded/spear

		user.unEquip(I)
		user.unEquip(src)

		user.put_in_hands(S)
		user << "<span class='notice'>You fasten the glass shard to the top of the rod with the cable.</span>"
		qdel(I)
		qdel(src)

	else if(istype(I, /obj/item/weapon/wirecutters))
		var/obj/item/weapon/melee/baton/cattleprod/P = new /obj/item/weapon/melee/baton/cattleprod

		user.unEquip(I)
		user.unEquip(src)

		user.put_in_hands(P)
		user << "<span class='notice'>You fasten the wirecutters to the top of the rod with the cable, prongs outward.</span>"
		qdel(I)
		qdel(src)