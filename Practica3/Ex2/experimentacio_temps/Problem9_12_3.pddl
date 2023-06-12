(define (problem planificator)
    (:domain planificator3000)

    (:objects
        p1 p10 p11 p12 p2 p3 p4 p5 p6 p7 p8 p9 - programador
        t1 t10 t11 t12 t13 t14 t15 t16 t17 t2 t3 t4 t5 t6 t7 t8 t9 - tasca
    )

    (:init

        (disponible p1)
        (= (habilitat p1) 1)
        (= (calitat p1) 1)

        (disponible p10)
        (= (habilitat p10) 3)
        (= (calitat p10) 2)

        (disponible p11)
        (= (habilitat p11) 1)
        (= (calitat p11) 1)

        (disponible p12)
        (= (habilitat p12) 2)
        (= (calitat p12) 2)

        (disponible p2)
        (= (habilitat p2) 1)
        (= (calitat p2) 1)

        (disponible p3)
        (= (habilitat p3) 2)
        (= (calitat p3) 2)

        (disponible p4)
        (= (habilitat p4) 1)
        (= (calitat p4) 1)

        (disponible p5)
        (= (habilitat p5) 3)
        (= (calitat p5) 1)

        (disponible p6)
        (= (habilitat p6) 3)
        (= (calitat p6) 2)

        (disponible p7)
        (= (habilitat p7) 1)
        (= (calitat p7) 2)

        (disponible p8)
        (= (habilitat p8) 3)
        (= (calitat p8) 1)

        (disponible p9)
        (= (habilitat p9) 2)
        (= (calitat p9) 1)

        (not (asignada t1))
        (not (revisada t1))
        (= (dificultat t1) 3)
        (= (temps t1) 1)

        (not (asignada t10))
        (not (revisada t10))
        (= (dificultat t10) 3)
        (= (temps t10) 1)

        (not (asignada t11))
        (not (revisada t11))
        (= (dificultat t11) 1)
        (= (temps t11) 1)

        (not (asignada t12))
        (not (revisada t12))
        (= (dificultat t12) 2)
        (= (temps t12) 5)

        (not (asignada t13))
        (not (revisada t13))
        (= (dificultat t13) 2)
        (= (temps t13) 2)

        (not (asignada t14))
        (not (revisada t14))
        (= (dificultat t14) 2)
        (= (temps t14) 4)

        (not (asignada t15))
        (not (revisada t15))
        (= (dificultat t15) 1)
        (= (temps t15) 1)

        (not (asignada t16))
        (not (revisada t16))
        (= (dificultat t16) 1)
        (= (temps t16) 1)

        (not (asignada t17))
        (not (revisada t17))
        (= (dificultat t17) 1)
        (= (temps t17) 4)

        (not (asignada t2))
        (not (revisada t2))
        (= (dificultat t2) 1)
        (= (temps t2) 5)

        (not (asignada t3))
        (not (revisada t3))
        (= (dificultat t3) 3)
        (= (temps t3) 3)

        (not (asignada t4))
        (not (revisada t4))
        (= (dificultat t4) 3)
        (= (temps t4) 3)

        (not (asignada t5))
        (not (revisada t5))
        (= (dificultat t5) 2)
        (= (temps t5) 1)

        (not (asignada t6))
        (not (revisada t6))
        (= (dificultat t6) 2)
        (= (temps t6) 4)

        (not (asignada t7))
        (not (revisada t7))
        (= (dificultat t7) 1)
        (= (temps t7) 1)

        (not (asignada t8))
        (not (revisada t8))
        (= (dificultat t8) 2)
        (= (temps t8) 3)

        (not (asignada t9))
        (not (revisada t9))
        (= (dificultat t9) 1)
        (= (temps t9) 2)


        (= (tempsTotal) 0)

    )

    (:goal
          (forall(?t - tasca) (revisada ?t))
    )

    (:metric minimize (tempsTotal))

)
