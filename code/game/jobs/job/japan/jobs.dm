


/datum/job/japan/samurai
	tier = TIER_LESSER_NOBLE
	department_flag = LESSER_NOBILITY
	flag = SAMURAI
	no_crew_manifest = 1 //If 1, don't inject players with this job into the crew manifest
	no_starting_money = 1 //If 1, don't start with a bank account or money
	no_id = 1 //If 1, don't spawn with an ID
	no_pda= 1 //If 1, don't spawn with a PDA
	no_headset = 1 //If 1, don't spawn with a headset
	title = "Samurai"
	faction = "Station"
	total_positions = 5
	spawn_positions = 5
	supervisors = "the head of security"
	selection_color = "#ffeeee"
	idtype = /obj/item/weapon/card/id/security
	access = list(access_weapons, access_security, access_sec_doors, access_brig, access_court, access_maint_tunnels, access_morgue, access_eva)
	minimal_access = list(access_weapons, access_security, access_sec_doors, access_brig, access_court, access_maint_tunnels)
	minimal_player_age = 7

	pdaslot=slot_belt
	pdatype=/obj/item/device/pda/security

	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		H.equip_or_collect(new /obj/item/device/radio/headset/headset_sec(H), slot_ears)
		switch(H.backbag)
			if(2)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/security(H), slot_back)
			if(3)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel_sec(H), slot_back)
			if(4)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
			if(5)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/messenger/sec(H), slot_back)
		H.equip_or_collect(new /obj/item/clothing/under/rank/security(H), slot_w_uniform)
		H.equip_or_collect(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)
		H.equip_or_collect(new /obj/item/clothing/suit/armor/vest/security(H), slot_wear_suit)
		H.equip_or_collect(new /obj/item/weapon/gun/energy/taser(H), slot_s_store)
		//H.equip_or_collect(new /obj/item/device/pda/security(H), slot_belt)
		H.equip_or_collect(new /obj/item/weapon/handcuffs(H), slot_in_backpack)
		H.equip_or_collect(new /obj/item/device/flash(H), slot_l_store)
		if(H.backbag == 1)
			H.put_in_r_hand(new H.species.survival_gear(H))
		else
			H.equip_or_collect(new H.species.survival_gear(H.back), slot_in_backpack)
		H.equip_or_collect(new /obj/item/clothing/gloves/black(H), slot_gloves)
		H.equip_or_collect(new /obj/item/clothing/glasses/sunglasses/sechud(H), slot_glasses)
		var/obj/item/weapon/implant/loyalty/L = new/obj/item/weapon/implant/loyalty(H)
		L.imp_in = H
		L.implanted = 1
		var/datum/organ/external/affected = H.get_organ(LIMB_HEAD)
		affected.implants += L
		L.part = affected
		return 1

/datum/job/japan/peasant
	tier = TIER_PEASANT
	department_flag = PEASANTRY
	flag = PEASANT
	no_crew_manifest = 1 //If 1, don't inject players with this job into the crew manifest
	no_starting_money = 1 //If 1, don't start with a bank account or money
	no_id = 1 //If 1, don't spawn with an ID
	no_pda= 1 //If 1, don't spawn with a PDA
	no_headset = 1 //If 1, don't spawn with a headset
	title = "Peasant"
	faction = "Station"
	total_positions = 5
	spawn_positions = 5
	supervisors = "the head of security"
	selection_color = "#ffeeee"
	idtype = /obj/item/weapon/card/id/security
	access = list(access_weapons, access_security, access_sec_doors, access_brig, access_court, access_maint_tunnels, access_morgue, access_eva)
	minimal_access = list(access_weapons, access_security, access_sec_doors, access_brig, access_court, access_maint_tunnels)
	minimal_player_age = 7

	pdaslot=slot_belt
	pdatype=/obj/item/device/pda/security

	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		H.equip_or_collect(new /obj/item/device/radio/headset/headset_sec(H), slot_ears)
		switch(H.backbag)
			if(2)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/security(H), slot_back)
			if(3)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel_sec(H), slot_back)
			if(4)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
			if(5)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/messenger/sec(H), slot_back)
		H.equip_or_collect(new /obj/item/clothing/under/rank/security(H), slot_w_uniform)
		H.equip_or_collect(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)
		H.equip_or_collect(new /obj/item/clothing/suit/armor/vest/security(H), slot_wear_suit)
		H.equip_or_collect(new /obj/item/weapon/gun/energy/taser(H), slot_s_store)
		//H.equip_or_collect(new /obj/item/device/pda/security(H), slot_belt)
		H.equip_or_collect(new /obj/item/weapon/handcuffs(H), slot_in_backpack)
		H.equip_or_collect(new /obj/item/device/flash(H), slot_l_store)
		if(H.backbag == 1)
			H.put_in_r_hand(new H.species.survival_gear(H))
		else
			H.equip_or_collect(new H.species.survival_gear(H.back), slot_in_backpack)
		H.equip_or_collect(new /obj/item/clothing/gloves/black(H), slot_gloves)
		H.equip_or_collect(new /obj/item/clothing/glasses/sunglasses/sechud(H), slot_glasses)
		var/obj/item/weapon/implant/loyalty/L = new/obj/item/weapon/implant/loyalty(H)
		L.imp_in = H
		L.implanted = 1
		var/datum/organ/external/affected = H.get_organ(LIMB_HEAD)
		affected.implants += L
		L.part = affected
		return 1

/datum/job/japan/daimyo
	tier = TIER_HIGHEST
	department_flag = UPPER_NOBILITY
	flag = DAIMYO
	no_crew_manifest = 1 //If 1, don't inject players with this job into the crew manifest
	no_starting_money = 1 //If 1, don't start with a bank account or money
	no_id = 1 //If 1, don't spawn with an ID
	no_pda= 1 //If 1, don't spawn with a PDA
	no_headset = 1 //If 1, don't spawn with a headset
	title = "Daimyo"
	faction = "Station"
	total_positions = 5
	spawn_positions = 5
	supervisors = "the head of security"
	selection_color = "#ffeeee"
	idtype = /obj/item/weapon/card/id/security
	access = list(access_weapons, access_security, access_sec_doors, access_brig, access_court, access_maint_tunnels, access_morgue, access_eva)
	minimal_access = list(access_weapons, access_security, access_sec_doors, access_brig, access_court, access_maint_tunnels)
	minimal_player_age = 7

	pdaslot=slot_belt
	pdatype=/obj/item/device/pda/security

	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		H.equip_or_collect(new /obj/item/device/radio/headset/headset_sec(H), slot_ears)
		switch(H.backbag)
			if(2)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/security(H), slot_back)
			if(3)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel_sec(H), slot_back)
			if(4)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
			if(5)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/messenger/sec(H), slot_back)
		H.equip_or_collect(new /obj/item/clothing/under/rank/security(H), slot_w_uniform)
		H.equip_or_collect(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)
		H.equip_or_collect(new /obj/item/clothing/suit/armor/vest/security(H), slot_wear_suit)
		H.equip_or_collect(new /obj/item/weapon/gun/energy/taser(H), slot_s_store)
		//H.equip_or_collect(new /obj/item/device/pda/security(H), slot_belt)
		H.equip_or_collect(new /obj/item/weapon/handcuffs(H), slot_in_backpack)
		H.equip_or_collect(new /obj/item/device/flash(H), slot_l_store)
		if(H.backbag == 1)
			H.put_in_r_hand(new H.species.survival_gear(H))
		else
			H.equip_or_collect(new H.species.survival_gear(H.back), slot_in_backpack)
		H.equip_or_collect(new /obj/item/clothing/gloves/black(H), slot_gloves)
		H.equip_or_collect(new /obj/item/clothing/glasses/sunglasses/sechud(H), slot_glasses)
		var/obj/item/weapon/implant/loyalty/L = new/obj/item/weapon/implant/loyalty(H)
		L.imp_in = H
		L.implanted = 1
		var/datum/organ/external/affected = H.get_organ(LIMB_HEAD)
		affected.implants += L
		L.part = affected
		return 1

/datum/job/japan/commander
	tier = TIER_UPPER_NOBLE
	department_flag = UPPER_NOBILITY
	flag = COMMANDER
	no_crew_manifest = 1 //If 1, don't inject players with this job into the crew manifest
	no_starting_money = 1 //If 1, don't start with a bank account or money
	no_id = 1 //If 1, don't spawn with an ID
	no_pda= 1 //If 1, don't spawn with a PDA
	no_headset = 1 //If 1, don't spawn with a headset
	title = "Commander"
	faction = "Station"
	total_positions = 5
	spawn_positions = 5
	supervisors = "the head of security"
	selection_color = "#ffeeee"
	idtype = /obj/item/weapon/card/id/security
	access = list(access_weapons, access_security, access_sec_doors, access_brig, access_court, access_maint_tunnels, access_morgue, access_eva)
	minimal_access = list(access_weapons, access_security, access_sec_doors, access_brig, access_court, access_maint_tunnels)
	minimal_player_age = 7

	pdaslot=slot_belt
	pdatype=/obj/item/device/pda/security

	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		H.equip_or_collect(new /obj/item/device/radio/headset/headset_sec(H), slot_ears)
		switch(H.backbag)
			if(2)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/security(H), slot_back)
			if(3)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel_sec(H), slot_back)
			if(4)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
			if(5)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/messenger/sec(H), slot_back)
		H.equip_or_collect(new /obj/item/clothing/under/rank/security(H), slot_w_uniform)
		H.equip_or_collect(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)
		H.equip_or_collect(new /obj/item/clothing/suit/armor/vest/security(H), slot_wear_suit)
		H.equip_or_collect(new /obj/item/weapon/gun/energy/taser(H), slot_s_store)
		//H.equip_or_collect(new /obj/item/device/pda/security(H), slot_belt)
		H.equip_or_collect(new /obj/item/weapon/handcuffs(H), slot_in_backpack)
		H.equip_or_collect(new /obj/item/device/flash(H), slot_l_store)
		if(H.backbag == 1)
			H.put_in_r_hand(new H.species.survival_gear(H))
		else
			H.equip_or_collect(new H.species.survival_gear(H.back), slot_in_backpack)
		H.equip_or_collect(new /obj/item/clothing/gloves/black(H), slot_gloves)
		H.equip_or_collect(new /obj/item/clothing/glasses/sunglasses/sechud(H), slot_glasses)
		var/obj/item/weapon/implant/loyalty/L = new/obj/item/weapon/implant/loyalty(H)
		L.imp_in = H
		L.implanted = 1
		var/datum/organ/external/affected = H.get_organ(LIMB_HEAD)
		affected.implants += L
		L.part = affected
		return 1

/datum/job/japan/monk
	tier = TIER_PEASANT
	department_flag = PEASANTRY
	flag = MONK
	no_crew_manifest = 1 //If 1, don't inject players with this job into the crew manifest
	no_starting_money = 1 //If 1, don't start with a bank account or money
	no_id = 1 //If 1, don't spawn with an ID
	no_pda= 1 //If 1, don't spawn with a PDA
	no_headset = 1 //If 1, don't spawn with a headset
	title = "Monk"
	faction = "Station"
	total_positions = 5
	spawn_positions = 5
	supervisors = "the head of security"
	selection_color = "#ffeeee"
	idtype = /obj/item/weapon/card/id/security
	access = list(access_weapons, access_security, access_sec_doors, access_brig, access_court, access_maint_tunnels, access_morgue, access_eva)
	minimal_access = list(access_weapons, access_security, access_sec_doors, access_brig, access_court, access_maint_tunnels)
	minimal_player_age = 7

	pdaslot=slot_belt
	pdatype=/obj/item/device/pda/security

	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		H.equip_or_collect(new /obj/item/device/radio/headset/headset_sec(H), slot_ears)
		switch(H.backbag)
			if(2)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/security(H), slot_back)
			if(3)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel_sec(H), slot_back)
			if(4)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
			if(5)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/messenger/sec(H), slot_back)
		H.equip_or_collect(new /obj/item/clothing/under/rank/security(H), slot_w_uniform)
		H.equip_or_collect(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)
		H.equip_or_collect(new /obj/item/clothing/suit/armor/vest/security(H), slot_wear_suit)
		H.equip_or_collect(new /obj/item/weapon/gun/energy/taser(H), slot_s_store)
		//H.equip_or_collect(new /obj/item/device/pda/security(H), slot_belt)
		H.equip_or_collect(new /obj/item/weapon/handcuffs(H), slot_in_backpack)
		H.equip_or_collect(new /obj/item/device/flash(H), slot_l_store)
		if(H.backbag == 1)
			H.put_in_r_hand(new H.species.survival_gear(H))
		else
			H.equip_or_collect(new H.species.survival_gear(H.back), slot_in_backpack)
		H.equip_or_collect(new /obj/item/clothing/gloves/black(H), slot_gloves)
		H.equip_or_collect(new /obj/item/clothing/glasses/sunglasses/sechud(H), slot_glasses)
		var/obj/item/weapon/implant/loyalty/L = new/obj/item/weapon/implant/loyalty(H)
		L.imp_in = H
		L.implanted = 1
		var/datum/organ/external/affected = H.get_organ(LIMB_HEAD)
		affected.implants += L
		L.part = affected
		return 1

/datum/job/japan/emperor
	tier = TIER_HIGHEST
	department_flag = ROYALS
	flag = EMPEROR
	no_crew_manifest = 1 //If 1, don't inject players with this job into the crew manifest
	no_starting_money = 1 //If 1, don't start with a bank account or money
	no_id = 1 //If 1, don't spawn with an ID
	no_pda= 1 //If 1, don't spawn with a PDA
	no_headset = 1 //If 1, don't spawn with a headset
	title = "Emperor"
	faction = "Station"
	total_positions = 5
	spawn_positions = 5
	supervisors = "the head of security"
	selection_color = "#ffeeee"
	idtype = /obj/item/weapon/card/id/security
	access = list(access_weapons, access_security, access_sec_doors, access_brig, access_court, access_maint_tunnels, access_morgue, access_eva)
	minimal_access = list(access_weapons, access_security, access_sec_doors, access_brig, access_court, access_maint_tunnels)
	minimal_player_age = 7

	pdaslot=slot_belt
	pdatype=/obj/item/device/pda/security

	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		H.equip_or_collect(new /obj/item/device/radio/headset/headset_sec(H), slot_ears)
		switch(H.backbag)
			if(2)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/security(H), slot_back)
			if(3)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel_sec(H), slot_back)
			if(4)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
			if(5)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/messenger/sec(H), slot_back)
		H.equip_or_collect(new /obj/item/clothing/under/rank/security(H), slot_w_uniform)
		H.equip_or_collect(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)
		H.equip_or_collect(new /obj/item/clothing/suit/armor/vest/security(H), slot_wear_suit)
		H.equip_or_collect(new /obj/item/weapon/gun/energy/taser(H), slot_s_store)
		//H.equip_or_collect(new /obj/item/device/pda/security(H), slot_belt)
		H.equip_or_collect(new /obj/item/weapon/handcuffs(H), slot_in_backpack)
		H.equip_or_collect(new /obj/item/device/flash(H), slot_l_store)
		if(H.backbag == 1)
			H.put_in_r_hand(new H.species.survival_gear(H))
		else
			H.equip_or_collect(new H.species.survival_gear(H.back), slot_in_backpack)
		H.equip_or_collect(new /obj/item/clothing/gloves/black(H), slot_gloves)
		H.equip_or_collect(new /obj/item/clothing/glasses/sunglasses/sechud(H), slot_glasses)
		var/obj/item/weapon/implant/loyalty/L = new/obj/item/weapon/implant/loyalty(H)
		L.imp_in = H
		L.implanted = 1
		var/datum/organ/external/affected = H.get_organ(LIMB_HEAD)
		affected.implants += L
		L.part = affected
		return 1

/datum/job/japan/related

/datum/job/japan/related/woman

/datum/job/japan/related/woman/peasant
	tier = TIER_PEASANT
	department_flag = PEASANTRY
	flag = PEASANTDAUGHTER
	title = "Peasant's Wife or Daughter"
	faction = "Station"

/datum/job/japan/related/woman/samurai
	tier = TIER_LESSER_NOBLE
	department_flag = LESSER_NOBILITY
	flag = SAMURAIDAUGHTER
	title = "Samurai's Wife or Daughter"
	faction = "Station"

/datum/job/japan/related/woman/commander
	tier = TIER_UPPER_NOBLE
	department_flag = UPPER_NOBILITY
	flag = COMMANDERDAUGHTER
	title = "Commander's Wife or Daughter"
	faction = "Station"

/datum/job/japan/related/woman/daimyo
	tier = TIER_HIGHEST
	department_flag = UPPER_NOBILITY
	flag = DAIMYODAUGHTER
	title = "Daimyo's Wife or Daughter"
	faction = "Station"

/datum/job/japan/related/woman/emperor
	tier = TIER_HIGHEST
	department_flag = ROYALS
	flag = EMPERORDAUGHTER
	title = "Empress or Princess of Japan"
	faction = "Station"

/datum/job/japan/related/child

/datum/job/japan/related/child/peasant
	tier = TIER_PEASANT
	department_flag = PEASANTRY
	flag = PEASANTSON
	title = "Peasant's son"
	faction = "Station"

/datum/job/japan/related/child/samurai
	tier = TIER_LESSER_NOBLE
	department_flag = LESSER_NOBILITY
	flag = SAMURAISON
	title = "Samurai's son"
	faction = "Station"

/datum/job/japan/related/child/commander
	tier = TIER_UPPER_NOBLE
	department_flag = UPPER_NOBILITY
	flag = COMMANDERSON
	title = "Commander's son"
	faction = "Station"

/datum/job/japan/related/child/daimyo
	tier = TIER_HIGHEST
	department_flag = LESSER_NOBILITY
	flag = DAIMYOSON
	title = "Daimyo's son"
	faction = "Station"

/datum/job/japan/related/child/emperor
	tier = TIER_HIGHEST
	department_flag = ROYALS
	flag = EMPERORSON
	title = "Prince of Japan"
	faction = "Station"

