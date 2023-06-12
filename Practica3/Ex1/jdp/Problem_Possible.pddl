
(define (problem planificator)
	(:domain planificator3000)
	(:objects 
		p1 p2 p3 	- programador
		t1 t2 t3 	- tasca
	)
	(:init

		(disponible p1)
		(disponible p2)
		(disponible p3)

		(not (asignada t1))
		(not (asignada t2))
		(not (asignada t3))

		(not (revisada t1))
		(not (revisada t2))
		(not (revisada t3))

		(= (habilitat p1) 1)
    	(= (habilitat p2) 2)
    	(= (habilitat p3) 3)

    	(= (dificultat t1) 1)
    	(= (dificultat t2) 2)
    	(= (dificultat t3) 3)

	)
	(:goal
		(forall (?t - tasca) (revisada ?t))
	)
)