
(define (problem planificator)
	(:domain planificator3000)
	(:objects 
		p1 p2 p3 p4 p5 - programador
		h1 h2 	 - habilitat
		t1 t2 t3 - tasca
		d1 d2 d3 - dificultat
	)
	(:init
		(te p1 h1)
		(te p2 h2)
		(te p3 h1)
		(disponible p1)
		(disponible p2)
		(disponible p3)

		(es t1 d1)
		(es t2 d2)
		(es t3 d3)
		(not (asignada t1))
		(not (asignada t2))
		(not (asignada t3))

		(assumible h1 d1)
		(assumible h1 d2)
		(assumible h2 d2)
		(assumible h1 d3)
		(assumible h2 d3)
		
	)
	(:goal
		(forall (?t - tasca) (asignada ?t))
	)
)