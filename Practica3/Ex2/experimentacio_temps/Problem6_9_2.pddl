(define (problem planificator)
    (:domain planificator3000)

    (:objects
        p1 p2 p3 p4 p5 p6 - programador
        t1 t10 t11 t2 t3 t4 t5 t6 t7 t8 t9 - tasca
    )

    (:init

        (disponible p1)
        (= (habilitat p1) 2)
        (= (calitat p1) 2)

        (disponible p2)
        (= (habilitat p2) 3)
        (= (calitat p2) 2)

        (disponible p3)
        (= (habilitat p3) 2)
        (= (calitat p3) 2)

        (disponible p4)
        (= (habilitat p4) 1)
        (= (calitat p4) 2)

        (disponible p5)
        (= (habilitat p5) 3)
        (= (calitat p5) 1)

        (disponible p6)
        (= (habilitat p6) 2)
        (= (calitat p6) 2)

        (not (asignada t1))
        (not (revisada t1))
        (= (dificultat t1) 3)
        (= (temps t1) 2)

        (not (asignada t10))
        (not (revisada t10))
        (= (dificultat t10) 1)
        (= (temps t10) 4)

        (not (asignada t11))
        (not (revisada t11))
        (= (dificultat t11) 1)
        (= (temps t11) 5)

        (not (asignada t2))
        (not (revisada t2))
        (= (dificultat t2) 3)
        (= (temps t2) 2)

        (not (asignada t3))
        (not (revisada t3))
        (= (dificultat t3) 2)
        (= (temps t3) 1)

        (not (asignada t4))
        (not (revisada t4))
        (= (dificultat t4) 2)
        (= (temps t4) 5)

        (not (asignada t5))
        (not (revisada t5))
        (= (dificultat t5) 2)
        (= (temps t5) 3)

        (not (asignada t6))
        (not (revisada t6))
        (= (dificultat t6) 1)
        (= (temps t6) 1)

        (not (asignada t7))
        (not (revisada t7))
        (= (dificultat t7) 2)
        (= (temps t7) 2)

        (not (asignada t8))
        (not (revisada t8))
        (= (dificultat t8) 2)
        (= (temps t8) 3)

        (not (asignada t9))
        (not (revisada t9))
        (= (dificultat t9) 1)
        (= (temps t9) 5)


        (= (tempsTotal) 0)

    )

    (:goal
          (forall(?t - tasca) (revisada ?t))
    )

    (:metric minimize (tempsTotal))

)
