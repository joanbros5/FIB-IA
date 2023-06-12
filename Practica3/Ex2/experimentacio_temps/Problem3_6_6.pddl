(define (problem planificator)
    (:domain planificator3000)

    (:objects
        p1 p2 p3 p4 - programador
        t1 t2 t3 t4 t5 t6 t7 t8 - tasca
    )

    (:init

        (disponible p1)
        (= (habilitat p1) 3)
        (= (calitat p1) 2)

        (disponible p2)
        (= (habilitat p2) 3)
        (= (calitat p2) 2)

        (disponible p3)
        (= (habilitat p3) 1)
        (= (calitat p3) 2)

        (disponible p4)
        (= (habilitat p4) 2)
        (= (calitat p4) 2)

        (not (asignada t1))
        (not (revisada t1))
        (= (dificultat t1) 1)
        (= (temps t1) 5)

        (not (asignada t2))
        (not (revisada t2))
        (= (dificultat t2) 3)
        (= (temps t2) 2)

        (not (asignada t3))
        (not (revisada t3))
        (= (dificultat t3) 2)
        (= (temps t3) 5)

        (not (asignada t4))
        (not (revisada t4))
        (= (dificultat t4) 2)
        (= (temps t4) 5)

        (not (asignada t5))
        (not (revisada t5))
        (= (dificultat t5) 3)
        (= (temps t5) 5)

        (not (asignada t6))
        (not (revisada t6))
        (= (dificultat t6) 1)
        (= (temps t6) 4)

        (not (asignada t7))
        (not (revisada t7))
        (= (dificultat t7) 1)
        (= (temps t7) 3)

        (not (asignada t8))
        (not (revisada t8))
        (= (dificultat t8) 1)
        (= (temps t8) 4)


        (= (tempsTotal) 0)

    )

    (:goal
          (forall(?t - tasca) (revisada ?t))
    )

    (:metric minimize (tempsTotal))

)
