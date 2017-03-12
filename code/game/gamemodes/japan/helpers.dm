/proc/is_patriarch(var/mob/living/carbon/H)
	return (!istype(H.mind.assigned_role, /datum/job/japan/related))

/proc/is_subservient(var/mob/living/carbon/H)
	return istype(H.mind.assigned_role, /datum/job/japan/related)
