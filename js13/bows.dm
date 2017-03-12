/obj/item/weapon/crossbow/crossbow

	name = "crossbow"
	desc = "Something that you wouldn't want to be shot by"
	icon = '\lw/icons/weapons.dmi'
	icon_state = "crossbow"
	item_state = "crossbow-solid"
	flags = FPRINT
	siemens_coefficient = 1
	slot_flags = SLOT_BELT | SLOT_BACK

	w_class = W_CLASS_MEDIUM

	tension = 0                       // Current draw on the bow.
	max_tension = 5                   // Highest possible tension.
	release_speed = 5                 // Speed per unit of tension.
	//var/obj/item/weapon/cell/cell = null  // Used for firing special projectiles like rods.

/obj/item/weapon/crossbow/crossbow/attackby(obj/item/W as obj, mob/user as mob)
	if(!arrow)
		if (istype(W,/obj/item/weapon/arrow))
			if(!user.drop_item(W, src))
				user << "<span class='warning'>You can't let go of \the [W]!</span>"
				return

			arrow = W
			user.visible_message("[user] slides [arrow] into [src].","You slide [arrow] into [src].")
			icon_state = "crossbow"
			return
	else
		..()

/obj/item/weapon/crossbow/crossbow/attack_self(mob/living/user as mob)
	if(tension)
		if(arrow)
			user.visible_message("[user] relaxes the tension on [src]'s string and removes [arrow].","You relax the tension on [src]'s string and remove [arrow].")
			var/obj/item/weapon/arrow/A = arrow
			A.forceMove(get_turf(src))
			A.removed(user)
			arrow = null
		else
			user.visible_message("[user] relaxes the tension on [src]'s string.","You relax the tension on [src]'s string.")
		tension = 0
		icon_state = "crossbow"
	else
		draw(user)

/obj/item/weapon/crossbow/crossbow/draw(var/mob/user as mob)


	if(!arrow)
		to_chat(user, "You don't have anything loaded in [src].")
		return

	if(user.restrained())
		return

	current_user = user

	user.visible_message("[user] begins to draw back the string of [src].","You begin to draw back the string of [src].")
	tension = 1
	spawn(25) increase_tension(user)

/obj/item/weapon/crossbow/crossbow/increase_tension(var/mob/user as mob)


	if(!arrow || !tension || current_user != user) //Arrow has been fired, bow has been relaxed or user has changed.
		return

	tension++
	icon_state = "crossbow-drawn"

	if(tension>=max_tension)
		tension = max_tension
		to_chat(usr, "[src] clunks as you draw the string to its maximum tension!")
	else
		user.visible_message("[usr] draws back the string of [src]!","You continue drawing back the string of [src]!")
		spawn(25) increase_tension(user)

/obj/item/weapon/crossbow/crossbow/afterattack(atom/target as mob|obj|turf|area, mob/living/user as mob|obj, flag, params)

	if (istype(target, /obj/item/weapon/storage/backpack ))
		src.dropped()
		return

	else if (target.loc == user.loc)
		return

	else if (locate (/obj/structure/table, src.loc))
		return

	else if(target == user)
		return

	if(!tension)
		to_chat(user, "You haven't drawn back the bolt!")
		return 0

	if (!arrow)
		to_chat(user, "You have no arrow loaded in [src]!")
		return 0
	else
		spawn(0) Fire(target,user,params)

/obj/item/weapon/crossbow/crossbow/Fire(atom/target as mob|obj|turf|area, mob/living/user as mob|obj, params, reflex = 0)


	add_fingerprint(user)

	var/turf/curloc = get_turf(user)
	var/turf/targloc = get_turf(target)
	if (!istype(targloc) || !istype(curloc))
		return

	user.visible_message("<span class='danger'>[user] releases [src] and fires [arrow] toward [target]!</span>","<span class='danger'>You release [src] and fires [arrow] toward [target]!</span>")

	var/obj/item/weapon/arrow/A = arrow
	A.forceMove(get_turf(user))
	A.throw_at(target,10,tension*release_speed)
	arrow = null
	tension = 0
	icon_state = "crossbow"

/obj/item/weapon/crossbow/dropped(mob/user)
	if(arrow)
		var/obj/item/weapon/arrow/A = arrow
		A.forceMove(get_turf(src))
		A.removed(user)
		arrow = null
		tension = 0
		icon_state = "crossbow"



/obj/item/weapon/arrow/silver
	name = "silver bolt"
	desc = "It's got a shiny tip for you - get the point?"
	icon = '\lw/icons/weapons.dmi'
	icon_state = "silverbolt"
	item_state = "silverbolt"
	flags = FPRINT
	throwforce = 8
	force = 100
	w_class = W_CLASS_MEDIUM
	sharpness = 10
	sharpness_flags = SHARP_TIP
