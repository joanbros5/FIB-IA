(define (problem planificator)
    (:domain planificator3000)

    (:objects
        p1 p10 p11 p12 p13 p14 p15 p16 p17 p2 p3 p4 p5 p6 p7 p8 p9 - programador
        t1 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t2 t20 t21 t22 t23 t24 t25 t26 t3 t4 t5 t6 t7 t8 t9 - tasca
    )

    (:init

        (disponible p1)
        (= (habilitat p1) 3)
        (= (calitat p1) 2)

        (disponible p10)
        (= (habilitat p10) 2)
        (= (calitat p10) 2)

        (disponible p11)
        (= (habilitat p11) 2)
        (= (calitat p11) 2)

        (disponible p12)
        (= (habilitat p12) 1)
        (= (calitat p12) 2)

        (disponible p13)
        (= (habilitat p13) 1)
        (= (calitat p13) 1)

        (disponible p14)
        (= (habilitat p14) 1)
        (= (calitat p14) 2)

        (disponible p15)
        (= (habilitat p15) 1)
        (= (calitat p15) 1)

        (disponible p16)
        (= (habilitat p16) 2)
        (= (calitat p16) 2)

        (disponible p17)
        (= (habilitat p17) 1)
        (= (calitat p17) 2)

        (disponible p2)
        (= (habilitat p2) 1)
        (= (calitat p2) 2)

        (disponible p3)
        (= (habilitat p3) 1)
        (= (calitat p3) 2)

        (disponible p4)
        (= (habilitat p4) 1)
        (= (calitat p4) 1)

        (disponible p5)
        (= (habilitat p5) 1)
        (= (calitat p5) 1)

        (disponible p6)
        (= (habilitat p6) 2)
        (= (calitat p6) 2)

        (disponible p7)
        (= (habilitat p7) 3)
        (= (calitat p7) 2)

        (disponible p8)
        (= (habilitat p8) 1)
        (= (calitat p8) 1)

        (disponible p9)
        (= (habilitat p9) 3)
        (= (calitat p9) 2)

        (not (asignada t1))
        (not (revisada t1))
        (= (dificultat t1) 3)
        (= (temps t1) 2)

        (not (asignada t10))
        (not (revisada t10))
        (= (dificultat t10) 1)
        (= (temps t10) 3)

        (not (asignada t11))
        (not (revisada t11))
        (= (dificultat t11) 1)
        (= (temps t11) 1)

        (not (asignada t12))
        (not (revisada t12))
        (= (dificultat t12) 1)
        (= (temps t12) 1)

        (not (asignada t13))
        (not (revisada t13))
        (= (dificultat t13) 3)
        (= (temps t13) 1)

        (not (asignada t14))
        (not (revisada t14))
        (= (dificultat t14) 2)
        (= (temps t14) 5)

        (not (asignada t15))
        (not (revisada t15))
        (= (dificultat t15) 3)
        (= (temps t15) 2)

        (not (asignada t16))
        (not (revisada t16))
        (= (dificultat t16) 2)
        (= (temps t16) 4)

        (not (asignada t17))
        (not (revisada t17))
        (= (dificultat t17) 2)
        (= (temps t17) 1)

        (not (asignada t18))
        (not (revisada t18))
        (= (dificultat t18) 3)
        (= (temps t18) 1)

        (not (asignada t19))
        (not (revisada t19))
        (= (dificultat t19) 2)
        (= (temps t19) 2)

        (not (asignada t2))
        (not (revisada t2))
        (= (dificultat t2) 2)
        (= (temps t2) 5)

        (not (asignada t20))
        (not (revisada t20))
        (= (dificultat t20) 3)
        (= (temps t20) 5)

        (not (asignada t21))
        (not (revisada t21))
        (= (dificultat t21) 2)
        (= (temps t21) 4)

        (not (asignada t22))
        (not (revisada t22))
        (= (dificultat t22) 2)
        (= (temps t22) 5)

        (not (asignada t23))
        (not (revisada t23))
        (= (dificultat t23) 3)
        (= (temps t23) 4)

        (not (asignada t24))
        (not (revisada t24))
        (= (dificultat t24) 2)
        (= (temps t24) 5)

        (not (asignada t25))
        (not (revisada t25))
        (= (dificultat t25) 1)
        (= (temps t25) 3)

        (not (asignada t26))
        (not (revisada t26))
        (= (dificultat t26) 2)
        (= (temps t26) 1)

        (not (asignada t3))
        (not (revisada t3))
        (= (dificultat t3) 2)
        (= (temps t3) 4)

        (not (asignada t4))
        (not (revisada t4))
        (= (dificultat t4) 2)
        (= (temps t4) 1)

        (not (asignada t5))
        (not (revisada t5))
        (= (dificultat t5) 1)
        (= (temps t5) 3)

        (not (asignada t6))
        (not (revisada t6))
        (= (dificultat t6) 1)
        (= (temps t6) 4)

        (not (asignada t7))
        (not (revisada t7))
        (= (dificultat t7) 2)
        (= (temps t7) 3)

        (not (asignada t8))
        (not (revisada t8))
        (= (dificultat t8) 3)
        (= (temps t8) 3)

        (not (asignada t9))
        (not (revisada t9))
        (= (dificultat t9) 3)
        (= (temps t9) 3)


        (= (tempsTotal) 0)

    )

    (:goal
          (forall(?t - tasca) (revisada ?t))
    )

    (:metric minimize (tempsTotal))

)
