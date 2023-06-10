
(define (domain planificator3000)
	(:requirements :adl :typing :strips :fluents)
	(:types 
		programador tasca - object
	)
	(:functions
		(habilitat 	?p - programador)
		(calitat	?p - programador)
		(nTasques	?p - programador)
		(dificultat	?t - tasca)
		(temps		?t - tasca)
		(tempsTotal)
	)
	(:predicates 

		(asignada 	?t - tasca)
		(revisada 	?t - tasca)

		(disponible ?p - programador)
		(asignada_a ?t - tasca ?p - programador)
		(revisat_per ?t - tasca ?p - programador)

	)
	
	(:action asignar
		:parameters (
						?p - programador 
						?t - tasca
					)
		:precondition (and
						(not (asignada ?t))
						(not (revisada ?t))
						(<= (dificultat ?t) (habilitat ?p))
						)
		:effect (and 
						(asignada ?t)
						(asignada_a ?t ?p)
						(increase (tempsTotal) (temps ?t))
						(increase (nTasques ?p) 1)
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
						(<= (- 1 (dificultat ?t)) (habilitat ?p))
						)
		:effect (and
					(revisada ?t)
					(revisat_per ?t ?p)
					(increase (tempsTotal) (calitat ?p))
					)
	)
	(:action asignarDur
		:parameters (
						?p - programador 
						?t - tasca
					)
		:precondition (and
						(not (asignada ?t))
						(not (revisada ?t))
						(= (- 1 (dificultat ?t)) (habilitat ?p))
						)
		:effect (and 
						(asignada ?t)
						(asignada_a ?t ?p)
						(increase (tempsTotal) (+ 2 (temps ?t)))
						(increase (nTasques ?p) 1)
						)
	)
)
