(define (problem planificator)
    (:domain planificator3000)

    (:objects
        p1 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p2 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p3 p30 p31 p32 p4 p5 p6 p7 p8 p9 - programador
        t1 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t2 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t3 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t4 t40 t41 t42 t43 t44 t45 t46 t47 t48 t49 t5 t50 t51 t52 t53 t54 t55 t56 t57 t58 t59 t6 t60 t61 t62 t63 t64 t65 t66 t67 t68 t69 t7 t70 t71 t72 t73 t74 t75 t8 t9 - tasca
    )

    (:init

        (disponible p1)
        (= (habilitat p1) 2)
        (= (calitat p1) 1)

        (disponible p10)
        (= (habilitat p10) 1)
        (= (calitat p10) 2)

        (disponible p11)
        (= (habilitat p11) 2)
        (= (calitat p11) 2)

        (disponible p12)
        (= (habilitat p12) 2)
        (= (calitat p12) 1)

        (disponible p13)
        (= (habilitat p13) 1)
        (= (calitat p13) 2)

        (disponible p14)
        (= (habilitat p14) 2)
        (= (calitat p14) 1)

        (disponible p15)
        (= (habilitat p15) 1)
        (= (calitat p15) 1)

        (disponible p16)
        (= (habilitat p16) 3)
        (= (calitat p16) 2)

        (disponible p17)
        (= (habilitat p17) 1)
        (= (calitat p17) 2)

        (disponible p18)
        (= (habilitat p18) 1)
        (= (calitat p18) 2)

        (disponible p19)
        (= (habilitat p19) 3)
        (= (calitat p19) 1)

        (disponible p2)
        (= (habilitat p2) 1)
        (= (calitat p2) 2)

        (disponible p20)
        (= (habilitat p20) 1)
        (= (calitat p20) 2)

        (disponible p21)
        (= (habilitat p21) 2)
        (= (calitat p21) 1)

        (disponible p22)
        (= (habilitat p22) 2)
        (= (calitat p22) 1)

        (disponible p23)
        (= (habilitat p23) 3)
        (= (calitat p23) 1)

        (disponible p24)
        (= (habilitat p24) 1)
        (= (calitat p24) 2)

        (disponible p25)
        (= (habilitat p25) 3)
        (= (calitat p25) 2)

        (disponible p26)
        (= (habilitat p26) 3)
        (= (calitat p26) 2)

        (disponible p27)
        (= (habilitat p27) 1)
        (= (calitat p27) 1)

        (disponible p28)
        (= (habilitat p28) 2)
        (= (calitat p28) 2)

        (disponible p29)
        (= (habilitat p29) 1)
        (= (calitat p29) 1)

        (disponible p3)
        (= (habilitat p3) 3)
        (= (calitat p3) 1)

        (disponible p30)
        (= (habilitat p30) 2)
        (= (calitat p30) 1)

        (disponible p31)
        (= (habilitat p31) 2)
        (= (calitat p31) 2)

        (disponible p32)
        (= (habilitat p32) 3)
        (= (calitat p32) 2)

        (disponible p4)
        (= (habilitat p4) 2)
        (= (calitat p4) 1)

        (disponible p5)
        (= (habilitat p5) 1)
        (= (calitat p5) 1)

        (disponible p6)
        (= (habilitat p6) 3)
        (= (calitat p6) 2)

        (disponible p7)
        (= (habilitat p7) 3)
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
        (= (dificultat t10) 1)
        (= (temps t10) 4)

        (not (asignada t11))
        (not (revisada t11))
        (= (dificultat t11) 3)
        (= (temps t11) 2)

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
        (= (dificultat t14) 1)
        (= (temps t14) 3)

        (not (asignada t15))
        (not (revisada t15))
        (= (dificultat t15) 3)
        (= (temps t15) 2)

        (not (asignada t16))
        (not (revisada t16))
        (= (dificultat t16) 2)
        (= (temps t16) 1)

        (not (asignada t17))
        (not (revisada t17))
        (= (dificultat t17) 3)
        (= (temps t17) 5)

        (not (asignada t18))
        (not (revisada t18))
        (= (dificultat t18) 2)
        (= (temps t18) 4)

        (not (asignada t19))
        (not (revisada t19))
        (= (dificultat t19) 3)
        (= (temps t19) 4)

        (not (asignada t2))
        (not (revisada t2))
        (= (dificultat t2) 2)
        (= (temps t2) 1)

        (not (asignada t20))
        (not (revisada t20))
        (= (dificultat t20) 2)
        (= (temps t20) 3)

        (not (asignada t21))
        (not (revisada t21))
        (= (dificultat t21) 1)
        (= (temps t21) 3)

        (not (asignada t22))
        (not (revisada t22))
        (= (dificultat t22) 1)
        (= (temps t22) 1)

        (not (asignada t23))
        (not (revisada t23))
        (= (dificultat t23) 2)
        (= (temps t23) 5)

        (not (asignada t24))
        (not (revisada t24))
        (= (dificultat t24) 3)
        (= (temps t24) 1)

        (not (asignada t25))
        (not (revisada t25))
        (= (dificultat t25) 3)
        (= (temps t25) 2)

        (not (asignada t26))
        (not (revisada t26))
        (= (dificultat t26) 2)
        (= (temps t26) 2)

        (not (asignada t27))
        (not (revisada t27))
        (= (dificultat t27) 2)
        (= (temps t27) 4)

        (not (asignada t28))
        (not (revisada t28))
        (= (dificultat t28) 2)
        (= (temps t28) 2)

        (not (asignada t29))
        (not (revisada t29))
        (= (dificultat t29) 1)
        (= (temps t29) 5)

        (not (asignada t3))
        (not (revisada t3))
        (= (dificultat t3) 2)
        (= (temps t3) 4)

        (not (asignada t30))
        (not (revisada t30))
        (= (dificultat t30) 3)
        (= (temps t30) 2)

        (not (asignada t31))
        (not (revisada t31))
        (= (dificultat t31) 1)
        (= (temps t31) 5)

        (not (asignada t32))
        (not (revisada t32))
        (= (dificultat t32) 2)
        (= (temps t32) 5)

        (not (asignada t33))
        (not (revisada t33))
        (= (dificultat t33) 1)
        (= (temps t33) 2)

        (not (asignada t34))
        (not (revisada t34))
        (= (dificultat t34) 3)
        (= (temps t34) 4)

        (not (asignada t35))
        (not (revisada t35))
        (= (dificultat t35) 1)
        (= (temps t35) 3)

        (not (asignada t36))
        (not (revisada t36))
        (= (dificultat t36) 1)
        (= (temps t36) 3)

        (not (asignada t37))
        (not (revisada t37))
        (= (dificultat t37) 2)
        (= (temps t37) 4)

        (not (asignada t38))
        (not (revisada t38))
        (= (dificultat t38) 1)
        (= (temps t38) 2)

        (not (asignada t39))
        (not (revisada t39))
        (= (dificultat t39) 2)
        (= (temps t39) 4)

        (not (asignada t4))
        (not (revisada t4))
        (= (dificultat t4) 3)
        (= (temps t4) 4)

        (not (asignada t40))
        (not (revisada t40))
        (= (dificultat t40) 3)
        (= (temps t40) 3)

        (not (asignada t41))
        (not (revisada t41))
        (= (dificultat t41) 2)
        (= (temps t41) 4)

        (not (asignada t42))
        (not (revisada t42))
        (= (dificultat t42) 2)
        (= (temps t42) 3)

        (not (asignada t43))
        (not (revisada t43))
        (= (dificultat t43) 2)
        (= (temps t43) 1)

        (not (asignada t44))
        (not (revisada t44))
        (= (dificultat t44) 3)
        (= (temps t44) 1)

        (not (asignada t45))
        (not (revisada t45))
        (= (dificultat t45) 1)
        (= (temps t45) 2)

        (not (asignada t46))
        (not (revisada t46))
        (= (dificultat t46) 3)
        (= (temps t46) 5)

        (not (asignada t47))
        (not (revisada t47))
        (= (dificultat t47) 3)
        (= (temps t47) 5)

        (not (asignada t48))
        (not (revisada t48))
        (= (dificultat t48) 1)
        (= (temps t48) 1)

        (not (asignada t49))
        (not (revisada t49))
        (= (dificultat t49) 1)
        (= (temps t49) 5)

        (not (asignada t5))
        (not (revisada t5))
        (= (dificultat t5) 2)
        (= (temps t5) 4)

        (not (asignada t50))
        (not (revisada t50))
        (= (dificultat t50) 3)
        (= (temps t50) 1)

        (not (asignada t51))
        (not (revisada t51))
        (= (dificultat t51) 1)
        (= (temps t51) 3)

        (not (asignada t52))
        (not (revisada t52))
        (= (dificultat t52) 3)
        (= (temps t52) 4)

        (not (asignada t53))
        (not (revisada t53))
        (= (dificultat t53) 1)
        (= (temps t53) 3)

        (not (asignada t54))
        (not (revisada t54))
        (= (dificultat t54) 2)
        (= (temps t54) 3)

        (not (asignada t55))
        (not (revisada t55))
        (= (dificultat t55) 3)
        (= (temps t55) 4)

        (not (asignada t56))
        (not (revisada t56))
        (= (dificultat t56) 1)
        (= (temps t56) 4)

        (not (asignada t57))
        (not (revisada t57))
        (= (dificultat t57) 3)
        (= (temps t57) 2)

        (not (asignada t58))
        (not (revisada t58))
        (= (dificultat t58) 1)
        (= (temps t58) 3)

        (not (asignada t59))
        (not (revisada t59))
        (= (dificultat t59) 2)
        (= (temps t59) 2)

        (not (asignada t6))
        (not (revisada t6))
        (= (dificultat t6) 2)
        (= (temps t6) 1)

        (not (asignada t60))
        (not (revisada t60))
        (= (dificultat t60) 3)
        (= (temps t60) 5)

        (not (asignada t61))
        (not (revisada t61))
        (= (dificultat t61) 1)
        (= (temps t61) 3)

        (not (asignada t62))
        (not (revisada t62))
        (= (dificultat t62) 2)
        (= (temps t62) 5)

        (not (asignada t63))
        (not (revisada t63))
        (= (dificultat t63) 1)
        (= (temps t63) 2)

        (not (asignada t64))
        (not (revisada t64))
        (= (dificultat t64) 1)
        (= (temps t64) 3)

        (not (asignada t65))
        (not (revisada t65))
        (= (dificultat t65) 2)
        (= (temps t65) 2)

        (not (asignada t66))
        (not (revisada t66))
        (= (dificultat t66) 2)
        (= (temps t66) 4)

        (not (asignada t67))
        (not (revisada t67))
        (= (dificultat t67) 2)
        (= (temps t67) 2)

        (not (asignada t68))
        (not (revisada t68))
        (= (dificultat t68) 2)
        (= (temps t68) 4)

        (not (asignada t69))
        (not (revisada t69))
        (= (dificultat t69) 2)
        (= (temps t69) 4)

        (not (asignada t7))
        (not (revisada t7))
        (= (dificultat t7) 2)
        (= (temps t7) 3)

        (not (asignada t70))
        (not (revisada t70))
        (= (dificultat t70) 1)
        (= (temps t70) 3)

        (not (asignada t71))
        (not (revisada t71))
        (= (dificultat t71) 3)
        (= (temps t71) 3)

        (not (asignada t72))
        (not (revisada t72))
        (= (dificultat t72) 1)
        (= (temps t72) 2)

        (not (asignada t73))
        (not (revisada t73))
        (= (dificultat t73) 2)
        (= (temps t73) 5)

        (not (asignada t74))
        (not (revisada t74))
        (= (dificultat t74) 3)
        (= (temps t74) 3)

        (not (asignada t75))
        (not (revisada t75))
        (= (dificultat t75) 3)
        (= (temps t75) 5)

        (not (asignada t8))
        (not (revisada t8))
        (= (dificultat t8) 3)
        (= (temps t8) 4)

        (not (asignada t9))
        (not (revisada t9))
        (= (dificultat t9) 2)
        (= (temps t9) 5)


        (= (tempsTotal) 0)

    )

    (:goal
          (forall(?t - tasca) (revisada ?t))
    )

    (:metric minimize (tempsTotal))

)
