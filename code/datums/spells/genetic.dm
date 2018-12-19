/obj/effect/proc_holder/spell/targeted/genetic
	name = "Genetic"
	desc = "This spell inflicts a set of mutations and disabilities upon the target."

	var/disabilities = 0 //bits
	var/list/mutations = list() //mutation strings
	var/duration = 100 //deciseconds
	/*
		Disabilities
			1st bit - ?
			2nd bit - ?
			3rd bit - ?
			4th bit - ?
			5th bit - ?
			6th bit - ?
	*/

/obj/effect/proc_holder/spell/targeted/genetic/cast(list/targets)

	for(var/mob/living/carbon/target in targets)
		for(var/A in mutations)
			target.dna.add_mutation(A)
		target.disabilities |= disabilities
		spawn(duration)
			if(target && !target.gc_destroyed)
				for(var/A in mutations)
					target.dna.remove_mutation(A)
				target.disabilities &= ~disabilities

	return