(define (problem planificator)
    (:domain planificator3000)

    (:objects
        p1 p10 p11 p2 p3 p4 p5 p6 p7 p8 p9 - programador
        t1 t10 t11 t12 t13 t14 t15 t16 t17 t18 t2 t3 t4 t5 t6 t7 t8 t9 - tasca
    )

    (:init

        (disponible p1)
        (= (habilitat p1) 2)
        (= (calitat p1) 2)
        (= (nTasques p1) 0)

        (disponible p10)
        (= (habilitat p10) 3)
        (= (calitat p10) 2)
        (= (nTasques p10) 0)

        (disponible p11)
        (= (habilitat p11) 1)
        (= (calitat p11) 1)
        (= (nTasques p11) 0)

        (disponible p2)
        (= (habilitat p2) 2)
        (= (calitat p2) 1)
        (= (nTasques p2) 0)

        (disponible p3)
        (= (habilitat p3) 2)
        (= (calitat p3) 1)
        (= (nTasques p3) 0)

        (disponible p4)
        (= (habilitat p4) 1)
        (= (calitat p4) 2)
        (= (nTasques p4) 0)

        (disponible p5)
        (= (habilitat p5) 2)
        (= (calitat p5) 1)
        (= (nTasques p5) 0)

        (disponible p6)
        (= (habilitat p6) 3)
        (= (calitat p6) 2)
        (= (nTasques p6) 0)

        (disponible p7)
        (= (habilitat p7) 3)
        (= (calitat p7) 1)
        (= (nTasques p7) 0)

        (disponible p8)
        (= (habilitat p8) 2)
        (= (calitat p8) 1)
        (= (nTasques p8) 0)

        (disponible p9)
        (= (habilitat p9) 2)
        (= (calitat p9) 2)
        (= (nTasques p9) 0)

        (not (asignada t1))
        (not (revisada t1))
        (= (dificultat t1) 1)
        (= (temps t1) 3)

        (not (asignada t10))
        (not (revisada t10))
        (= (dificultat t10) 3)
        (= (temps t10) 3)

        (not (asignada t11))
        (not (revisada t11))
        (= (dificultat t11) 3)
        (= (temps t11) 5)

        (not (asignada t12))
        (not (revisada t12))
        (= (dificultat t12) 1)
        (= (temps t12) 1)

        (not (asignada t13))
        (not (revisada t13))
        (= (dificultat t13) 2)
        (= (temps t13) 1)

        (not (asignada t14))
        (not (revisada t14))
        (= (dificultat t14) 2)
        (= (temps t14) 4)

        (not (asignada t15))
        (not (revisada t15))
        (= (dificultat t15) 1)
        (= (temps t15) 4)

        (not (asignada t16))
        (not (revisada t16))
        (= (dificultat t16) 2)
        (= (temps t16) 3)

        (not (asignada t17))
        (not (revisada t17))
        (= (dificultat t17) 1)
        (= (temps t17) 1)

        (not (asignada t18))
        (not (revisada t18))
        (= (dificultat t18) 3)
        (= (temps t18) 3)

        (not (asignada t2))
        (not (revisada t2))
        (= (dificultat t2) 1)
        (= (temps t2) 1)

        (not (asignada t3))
        (not (revisada t3))
        (= (dificultat t3) 2)
        (= (temps t3) 4)

        (not (asignada t4))
        (not (revisada t4))
        (= (dificultat t4) 1)
        (= (temps t4) 5)

        (not (asignada t5))
        (not (revisada t5))
        (= (dificultat t5) 3)
        (= (temps t5) 1)

        (not (asignada t6))
        (not (revisada t6))
        (= (dificultat t6) 3)
        (= (temps t6) 2)

        (not (asignada t7))
        (not (revisada t7))
        (= (dificultat t7) 2)
        (= (temps t7) 1)

        (not (asignada t8))
        (not (revisada t8))
        (= (dificultat t8) 1)
        (= (temps t8) 5)

        (not (asignada t9))
        (not (revisada t9))
        (= (dificultat t9) 2)
        (= (temps t9) 3)


        (= (tempsTotal) 0)

    )

    (:goal
          (forall(?t - tasca) (revisada ?t))
    )

    (:metric minimize(+(*0.1 (tempsTotal)) (*0.9 (progEnUs))))

)
