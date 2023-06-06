
(define (domain planificator3000)
	(:requirements :adl :typing)
	(:types programador tasca habilitat qualitat dificultat - object)

	(:predicates 
		(te ?p-programador ?h-habilitat) 
		(es ?t-tasca ?d-dificultat) 
		(asignada ?t-tasca) 
		(disponible ?p-programador)
		(leq ?d-dificultat ?h-habilitat)
	)
	
	(:action asignar
		:parameters (
						?p-programador 
						?h-habilitat 
						?t-tasca
						?d-dificultat
		)
		:precondition (and 
						(disponible ?p) 
						(tiene ?p ?h) 
						(es ?t ?d)
						(not (asignada ?t))
						(leq ?d ?h)
						)
		:effect (and 
						(not (disponible ?p))
						(asignada ?t)
						)
	)
)
