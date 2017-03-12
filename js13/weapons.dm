/*
REEEEEE

*/

/obj/item/weapon/melee/sword
	name = "Sword"
	desc = "An ordinary sword..."
	inhand_states = list("left_hand" = '\icons/mob/in-hand/left/swords_axes.dmi', "right_hand" = '\icons/mob/in-hand/right/swords_axes.dmi')
	icon = '\lw/icons/weapons.dmi'
	icon_state = "adsword"
	item_state = "sword"
	slot_flags = SLOT_BELT // | SLOT_BACK
	flags = FPRINT
	w_class = W_CLASS_LARGE
	force = 25
	throwforce = 10
	sharpness = 2.0
	sharpness_flags = SHARP_TIP | SHARP_BLADE
	attack_verb = list("attacks", "slashes", "stabs", "slices", "tears", "rips", "dices", "cuts")

/obj/item/weapon/melee/sword/katana
	name = "Katana"
	desc = "A sword made for percision and speed"
	icon_state = ""