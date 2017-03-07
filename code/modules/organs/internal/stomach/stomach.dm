#define LOW_THRESHOLD 50
#define HIGH_THRESHOLD 110

/datum/organ/internal/stomach
	name = "stomach"
	parent_organ = LIMB_CHEST
	removed_type = /obj/item/organ/stomach
	var/nutrients[""]

/datum/organ/internal/stomach/New()
	nutrients["fat"] = rand(LOW_THRESHOLD + 10, HIGH_THRESHOLD - 10)
	nutrients["protein"] = rand(LOW_THRESHOLD + 10, HIGH_THRESHOLD - 10)
	nutrients["carbs"] = rand(LOW_THRESHOLD + 10, HIGH_THRESHOLD - 10)
	nutrients["sodium"] = rand(LOW_THRESHOLD + 10, HIGH_THRESHOLD - 10)

/datum/organ/internal/stomach/proc/increase(n)
	nutrients[n]++

/datum/organ/internal/stomach/proc/decrease(n)
	if (n == "fat" && n <= 50 || n == "protein" && n <= 50)
		return

	nutrients[n]--

/datum/organ/internal/stomach/proc/nutrients(n)
	ASSERT(nutrients[n])
	return nutrients[n]

/datum/organ/internal/stomach/process()
	decrease("fat")
	decrease("protein")
	decrease("carbs")
	decrease("sodium")

	var/severity = 0

	if (nutrients("fat") <= LOW_THRESHOLD)
		severity += 1
	else if (nutrients("fat") >= HIGH_THRESHOLD)
		severity += 1

	if (nutrients("protein") <= LOW_THRESHOLD)
		severity += 1
	else if (nutrients("protein") >= HIGH_THRESHOLD)
		severity += 1

	if (nutrients("carbs") <= LOW_THRESHOLD)
		severity += 3
	else if (nutrients("carbs") >= HIGH_THRESHOLD)
		severity = 3

	if (nutrients("sodium") <= LOW_THRESHOLD)
		severity += 2
	else if (nutrients("sodium") >= HIGH_THRESHOLD)
		severity += 2


	if (severity > 2 && severity < 5) //low fat, low protein(s=2) can be survived but means bad things if you run out of carbs/sodium
		return
	else if (severity > 5)
		return


/datum/organ/internal/stomach/proc/digest()
	return