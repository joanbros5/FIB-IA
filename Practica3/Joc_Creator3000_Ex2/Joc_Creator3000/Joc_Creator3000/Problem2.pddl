(define (problem planificator)
    (:domain planificator3000)

    (:objects
        p1 p10 p11 p2 p3 p4 p5 p6 p7 p8 p9 - programador
        t1 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t2 t20 t21 t22 t23 t24 t25 t26 t3 t4 t5 t6 t7 t8 t9 - tasca
    )

    (:init

        (disponible p1)
        (= (habilitat p1) 2)
        (= (calitat p1) 1)
        (= (nTasques p1) 0)

        (disponible p10)
        (= (habilitat p10) 1)
        (= (calitat p10) 1)
        (= (nTasques p10) 0)

        (disponible p11)
        (= (habilitat p11) 1)
        (= (calitat p11) 1)
        (= (nTasques p11) 0)

        (disponible p2)
        (= (habilitat p2) 1)
        (= (calitat p2) 2)
        (= (nTasques p2) 0)

        (disponible p3)
        (= (habilitat p3) 1)
        (= (calitat p3) 1)
        (= (nTasques p3) 0)

        (disponible p4)
        (= (habilitat p4) 1)
        (= (calitat p4) 1)
        (= (nTasques p4) 0)

        (disponible p5)
        (= (habilitat p5) 3)
        (= (calitat p5) 1)
        (= (nTasques p5) 0)

        (disponible p6)
        (= (habilitat p6) 3)
        (= (calitat p6) 2)
        (= (nTasques p6) 0)

        (disponible p7)
        (= (habilitat p7) 3)
        (= (calitat p7) 2)
        (= (nTasques p7) 0)

        (disponible p8)
        (= (habilitat p8) 2)
        (= (calitat p8) 1)
        (= (nTasques p8) 0)

        (disponible p9)
        (= (habilitat p9) 3)
        (= (calitat p9) 1)
        (= (nTasques p9) 0)

        (not (asignada t1))
        (not (revisada t1))
        (= (dificultat t1) 3)
        (= (temps t1) 5)

        (not (asignada t10))
        (not (revisada t10))
        (= (dificultat t10) 3)
        (= (temps t10) 4)

        (not (asignada t11))
        (not (revisada t11))
        (= (dificultat t11) 2)
        (= (temps t11) 2)

        (not (asignada t12))
        (not (revisada t12))
        (= (dificultat t12) 3)
        (= (temps t12) 3)

        (not (asignada t13))
        (not (revisada t13))
        (= (dificultat t13) 2)
        (= (temps t13) 5)

        (not (asignada t14))
        (not (revisada t14))
        (= (dificultat t14) 1)
        (= (temps t14) 4)

        (not (asignada t15))
        (not (revisada t15))
        (= (dificultat t15) 1)
        (= (temps t15) 2)

        (not (asignada t16))
        (not (revisada t16))
        (= (dificultat t16) 3)
        (= (temps t16) 3)

        (not (asignada t17))
        (not (revisada t17))
        (= (dificultat t17) 1)
        (= (temps t17) 4)

        (not (asignada t18))
        (not (revisada t18))
        (= (dificultat t18) 3)
        (= (temps t18) 5)

        (not (asignada t19))
        (not (revisada t19))
        (= (dificultat t19) 3)
        (= (temps t19) 5)

        (not (asignada t2))
        (not (revisada t2))
        (= (dificultat t2) 3)
        (= (temps t2) 5)

        (not (asignada t20))
        (not (revisada t20))
        (= (dificultat t20) 1)
        (= (temps t20) 4)

        (not (asignada t21))
        (not (revisada t21))
        (= (dificultat t21) 2)
        (= (temps t21) 5)

        (not (asignada t22))
        (not (revisada t22))
        (= (dificultat t22) 3)
        (= (temps t22) 1)

        (not (asignada t23))
        (not (revisada t23))
        (= (dificultat t23) 3)
        (= (temps t23) 2)

        (not (asignada t24))
        (not (revisada t24))
        (= (dificultat t24) 3)
        (= (temps t24) 2)

        (not (asignada t25))
        (not (revisada t25))
        (= (dificultat t25) 3)
        (= (temps t25) 1)

        (not (asignada t26))
        (not (revisada t26))
        (= (dificultat t26) 1)
        (= (temps t26) 5)

        (not (asignada t3))
        (not (revisada t3))
        (= (dificultat t3) 1)
        (= (temps t3) 1)

        (not (asignada t4))
        (not (revisada t4))
        (= (dificultat t4) 1)
        (= (temps t4) 1)

        (not (asignada t5))
        (not (revisada t5))
        (= (dificultat t5) 2)
        (= (temps t5) 1)

        (not (asignada t6))
        (not (revisada t6))
        (= (dificultat t6) 3)
        (= (temps t6) 1)

        (not (asignada t7))
        (not (revisada t7))
        (= (dificultat t7) 2)
        (= (temps t7) 5)

        (not (asignada t8))
        (not (revisada t8))
        (= (dificultat t8) 2)
        (= (temps t8) 2)

        (not (asignada t9))
        (not (revisada t9))
        (= (dificultat t9) 2)
        (= (temps t9) 2)


        (= (tempsTotal) 0)

    )

    (:goal
          (forall(?t - tasca) (revisada ?t))
    )

    (:metric minimize(+(*0.1 (tempsTotal)) (*0.9 (progEnUs))))

)
