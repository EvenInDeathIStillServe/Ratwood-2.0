/datum/job/roguetown/prefect
	title = "Inquisitorial Prefect"
	flag = BUTLER
	department_flag = INQUISITION
	faction = "Station"
	total_positions = 1
	spawn_positions = 1

	allowed_races = ACCEPTED_RACES

	tutorial = "You are the administrative hand of the Inquisition. Supplies, servants, records, correspondence — all pass through you. The Prefect ensures that doctrine is upheld not only in belief, but in practice."

	outfit = /datum/outfit/job/roguetown/prefect
	advclass_cat_rolls = list(CTAG_SENESCHAL = 20)
	display_order = JDO_BUTLER
	give_bank_account = 40
	min_pq = 3
	max_pq = null
	round_contrib_points = 3
	social_rank = SOCIAL_RANK_YEOMAN

	job_subclasses = list(
		/datum/advclass/prefect/prefect,
		/datum/advclass/prefect/proctor,
		/datum/advclass/prefect/sealcustodian
	)

	spells = list(/obj/effect/proc_holder/spell/invoked/takeapprentice)
