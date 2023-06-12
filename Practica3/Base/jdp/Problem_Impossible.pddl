
(define (problem planificator)
	(:domain planificator3000)
	(:objects 
		p1 p2 p3 - programador
		h1 h2 h3 - habilitat
		t1 t2 t3 - tasca
		d1 d2 d3 - dificultat
	)
	(:init
		(te p1 h1)
		(te p2 h1)
		(te p3 h1)

		(disponible p1)
		(disponible p2)
		(disponible p3)

		(es t1 d3)
		(es t2 d3)
		(es t3 d3)
		(not (asignada t1))
		(not (asignada t2))
		(not (asignada t3))

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