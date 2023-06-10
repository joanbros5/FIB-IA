
(define (domain planificator3000)
	(:requirements :adl :typing)
	(:types 
		programador habilitat tasca dificultat
	)

	(:predicates 
		(te ?p - programador 	?h - habilitat) 
		(es ?t - tasca 		?d - dificultat)

		(asignada 	?t - tasca)
		(disponible ?p - programador)

		(realitza 	?p - programador 	?t - tasca)
		(assumible 	?d - dificultat 	?h - habilitat)
	)
	
	(:action asignar
		:parameters (
						?p - programador 
						?h - habilitat
						?t - tasca
						?d - dificultat
					)
		:precondition (and
						(not (asignada ?t))
						(disponible ?p)

						(te ?p ?h)
						(es ?t ?d)
						(assumible ?d ?h)
						)
		:effect (and 
						(not (disponible ?p))
						(asignada ?t)
						(realitza ?p ?t)
						)
	)
)
