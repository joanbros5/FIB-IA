
(define (domain planificator3000)
	(:requirements :adl :typing :fluents)
	(:types 
		programador tasca - object
	)
	(:functions
		(habilitat 	?p - programador)
		(dificultat	?t - tasca)		
	)
	(:predicates 

		(asignada 	?t - tasca)
		(revisada 	?t - tasca)

		(disponible ?p - programador)
		(asignada_a ?t - tasca ?p - programador)

	)
	
	(:action asignar
		:parameters (
						?p - programador 
						?t - tasca
					)
		:precondition (and
						(not (asignada ?t))
						(not (revisada ?t))
						(disponible ?p)
						(<= (- (dificultat ?t) 1) (habilitat ?p))
						)
		:effect (and 
						(not (disponible ?p))
						(asignada ?t)
						(asignada_a ?t ?p)
						)
	)
	(:action revisar
		:parameters (
						?p - programador 
						?t - tasca
					)
		:precondition (and
						(asignada ?t)
						(not (revisada ?t))
						(not (asignada_a ?t ?p))
						(<= (- (dificultat ?t) 1) (habilitat ?p))
						)
		:effect (revisada ?t)
	)
)
