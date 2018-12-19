/obj/structure/closet/secure_closet/freezer

/obj/structure/closet/secure_closet/freezer/update_icon()
	if(broken)
		icon_state = icon_broken
	else
		if(!opened)
			if(locked)
				icon_state = icon_locked
			else
				icon_state = icon_closed
		else
			icon_state = icon_opened

/obj/structure/closet/secure_closet/freezer/kitchen
	name = "kitchen Cabinet"
	req_access = list(access_kitchen)

/obj/structure/closet/secure_closet/freezer/kitchen/New()
	..()
	for(var/i = 0, i < 3, i++)
		new /obj/item/weapon/reagent_containers/food/drinks/flour(src)
	new /obj/item/weapon/reagent_containers/food/condiment/sugar(src)
	return


/obj/structure/closet/secure_closet/freezer/kitchen/mining
	req_access = list()



/obj/structure/closet/secure_closet/freezer/meat
	name = "meat fridge"
	icon_state = "fridge1"
	icon_closed = "fridge"
	icon_locked = "fridge1"
	icon_opened = "fridgeopen"
	icon_broken = "fridgebroken"
	icon_off = "fridge1"


/obj/structure/closet/secure_closet/freezer/meat/New()
	..()
	for(var/i = 0, i < 4, i++)
		new /obj/item/weapon/reagent_containers/food/snacks/meat/monkey(src)
	return



/obj/structure/closet/secure_closet/freezer/fridge
	name = "refrigerator"
	icon_state = "fridge1"
	icon_closed = "fridge"
	icon_locked = "fridge1"
	icon_opened = "fridgeopen"
	icon_broken = "fridgebroken"
	icon_off = "fridge1"


/obj/structure/closet/secure_closet/freezer/fridge/New()
	..()
	for(var/i = 0, i < 5, i++)
		new /obj/item/weapon/reagent_containers/food/drinks/milk(src)
	for(var/i = 0, i < 5, i++)
		new /obj/item/weapon/reagent_containers/food/drinks/soymilk(src)
	for(var/i = 0, i < 2, i++)
		new /obj/item/weapon/storage/fancy/egg_box(src)
	return



/obj/structure/closet/secure_closet/freezer/money
	name = "freezer"
	desc = "This contains cold hard cash."
	icon_state = "fridge1"
	icon_closed = "fridge"
	icon_locked = "fridge1"
	icon_opened = "fridgeopen"
	icon_broken = "fridgebroken"
	icon_off = "fridge1"
	req_access = list(access_heads_vault)


/obj/structure/closet/secure_closet/freezer/money/New()
	..()
	for(var/i = 0, i < 3, i++)
		new /obj/item/weapon/spacecash/c1000(src)
	for(var/i = 0, i < 5, i++)
		new /obj/item/weapon/spacecash/c500(src)
	for(var/i = 0, i < 6, i++)
		new /obj/item/weapon/spacecash/c200(src)
	return
