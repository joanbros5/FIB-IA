(define (problem planificator)
    (:domain planificator3000)

    (:objects
        p1 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p2 p20 p21 p22 p23 p3 p4 p5 p6 p7 p8 p9 - programador
        t1 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t2 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t3 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t4 t40 t41 t42 t43 t44 t45 t46 t47 t48 t49 t5 t50 t51 t52 t53 t54 t55 t56 t57 t58 t59 t6 t60 t7 t8 t9 - tasca
    )

    (:init

        (disponible p1)
        (= (habilitat p1) 1)
        (= (calitat p1) 1)

        (disponible p10)
        (= (habilitat p10) 1)
        (= (calitat p10) 2)

        (disponible p11)
        (= (habilitat p11) 3)
        (= (calitat p11) 1)

        (disponible p12)
        (= (habilitat p12) 2)
        (= (calitat p12) 1)

        (disponible p13)
        (= (habilitat p13) 1)
        (= (calitat p13) 2)

        (disponible p14)
        (= (habilitat p14) 1)
        (= (calitat p14) 2)

        (disponible p15)
        (= (habilitat p15) 2)
        (= (calitat p15) 1)

        (disponible p16)
        (= (habilitat p16) 3)
        (= (calitat p16) 1)

        (disponible p17)
        (= (habilitat p17) 1)
        (= (calitat p17) 1)

        (disponible p18)
        (= (habilitat p18) 1)
        (= (calitat p18) 2)

        (disponible p19)
        (= (habilitat p19) 2)
        (= (calitat p19) 2)

        (disponible p2)
        (= (habilitat p2) 2)
        (= (calitat p2) 1)

        (disponible p20)
        (= (habilitat p20) 3)
        (= (calitat p20) 2)

        (disponible p21)
        (= (habilitat p21) 2)
        (= (calitat p21) 2)

        (disponible p22)
        (= (habilitat p22) 3)
        (= (calitat p22) 2)

        (disponible p23)
        (= (habilitat p23) 3)
        (= (calitat p23) 1)

        (disponible p3)
        (= (habilitat p3) 1)
        (= (calitat p3) 2)

        (disponible p4)
        (= (habilitat p4) 3)
        (= (calitat p4) 2)

        (disponible p5)
        (= (habilitat p5) 1)
        (= (calitat p5) 1)

        (disponible p6)
        (= (habilitat p6) 1)
        (= (calitat p6) 1)

        (disponible p7)
        (= (habilitat p7) 3)
        (= (calitat p7) 2)

        (disponible p8)
        (= (habilitat p8) 2)
        (= (calitat p8) 2)

        (disponible p9)
        (= (habilitat p9) 1)
        (= (calitat p9) 2)

        (not (asignada t1))
        (not (revisada t1))
        (= (dificultat t1) 1)
        (= (temps t1) 4)

        (not (asignada t10))
        (not (revisada t10))
        (= (dificultat t10) 1)
        (= (temps t10) 3)

        (not (asignada t11))
        (not (revisada t11))
        (= (dificultat t11) 1)
        (= (temps t11) 2)

        (not (asignada t12))
        (not (revisada t12))
        (= (dificultat t12) 3)
        (= (temps t12) 3)

        (not (asignada t13))
        (not (revisada t13))
        (= (dificultat t13) 3)
        (= (temps t13) 4)

        (not (asignada t14))
        (not (revisada t14))
        (= (dificultat t14) 3)
        (= (temps t14) 1)

        (not (asignada t15))
        (not (revisada t15))
        (= (dificultat t15) 1)
        (= (temps t15) 3)

        (not (asignada t16))
        (not (revisada t16))
        (= (dificultat t16) 2)
        (= (temps t16) 3)

        (not (asignada t17))
        (not (revisada t17))
        (= (dificultat t17) 3)
        (= (temps t17) 5)

        (not (asignada t18))
        (not (revisada t18))
        (= (dificultat t18) 3)
        (= (temps t18) 2)

        (not (asignada t19))
        (not (revisada t19))
        (= (dificultat t19) 2)
        (= (temps t19) 5)

        (not (asignada t2))
        (not (revisada t2))
        (= (dificultat t2) 1)
        (= (temps t2) 4)

        (not (asignada t20))
        (not (revisada t20))
        (= (dificultat t20) 3)
        (= (temps t20) 2)

        (not (asignada t21))
        (not (revisada t21))
        (= (dificultat t21) 2)
        (= (temps t21) 2)

        (not (asignada t22))
        (not (revisada t22))
        (= (dificultat t22) 2)
        (= (temps t22) 2)

        (not (asignada t23))
        (not (revisada t23))
        (= (dificultat t23) 2)
        (= (temps t23) 1)

        (not (asignada t24))
        (not (revisada t24))
        (= (dificultat t24) 2)
        (= (temps t24) 4)

        (not (asignada t25))
        (not (revisada t25))
        (= (dificultat t25) 3)
        (= (temps t25) 3)

        (not (asignada t26))
        (not (revisada t26))
        (= (dificultat t26) 2)
        (= (temps t26) 4)

        (not (asignada t27))
        (not (revisada t27))
        (= (dificultat t27) 3)
        (= (temps t27) 1)

        (not (asignada t28))
        (not (revisada t28))
        (= (dificultat t28) 1)
        (= (temps t28) 4)

        (not (asignada t29))
        (not (revisada t29))
        (= (dificultat t29) 3)
        (= (temps t29) 4)

        (not (asignada t3))
        (not (revisada t3))
        (= (dificultat t3) 3)
        (= (temps t3) 2)

        (not (asignada t30))
        (not (revisada t30))
        (= (dificultat t30) 1)
        (= (temps t30) 1)

        (not (asignada t31))
        (not (revisada t31))
        (= (dificultat t31) 1)
        (= (temps t31) 2)

        (not (asignada t32))
        (not (revisada t32))
        (= (dificultat t32) 2)
        (= (temps t32) 5)

        (not (asignada t33))
        (not (revisada t33))
        (= (dificultat t33) 2)
        (= (temps t33) 4)

        (not (asignada t34))
        (not (revisada t34))
        (= (dificultat t34) 2)
        (= (temps t34) 1)

        (not (asignada t35))
        (not (revisada t35))
        (= (dificultat t35) 2)
        (= (temps t35) 1)

        (not (asignada t36))
        (not (revisada t36))
        (= (dificultat t36) 1)
        (= (temps t36) 1)

        (not (asignada t37))
        (not (revisada t37))
        (= (dificultat t37) 3)
        (= (temps t37) 5)

        (not (asignada t38))
        (not (revisada t38))
        (= (dificultat t38) 3)
        (= (temps t38) 2)

        (not (asignada t39))
        (not (revisada t39))
        (= (dificultat t39) 3)
        (= (temps t39) 3)

        (not (asignada t4))
        (not (revisada t4))
        (= (dificultat t4) 1)
        (= (temps t4) 3)

        (not (asignada t40))
        (not (revisada t40))
        (= (dificultat t40) 1)
        (= (temps t40) 4)

        (not (asignada t41))
        (not (revisada t41))
        (= (dificultat t41) 1)
        (= (temps t41) 4)

        (not (asignada t42))
        (not (revisada t42))
        (= (dificultat t42) 1)
        (= (temps t42) 3)

        (not (asignada t43))
        (not (revisada t43))
        (= (dificultat t43) 3)
        (= (temps t43) 1)

        (not (asignada t44))
        (not (revisada t44))
        (= (dificultat t44) 1)
        (= (temps t44) 3)

        (not (asignada t45))
        (not (revisada t45))
        (= (dificultat t45) 3)
        (= (temps t45) 1)

        (not (asignada t46))
        (not (revisada t46))
        (= (dificultat t46) 3)
        (= (temps t46) 5)

        (not (asignada t47))
        (not (revisada t47))
        (= (dificultat t47) 3)
        (= (temps t47) 3)

        (not (asignada t48))
        (not (revisada t48))
        (= (dificultat t48) 1)
        (= (temps t48) 2)

        (not (asignada t49))
        (not (revisada t49))
        (= (dificultat t49) 2)
        (= (temps t49) 1)

        (not (asignada t5))
        (not (revisada t5))
        (= (dificultat t5) 3)
        (= (temps t5) 3)

        (not (asignada t50))
        (not (revisada t50))
        (= (dificultat t50) 1)
        (= (temps t50) 5)

        (not (asignada t51))
        (not (revisada t51))
        (= (dificultat t51) 3)
        (= (temps t51) 4)

        (not (asignada t52))
        (not (revisada t52))
        (= (dificultat t52) 1)
        (= (temps t52) 2)

        (not (asignada t53))
        (not (revisada t53))
        (= (dificultat t53) 3)
        (= (temps t53) 2)

        (not (asignada t54))
        (not (revisada t54))
        (= (dificultat t54) 2)
        (= (temps t54) 3)

        (not (asignada t55))
        (not (revisada t55))
        (= (dificultat t55) 1)
        (= (temps t55) 1)

        (not (asignada t56))
        (not (revisada t56))
        (= (dificultat t56) 1)
        (= (temps t56) 3)

        (not (asignada t57))
        (not (revisada t57))
        (= (dificultat t57) 3)
        (= (temps t57) 5)

        (not (asignada t58))
        (not (revisada t58))
        (= (dificultat t58) 1)
        (= (temps t58) 2)

        (not (asignada t59))
        (not (revisada t59))
        (= (dificultat t59) 2)
        (= (temps t59) 1)

        (not (asignada t6))
        (not (revisada t6))
        (= (dificultat t6) 1)
        (= (temps t6) 1)

        (not (asignada t60))
        (not (revisada t60))
        (= (dificultat t60) 1)
        (= (temps t60) 5)

        (not (asignada t7))
        (not (revisada t7))
        (= (dificultat t7) 3)
        (= (temps t7) 4)

        (not (asignada t8))
        (not (revisada t8))
        (= (dificultat t8) 1)
        (= (temps t8) 2)

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
