/datum/job/roguetown/attendant
	title = "Manor Attendant"
	flag = ATTENDANT
	department_flag = INQUISITION
	faction = "Station"
	total_positions = 2
	spawn_positions = 2

	allowed_races = ACCEPTED_RACES
	allowed_ages = ALL_AGES_LIST
	allowed_patrons = list(/datum/patron/old_god) //These background checks are getting out of hand...

	tutorial = "The Inquisitorial Manor runs not on faith alone, but on discipline and labor. You are an attendant of the Sanctum. You clean, you cook, you carry messages, and you keep silent. The Inquisition notices loyalty."

	outfit = /datum/outfit/job/roguetown/attendant
	advclass_cat_rolls = list(CTAG_ATTENDANT = 20)
	job_traits = list(TRAIT_HOMESTEAD_EXPERT)
	display_order = JDO_ATTENDANT
	give_bank_account = TRUE
	min_pq = -10
	max_pq = null
	round_contrib_points = 2
	advjob_examine = TRUE
	cmode_music = 'sound/music/cmode/towner/combat_towner.ogg'
	social_rank = SOCIAL_RANK_PEASANT

	job_subclasses = list(
		/datum/advclass/attendant/attendant,
		/datum/advclass/attendant/maid,
		/datum/advclass/attendant/butler
	)


/datum/advclass/attendant
	traits_applied = list(TRAIT_CICERONE, TRAIT_KEENEARS, TRAIT_SLEUTH)

/datum/advclass/attendant/attendant
	name = "Manor Attendant"
	tutorial = "A general servant of the Inquisition. You perform whatever duty is required — cleaning blood from stone, tending fires, preparing meals, or running sealed letters across town. You hear much. You repeat nothing."
	outfit = /datum/outfit/job/roguetown/attendant/attendant
	category_tags = list(CTAG_ATTENDANT)

	subclass_stats = list(
		STATKEY_PER = 2,
		STATKEY_INT = 1,
		STATKEY_SPD = 1
	)

	subclass_skills = list(
		/datum/skill/combat/knives = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/crafting = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/sewing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/medicine = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/sneaking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/stealing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/lockpicking = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE
	)


/datum/outfit/job/roguetown/attendant/attendant/pre_equip(mob/living/carbon/human/H)
	..()
	pants = /obj/item/clothing/under/roguetown/trou/formal/shorts
	armor = /obj/item/clothing/suit/roguetown/shirt/dress/maid/servant
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/formal
	shoes = /obj/item/clothing/shoes/roguetown/boots
	backl = /obj/item/storage/backpack/rogue/satchel/black
	belt = /obj/item/storage/belt/rogue/leather/suspenders/butler
	beltr = /obj/item/roguekey/inquisition
	beltl = /obj/item/storage/belt/rogue/pouch/coins/poor
	gloves = /obj/item/clothing/gloves/roguetown/fingerless
	if(H.age == AGE_MIDDLEAGED)
		H.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
		H.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
		H.adjust_skillrank(/datum/skill/labor/farming, 1, TRUE)
	if(H.age == AGE_OLD)
		H.adjust_skillrank(/datum/skill/craft/cooking, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
		H.adjust_skillrank(/datum/skill/labor/farming, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)

/datum/advclass/attendant/maid
	name = "Sanctum Maid"
	tutorial = "You are a maid of the Inquisition. You clean the manor, you prepare meals, and you run errands. You are expected to be presentable at all times, but you are not expected to be seen. You are a servant of the Inquisition, and the Inquisition notices loyalty."
	outfit = /datum/outfit/job/roguetown/attendant/maid
	category_tags = list(CTAG_ATTENDANT)
	subclass_stats = list(
		STATKEY_PER = 2,
		STATKEY_INT = 1,
		STATKEY_SPD = 1
	)
	subclass_skills = list(
		/datum/skill/combat/knives = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/crafting = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/sewing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/medicine = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/sneaking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/stealing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/lockpicking = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
	)

/datum/outfit/job/roguetown/attendant/maid/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/maidband
	armor = /obj/item/clothing/suit/roguetown/shirt/dress/maid
	shoes = /obj/item/clothing/shoes/roguetown/shortboots
	cloak = /obj/item/clothing/cloak/apron/maid
	backl = /obj/item/storage/backpack/rogue/satchel/black
	belt = /obj/item/storage/belt/rogue/leather/sash
	beltr = /obj/item/roguekey/inquisition
	beltl = /obj/item/storage/belt/rogue/pouch/coins/poor
	if(H.age == AGE_MIDDLEAGED)
		H.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
		H.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
		H.adjust_skillrank(/datum/skill/labor/farming, 1, TRUE)
	if(H.age == AGE_OLD)
		H.adjust_skillrank(/datum/skill/craft/cooking, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
		H.adjust_skillrank(/datum/skill/labor/farming, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)

/datum/advclass/attendant/butler
	name = "Sanctum Butler"
	tutorial = "If there is a task to be done, you do it. You clean, you cook, you run errands, and you do it all with an impeccable appearance. You are a servant of the Inquisition, and the Inquisition notices loyalty."
	outfit = /datum/outfit/job/roguetown/attendant/butler
	category_tags = list(CTAG_ATTENDANT)
	subclass_stats = list(
		STATKEY_PER = 2,
		STATKEY_INT = 1,
		STATKEY_SPD = 1
	)
	subclass_skills = list(
		/datum/skill/combat/knives = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/crafting = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/sewing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/medicine = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/sneaking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/stealing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/lockpicking = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
	)

/datum/outfit/job/roguetown/attendant/butler/pre_equip(mob/living/carbon/human/H)
	..()
	pants = /obj/item/clothing/under/roguetown/trou/formal/shorts
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/formal
	shoes = /obj/item/clothing/shoes/roguetown/boots
	backl = /obj/item/storage/backpack/rogue/satchel/black
	belt = /obj/item/storage/belt/rogue/leather/suspenders/butler
	beltr = /obj/item/roguekey/inquisition
	beltl = /obj/item/storage/belt/rogue/pouch/coins/poor
	armor = /obj/item/clothing/suit/roguetown/armor/leather/vest/black
	if(H.age == AGE_MIDDLEAGED)
		H.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
		H.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
		H.adjust_skillrank(/datum/skill/labor/farming, 1, TRUE)
	if(H.age == AGE_OLD)
		H.adjust_skillrank(/datum/skill/craft/cooking, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
		H.adjust_skillrank(/datum/skill/labor/farming, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
