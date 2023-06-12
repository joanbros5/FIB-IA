(define (problem planificator)
    (:domain planificator3000)

    (:objects
        p1 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p2 p3 p4 p5 p6 p7 p8 p9 - programador
        t1 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t2 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t3 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t4 t5 t6 t7 t8 t9 - tasca
    )

    (:init

        (disponible p1)
        (= (habilitat p1) 3)
        (= (calitat p1) 1)

        (disponible p10)
        (= (habilitat p10) 2)
        (= (calitat p10) 1)

        (disponible p11)
        (= (habilitat p11) 1)
        (= (calitat p11) 1)

        (disponible p12)
        (= (habilitat p12) 1)
        (= (calitat p12) 1)

        (disponible p13)
        (= (habilitat p13) 1)
        (= (calitat p13) 1)

        (disponible p14)
        (= (habilitat p14) 2)
        (= (calitat p14) 2)

        (disponible p15)
        (= (habilitat p15) 3)
        (= (calitat p15) 2)

        (disponible p16)
        (= (habilitat p16) 2)
        (= (calitat p16) 1)

        (disponible p17)
        (= (habilitat p17) 2)
        (= (calitat p17) 1)

        (disponible p18)
        (= (habilitat p18) 3)
        (= (calitat p18) 2)

        (disponible p19)
        (= (habilitat p19) 3)
        (= (calitat p19) 2)

        (disponible p2)
        (= (habilitat p2) 1)
        (= (calitat p2) 1)

        (disponible p3)
        (= (habilitat p3) 3)
        (= (calitat p3) 2)

        (disponible p4)
        (= (habilitat p4) 2)
        (= (calitat p4) 1)

        (disponible p5)
        (= (habilitat p5) 1)
        (= (calitat p5) 2)

        (disponible p6)
        (= (habilitat p6) 1)
        (= (calitat p6) 1)

        (disponible p7)
        (= (habilitat p7) 1)
        (= (calitat p7) 2)

        (disponible p8)
        (= (habilitat p8) 3)
        (= (calitat p8) 2)

        (disponible p9)
        (= (habilitat p9) 2)
        (= (calitat p9) 1)

        (not (asignada t1))
        (not (revisada t1))
        (= (dificultat t1) 3)
        (= (temps t1) 2)

        (not (asignada t10))
        (not (revisada t10))
        (= (dificultat t10) 3)
        (= (temps t10) 5)

        (not (asignada t11))
        (not (revisada t11))
        (= (dificultat t11) 3)
        (= (temps t11) 1)

        (not (asignada t12))
        (not (revisada t12))
        (= (dificultat t12) 3)
        (= (temps t12) 2)

        (not (asignada t13))
        (not (revisada t13))
        (= (dificultat t13) 1)
        (= (temps t13) 4)

        (not (asignada t14))
        (not (revisada t14))
        (= (dificultat t14) 3)
        (= (temps t14) 3)

        (not (asignada t15))
        (not (revisada t15))
        (= (dificultat t15) 3)
        (= (temps t15) 4)

        (not (asignada t16))
        (not (revisada t16))
        (= (dificultat t16) 2)
        (= (temps t16) 4)

        (not (asignada t17))
        (not (revisada t17))
        (= (dificultat t17) 1)
        (= (temps t17) 2)

        (not (asignada t18))
        (not (revisada t18))
        (= (dificultat t18) 2)
        (= (temps t18) 2)

        (not (asignada t19))
        (not (revisada t19))
        (= (dificultat t19) 3)
        (= (temps t19) 2)

        (not (asignada t2))
        (not (revisada t2))
        (= (dificultat t2) 1)
        (= (temps t2) 2)

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
        (= (dificultat t22) 1)
        (= (temps t22) 4)

        (not (asignada t23))
        (not (revisada t23))
        (= (dificultat t23) 1)
        (= (temps t23) 5)

        (not (asignada t24))
        (not (revisada t24))
        (= (dificultat t24) 1)
        (= (temps t24) 1)

        (not (asignada t25))
        (not (revisada t25))
        (= (dificultat t25) 2)
        (= (temps t25) 5)

        (not (asignada t26))
        (not (revisada t26))
        (= (dificultat t26) 1)
        (= (temps t26) 1)

        (not (asignada t27))
        (not (revisada t27))
        (= (dificultat t27) 1)
        (= (temps t27) 3)

        (not (asignada t28))
        (not (revisada t28))
        (= (dificultat t28) 2)
        (= (temps t28) 3)

        (not (asignada t29))
        (not (revisada t29))
        (= (dificultat t29) 3)
        (= (temps t29) 1)

        (not (asignada t3))
        (not (revisada t3))
        (= (dificultat t3) 3)
        (= (temps t3) 1)

        (not (asignada t30))
        (not (revisada t30))
        (= (dificultat t30) 3)
        (= (temps t30) 1)

        (not (asignada t31))
        (not (revisada t31))
        (= (dificultat t31) 2)
        (= (temps t31) 3)

        (not (asignada t32))
        (not (revisada t32))
        (= (dificultat t32) 3)
        (= (temps t32) 4)

        (not (asignada t33))
        (not (revisada t33))
        (= (dificultat t33) 3)
        (= (temps t33) 4)

        (not (asignada t34))
        (not (revisada t34))
        (= (dificultat t34) 2)
        (= (temps t34) 3)

        (not (asignada t35))
        (not (revisada t35))
        (= (dificultat t35) 2)
        (= (temps t35) 5)

        (not (asignada t36))
        (not (revisada t36))
        (= (dificultat t36) 2)
        (= (temps t36) 2)

        (not (asignada t37))
        (not (revisada t37))
        (= (dificultat t37) 2)
        (= (temps t37) 1)

        (not (asignada t38))
        (not (revisada t38))
        (= (dificultat t38) 1)
        (= (temps t38) 3)

        (not (asignada t39))
        (not (revisada t39))
        (= (dificultat t39) 3)
        (= (temps t39) 5)

        (not (asignada t4))
        (not (revisada t4))
        (= (dificultat t4) 2)
        (= (temps t4) 5)

        (not (asignada t5))
        (not (revisada t5))
        (= (dificultat t5) 3)
        (= (temps t5) 4)

        (not (asignada t6))
        (not (revisada t6))
        (= (dificultat t6) 1)
        (= (temps t6) 4)

        (not (asignada t7))
        (not (revisada t7))
        (= (dificultat t7) 3)
        (= (temps t7) 4)

        (not (asignada t8))
        (not (revisada t8))
        (= (dificultat t8) 2)
        (= (temps t8) 1)

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
