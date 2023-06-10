
(define (problem planificator)
    (:domain planificator3000)
    (:objects 
        p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12    - programador
        t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12    - tasca
    )
    (:init

        (disponible p1)
        (disponible p2)
        (disponible p3)
        (disponible p4)
        (disponible p5)
        (disponible p6)
        (disponible p7)
        (disponible p8)
        (disponible p9)
        (disponible p10)
        (disponible p11)
        (disponible p12)

        (not (asignada t1))
        (not (asignada t2))
        (not (asignada t3))
        (not (asignada t4))
        (not (asignada t5))
        (not (asignada t6))
        (not (asignada t7))
        (not (asignada t8))
        (not (asignada t9))
        (not (asignada t10))
        (not (asignada t11))
        (not (asignada t12))

        (not (revisada t1))
        (not (revisada t2))
        (not (revisada t3))
        (not (revisada t4))
        (not (revisada t5))
        (not (revisada t6))
        (not (revisada t7))
        (not (revisada t8))
        (not (revisada t9))
        (not (revisada t10))
        (not (revisada t11))
        (not (revisada t12))

        (= (habilitat p1) 2)
        (= (habilitat p2) 2)
        (= (habilitat p3) 1)
        (= (habilitat p4) 3)
        (= (habilitat p5) 1)
        (= (habilitat p6) 3)
        (= (habilitat p7) 2)
        (= (habilitat p8) 2)
        (= (habilitat p9) 1)
        (= (habilitat p10) 3)
        (= (habilitat p11) 1)
        (= (habilitat p12) 3)

        (= (calitat p1) 2)
        (= (calitat p2) 1)
        (= (calitat p3) 2)
        (= (calitat p4) 1)
        (= (calitat p5) 2)
        (= (calitat p6) 1)
        (= (calitat p7) 2)
        (= (calitat p8) 1)
        (= (calitat p9) 2)
        (= (calitat p10) 1)
        (= (calitat p11) 2)
        (= (calitat p12) 1)

        (= (nTasques p1) 0)
        (= (nTasques p2) 0)
        (= (nTasques p3) 0)
        (= (nTasques p4) 0)
        (= (nTasques p5) 0)
        (= (nTasques p6) 0)
        (= (nTasques p7) 0)
        (= (nTasques p8) 0)
        (= (nTasques p9) 0)
        (= (nTasques p10) 0)
        (= (nTasques p11) 0)
        (= (nTasques p12) 0)

		(= (dificultat t1) 1)
        (= (dificultat t2) 1)
        (= (dificultat t3) 1)
        (= (dificultat t4) 2)
        (= (dificultat t5) 3)
        (= (dificultat t6) 2)
        (= (dificultat t7) 3)
        (= (dificultat t8) 1)
        (= (dificultat t9) 1)
        (= (dificultat t10) 2)
        (= (dificultat t11) 1)
        (= (dificultat t12) 2)

        (= (temps t1) 5)
        (= (temps t2) 1)
        (= (temps t3) 2)
        (= (temps t4) 1)
        (= (temps t5) 2)
        (= (temps t6) 1)
        (= (temps t7) 2)
        (= (temps t8) 1)
        (= (temps t9) 2)
        (= (temps t10) 4)
        (= (temps t11) 2)
        (= (temps t12) 1)

        (= (tempsTotal) 0)
        (= (progEnUs)   0)

    )
    (:goal (and
        		(forall (?t - tasca) (revisada ?t))
        		(forall (?p - programador) (<= (nTasques ?p) 2))
        		)
    )

    (:metric minimize (+ (* 0.1 (tempsTotal)) (* 0.9 (progEnUs))))
)