
(define (problem planificator)
	(:domain planificator3000)
	(:objects 
		p1 p2 p3 p4 p5 p6 	- programador
		t1 t2 t3 t4 t5 t6 	- tasca
	)
	(:init

		(disponible p1)
		(disponible p2)
		(disponible p3)
		(disponible p4)
		(disponible p5)
		(disponible p6)

		(not (asignada t1))
		(not (asignada t2))
		(not (asignada t3))
		(not (asignada t4))
		(not (asignada t5))
		(not (asignada t6))

		(not (revisada t1))
		(not (revisada t2))
		(not (revisada t3))
		(not (revisada t4))
		(not (revisada t5))
		(not (revisada t6))

		(= (habilitat p1) 1)
        	(= (habilitat p2) 2)
        	(= (habilitat p3) 2)
        	(= (habilitat p4) 3)
        	(= (habilitat p5) 2)
        	(= (habilitat p6) 3)

        	(= (dificultat t1) 1)
        	(= (dificultat t2) 2)
        	(= (dificultat t3) 3)
        	(= (dificultat t4) 2)
        	(= (dificultat t5) 3)
        	(= (dificultat t6) 1)

	)
	(:goal
		(forall (?t - tasca) (revisada ?t))
	)
)