(define (problem planificator)
    (:domain planificator3000)

    (:objects
        p1 p2 p3 p4 p5 p6 p7 - programador
        t1 t10 t2 t3 t4 t5 t6 t7 t8 t9 - tasca
    )

    (:init

        (disponible p1)
        (= (habilitat p1) 2)
        (= (calitat p1) 1)

        (disponible p2)
        (= (habilitat p2) 3)
        (= (calitat p2) 1)

        (disponible p3)
        (= (habilitat p3) 3)
        (= (calitat p3) 1)

        (disponible p4)
        (= (habilitat p4) 1)
        (= (calitat p4) 1)

        (disponible p5)
        (= (habilitat p5) 1)
        (= (calitat p5) 1)

        (disponible p6)
        (= (habilitat p6) 1)
        (= (calitat p6) 1)

        (disponible p7)
        (= (habilitat p7) 3)
        (= (calitat p7) 2)

        (not (asignada t1))
        (not (revisada t1))
        (= (dificultat t1) 1)
        (= (temps t1) 3)

        (not (asignada t10))
        (not (revisada t10))
        (= (dificultat t10) 1)
        (= (temps t10) 5)

        (not (asignada t2))
        (not (revisada t2))
        (= (dificultat t2) 2)
        (= (temps t2) 4)

        (not (asignada t3))
        (not (revisada t3))
        (= (dificultat t3) 2)
        (= (temps t3) 1)

        (not (asignada t4))
        (not (revisada t4))
        (= (dificultat t4) 3)
        (= (temps t4) 2)

        (not (asignada t5))
        (not (revisada t5))
        (= (dificultat t5) 1)
        (= (temps t5) 2)

        (not (asignada t6))
        (not (revisada t6))
        (= (dificultat t6) 1)
        (= (temps t6) 3)

        (not (asignada t7))
        (not (revisada t7))
        (= (dificultat t7) 2)
        (= (temps t7) 5)

        (not (asignada t8))
        (not (revisada t8))
        (= (dificultat t8) 2)
        (= (temps t8) 4)

        (not (asignada t9))
        (not (revisada t9))
        (= (dificultat t9) 2)
        (= (temps t9) 1)


        (= (tempsTotal) 0)

    )

    (:goal
          (forall(?t - tasca) (revisada ?t))
    )

    (:metric minimize (tempsTotal))

)
