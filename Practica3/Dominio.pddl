
(define (domain planificator3000)
	(:requirements :adl :typing)
	(:types 
		programador habilitat tasca dificultat
	)

	(:predicates 
		(te ?p-programador 	?h-habilitat) 
		(es ?t-tasca 		?d-dificultat)

		(asignada 	?t-tasca)
		(disponible ?p-programador)

		(realitza 	?p-programador 	?t-tasca)
		(assumible 	?h-habilitat 	?d-dificultat)
	)
	
	(:action asignar
		:parameters (
						?p-programador 
						?h-habilitat
						?t-tasca
						?d-dificultat
		)
		:precondition (and 
						(te ?p ?h)
						(disponible ?p)
						(es ?t ?d)
						(not (asignada ?t))
						(assumible ?h ?d)
						)
		:effect (and 
						(not (disponible ?p))
						(asignada ?t)
						(realitza ?p ?t)
						)
	)
)
