
(define (problem planificator)
	(:domain planificator3000)
	(:objects 
		p1 p2 p3 p4 p5 p6 - programador
		h1 h2 h3 	 - habilitat
		t1 t2 t3 t4 t5 - tasca
		d1 d2 d3 - dificultat
	)
	(:init
		(te p1 h1)
		(te p2 h2)
		(te p3 h1)
		(te p4 h3)
		(te p5 h2)
		(te p6 h1)

		(disponible p1)
		(disponible p2)
		(disponible p3)
		(disponible p4)
		(disponible p5)
		(disponible p6)

		(es t1 d1)
		(es t2 d2)
		(es t3 d3)
		(es t4 d2)
		(es t5 d3)
		(not (asignada t1))
		(not (asignada t2))
		(not (asignada t3))
		(not (asignada t4))
		(not (asignada t5))

		(assumible d1 h1)
		(assumible d1 h2)
		(assumible d1 h3)
		(assumible d2 h1)
		(assumible d2 h2)
		(assumible d2 h3)
		(assumible d3 h2)
		(assumible d3 h3)
		
	)
	(:goal
		(forall (?t - tasca) (asignada ?t))
	)
)