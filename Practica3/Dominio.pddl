(define (domain planificator3000)
	(:types programador tasca habilitat qualitat dificultat - object)
	(:predicates (tiene ?p-programador ?h-habilitat) (es ?t-tasca ?d-dificultat) (asignada ?t-tasca) (disponible ?p-programador))
	
	(:action asignar
		:parameters (?p-programador ?t-tasca ?h-habilitat ?d-dificultat)
		:precondition (and (disponible ?p) (tiene ?p ?h) (es ?t ?d) (not (asignada ?t)))
		:effect (and (not (disponible ?p)) (asignada ?t))
	)
)
