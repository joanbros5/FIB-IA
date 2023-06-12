(define (problem planificator)
    (:domain planificator3000)

    (:objects
        p1 p2 p3 p4 p5 p6 - programador
        t1 t2 t3 t4 t5 t6 - tasca
    )

    (:init

        (disponible p1)
        (= (habilitat p1) 2)
        (= (calitat p1) 1)

        (disponible p2)
        (= (habilitat p2) 2)
        (= (calitat p2) 2)

        (disponible p3)
        (= (habilitat p3) 3)
        (= (calitat p3) 1)

        (disponible p4)
        (= (habilitat p4) 2)
        (= (calitat p4) 1)

        (disponible p5)
        (= (habilitat p5) 2)
        (= (calitat p5) 2)

        (disponible p6)
        (= (habilitat p6) 2)
        (= (calitat p6) 2)

        (not (asignada t1))
        (not (revisada t1))
        (= (dificultat t1) 2)
        (= (temps t1) 1)

        (not (asignada t2))
        (not (revisada t2))
        (= (dificultat t2) 3)
        (= (temps t2) 1)

        (not (asignada t3))
        (not (revisada t3))
        (= (dificultat t3) 2)
        (= (temps t3) 2)

        (not (asignada t4))
        (not (revisada t4))
        (= (dificultat t4) 2)
        (= (temps t4) 5)

        (not (asignada t5))
        (not (revisada t5))
        (= (dificultat t5) 2)
        (= (temps t5) 2)

        (not (asignada t6))
        (not (revisada t6))
        (= (dificultat t6) 1)
        (= (temps t6) 3)


        (= (tempsTotal) 0)

    )

    (:goal
          (forall(?t - tasca) (revisada ?t))
    )

    (:metric minimize (tempsTotal))

)
