/mob/living/carbon/human/var/list/contracts = list()

/datum/metaphysical_contract
	var/mob/living/carbon/human/mob1
	var/mob/living/carbon/human/mob2
	var/mob/relation = "vassalship to"
	var/mob/details = ""

	New(var/mob/living/carbon/human/H)
		..()
		H.contracts += src
