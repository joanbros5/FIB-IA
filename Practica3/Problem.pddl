
(define (problem ....)
	(domain planificator3000)
	(:oblects 
		p1 p2 p3 - programador
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
r
		(es t1 d1)
		(es t2 d2)
		(es t3 d3)
		(not (asignada t1))
		(not (asignada t2))
		(not (asignada t3))

		(leq d1 h1)
		(leq d2 h1)
		(leq d2 h2)
		(leq d3 h1)
		(leq d3 h2)
		(leq d3 h3)
			
	)
	(:goal
		(forall (?t - tasca) (asignada ?t) )
	)
)