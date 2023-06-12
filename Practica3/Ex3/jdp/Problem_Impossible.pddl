(define (problem planificator)
    (:domain planificator3000)

    (:objects
        p1 p2 p3 p4 p5 - programador
        t1 t2 t3 t4 t5 t6 t7 t8 t9 - tasca
    )

    (:init

        (disponible p1)
        (= (habilitat p1) 1) 
        (= (calitat p1) 1)
        (= (nTasques p1) 0)

        (disponible p2)
        (= (habilitat p2) 1)
        (= (calitat p2) 1)
        (= (nTasques p2) 0)

        (disponible p3)
        (= (habilitat p3) 1)
        (= (calitat p3) 1)
        (= (nTasques p3) 0)

        (disponible p4)
        (= (habilitat p4) 2)
        (= (calitat p4) 1)
        (= (nTasques p4) 0)

        (disponible p5)
        (= (habilitat p5) 1)
        (= (calitat p5) 1)
        (= (nTasques p5) 0)

        (not (asignada t1))
        (not (revisada t1))
        (= (dificultat t1) 2)
        (= (temps t1) 1)

        (not (asignada t2))
        (not (revisada t2))
        (= (dificultat t2) 1)
        (= (temps t2) 1)

        (not (asignada t3))
        (not (revisada t3))
        (= (dificultat t3) 2)
        (= (temps t3) 2)

        (not (asignada t4))
        (not (revisada t4))
        (= (dificultat t4) 2)
        (= (temps t4) 3)

        (not (asignada t5))
        (not (revisada t5))
        (= (dificultat t5) 2)
        (= (temps t5) 4)

        (not (asignada t6))
        (not (revisada t6))
        (= (dificultat t6) 2)
        (= (temps t6) 3)

        (not (asignada t7))
        (not (revisada t7))
        (= (dificultat t7) 2)
        (= (temps t7) 1)

        (not (asignada t8))
        (not (revisada t8))
        (= (dificultat t8) 1)
        (= (temps t8) 4)

        (not (asignada t9))
        (not (revisada t9))
        (= (dificultat t9) 1)
        (= (temps t9) 2)


        (= (tempsTotal) 0)

    )

    (:goal (and
           (forall(?t - tasca) (revisada ?t))
           (forall (?p - programador) (<= (nTasques ?p) 2))
           )
    )

    (:metric minimize (tempsTotal))

)
