(define (problem planificator)
    (:domain planificator3000)

    (:objects
        p1 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p2 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p3 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p4 p40 p5 p6 p7 p8 p9 - programador
        t1 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t2 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t3 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t4 t40 t41 t42 t43 t44 t45 t46 t47 t48 t49 t5 t50 t51 t52 t53 t54 t55 t56 t57 t58 t59 t6 t60 t61 t62 t63 t64 t65 t66 t67 t68 t69 t7 t70 t71 t72 t73 t74 t75 t76 t77 t78 t79 t8 t80 t81 t82 t83 t84 t85 t86 t87 t88 t89 t9 t90 t91 t92 t93 - tasca
    )

    (:init

        (disponible p1)
        (= (habilitat p1) 3)
        (= (calitat p1) 1)
        (= (nTasques p1) 0)

        (disponible p10)
        (= (habilitat p10) 2)
        (= (calitat p10) 1)
        (= (nTasques p10) 0)

        (disponible p11)
        (= (habilitat p11) 2)
        (= (calitat p11) 2)
        (= (nTasques p11) 0)

        (disponible p12)
        (= (habilitat p12) 3)
        (= (calitat p12) 1)
        (= (nTasques p12) 0)

        (disponible p13)
        (= (habilitat p13) 1)
        (= (calitat p13) 1)
        (= (nTasques p13) 0)

        (disponible p14)
        (= (habilitat p14) 3)
        (= (calitat p14) 2)
        (= (nTasques p14) 0)

        (disponible p15)
        (= (habilitat p15) 1)
        (= (calitat p15) 2)
        (= (nTasques p15) 0)

        (disponible p16)
        (= (habilitat p16) 1)
        (= (calitat p16) 1)
        (= (nTasques p16) 0)

        (disponible p17)
        (= (habilitat p17) 2)
        (= (calitat p17) 1)
        (= (nTasques p17) 0)

        (disponible p18)
        (= (habilitat p18) 3)
        (= (calitat p18) 2)
        (= (nTasques p18) 0)

        (disponible p19)
        (= (habilitat p19) 1)
        (= (calitat p19) 1)
        (= (nTasques p19) 0)

        (disponible p2)
        (= (habilitat p2) 3)
        (= (calitat p2) 1)
        (= (nTasques p2) 0)

        (disponible p20)
        (= (habilitat p20) 3)
        (= (calitat p20) 2)
        (= (nTasques p20) 0)

        (disponible p21)
        (= (habilitat p21) 1)
        (= (calitat p21) 2)
        (= (nTasques p21) 0)

        (disponible p22)
        (= (habilitat p22) 3)
        (= (calitat p22) 1)
        (= (nTasques p22) 0)

        (disponible p23)
        (= (habilitat p23) 2)
        (= (calitat p23) 1)
        (= (nTasques p23) 0)

        (disponible p24)
        (= (habilitat p24) 2)
        (= (calitat p24) 1)
        (= (nTasques p24) 0)

        (disponible p25)
        (= (habilitat p25) 2)
        (= (calitat p25) 1)
        (= (nTasques p25) 0)

        (disponible p26)
        (= (habilitat p26) 1)
        (= (calitat p26) 2)
        (= (nTasques p26) 0)

        (disponible p27)
        (= (habilitat p27) 2)
        (= (calitat p27) 2)
        (= (nTasques p27) 0)

        (disponible p28)
        (= (habilitat p28) 2)
        (= (calitat p28) 1)
        (= (nTasques p28) 0)

        (disponible p29)
        (= (habilitat p29) 2)
        (= (calitat p29) 2)
        (= (nTasques p29) 0)

        (disponible p3)
        (= (habilitat p3) 1)
        (= (calitat p3) 1)
        (= (nTasques p3) 0)

        (disponible p30)
        (= (habilitat p30) 2)
        (= (calitat p30) 1)
        (= (nTasques p30) 0)

        (disponible p31)
        (= (habilitat p31) 3)
        (= (calitat p31) 2)
        (= (nTasques p31) 0)

        (disponible p32)
        (= (habilitat p32) 3)
        (= (calitat p32) 1)
        (= (nTasques p32) 0)

        (disponible p33)
        (= (habilitat p33) 3)
        (= (calitat p33) 2)
        (= (nTasques p33) 0)

        (disponible p34)
        (= (habilitat p34) 2)
        (= (calitat p34) 1)
        (= (nTasques p34) 0)

        (disponible p35)
        (= (habilitat p35) 2)
        (= (calitat p35) 1)
        (= (nTasques p35) 0)

        (disponible p36)
        (= (habilitat p36) 2)
        (= (calitat p36) 2)
        (= (nTasques p36) 0)

        (disponible p37)
        (= (habilitat p37) 1)
        (= (calitat p37) 2)
        (= (nTasques p37) 0)

        (disponible p38)
        (= (habilitat p38) 2)
        (= (calitat p38) 1)
        (= (nTasques p38) 0)

        (disponible p39)
        (= (habilitat p39) 2)
        (= (calitat p39) 1)
        (= (nTasques p39) 0)

        (disponible p4)
        (= (habilitat p4) 2)
        (= (calitat p4) 2)
        (= (nTasques p4) 0)

        (disponible p40)
        (= (habilitat p40) 2)
        (= (calitat p40) 2)
        (= (nTasques p40) 0)

        (disponible p5)
        (= (habilitat p5) 3)
        (= (calitat p5) 1)
        (= (nTasques p5) 0)

        (disponible p6)
        (= (habilitat p6) 1)
        (= (calitat p6) 1)
        (= (nTasques p6) 0)

        (disponible p7)
        (= (habilitat p7) 1)
        (= (calitat p7) 2)
        (= (nTasques p7) 0)

        (disponible p8)
        (= (habilitat p8) 1)
        (= (calitat p8) 2)
        (= (nTasques p8) 0)

        (disponible p9)
        (= (habilitat p9) 3)
        (= (calitat p9) 2)
        (= (nTasques p9) 0)

        (not (asignada t1))
        (not (revisada t1))
        (= (dificultat t1) 3)
        (= (temps t1) 5)

        (not (asignada t10))
        (not (revisada t10))
        (= (dificultat t10) 2)
        (= (temps t10) 1)

        (not (asignada t11))
        (not (revisada t11))
        (= (dificultat t11) 3)
        (= (temps t11) 4)

        (not (asignada t12))
        (not (revisada t12))
        (= (dificultat t12) 3)
        (= (temps t12) 5)

        (not (asignada t13))
        (not (revisada t13))
        (= (dificultat t13) 3)
        (= (temps t13) 2)

        (not (asignada t14))
        (not (revisada t14))
        (= (dificultat t14) 1)
        (= (temps t14) 1)

        (not (asignada t15))
        (not (revisada t15))
        (= (dificultat t15) 1)
        (= (temps t15) 1)

        (not (asignada t16))
        (not (revisada t16))
        (= (dificultat t16) 3)
        (= (temps t16) 4)

        (not (asignada t17))
        (not (revisada t17))
        (= (dificultat t17) 1)
        (= (temps t17) 4)

        (not (asignada t18))
        (not (revisada t18))
        (= (dificultat t18) 3)
        (= (temps t18) 3)

        (not (asignada t19))
        (not (revisada t19))
        (= (dificultat t19) 2)
        (= (temps t19) 5)

        (not (asignada t2))
        (not (revisada t2))
        (= (dificultat t2) 3)
        (= (temps t2) 4)

        (not (asignada t20))
        (not (revisada t20))
        (= (dificultat t20) 1)
        (= (temps t20) 3)

        (not (asignada t21))
        (not (revisada t21))
        (= (dificultat t21) 2)
        (= (temps t21) 4)

        (not (asignada t22))
        (not (revisada t22))
        (= (dificultat t22) 2)
        (= (temps t22) 1)

        (not (asignada t23))
        (not (revisada t23))
        (= (dificultat t23) 1)
        (= (temps t23) 2)

        (not (asignada t24))
        (not (revisada t24))
        (= (dificultat t24) 2)
        (= (temps t24) 3)

        (not (asignada t25))
        (not (revisada t25))
        (= (dificultat t25) 1)
        (= (temps t25) 4)

        (not (asignada t26))
        (not (revisada t26))
        (= (dificultat t26) 2)
        (= (temps t26) 2)

        (not (asignada t27))
        (not (revisada t27))
        (= (dificultat t27) 1)
        (= (temps t27) 4)

        (not (asignada t28))
        (not (revisada t28))
        (= (dificultat t28) 1)
        (= (temps t28) 1)

        (not (asignada t29))
        (not (revisada t29))
        (= (dificultat t29) 1)
        (= (temps t29) 2)

        (not (asignada t3))
        (not (revisada t3))
        (= (dificultat t3) 1)
        (= (temps t3) 4)

        (not (asignada t30))
        (not (revisada t30))
        (= (dificultat t30) 1)
        (= (temps t30) 2)

        (not (asignada t31))
        (not (revisada t31))
        (= (dificultat t31) 1)
        (= (temps t31) 1)

        (not (asignada t32))
        (not (revisada t32))
        (= (dificultat t32) 3)
        (= (temps t32) 4)

        (not (asignada t33))
        (not (revisada t33))
        (= (dificultat t33) 2)
        (= (temps t33) 5)

        (not (asignada t34))
        (not (revisada t34))
        (= (dificultat t34) 2)
        (= (temps t34) 5)

        (not (asignada t35))
        (not (revisada t35))
        (= (dificultat t35) 2)
        (= (temps t35) 5)

        (not (asignada t36))
        (not (revisada t36))
        (= (dificultat t36) 1)
        (= (temps t36) 4)

        (not (asignada t37))
        (not (revisada t37))
        (= (dificultat t37) 2)
        (= (temps t37) 1)

        (not (asignada t38))
        (not (revisada t38))
        (= (dificultat t38) 3)
        (= (temps t38) 1)

        (not (asignada t39))
        (not (revisada t39))
        (= (dificultat t39) 3)
        (= (temps t39) 2)

        (not (asignada t4))
        (not (revisada t4))
        (= (dificultat t4) 3)
        (= (temps t4) 3)

        (not (asignada t40))
        (not (revisada t40))
        (= (dificultat t40) 1)
        (= (temps t40) 1)

        (not (asignada t41))
        (not (revisada t41))
        (= (dificultat t41) 1)
        (= (temps t41) 4)

        (not (asignada t42))
        (not (revisada t42))
        (= (dificultat t42) 3)
        (= (temps t42) 2)

        (not (asignada t43))
        (not (revisada t43))
        (= (dificultat t43) 3)
        (= (temps t43) 1)

        (not (asignada t44))
        (not (revisada t44))
        (= (dificultat t44) 2)
        (= (temps t44) 5)

        (not (asignada t45))
        (not (revisada t45))
        (= (dificultat t45) 1)
        (= (temps t45) 3)

        (not (asignada t46))
        (not (revisada t46))
        (= (dificultat t46) 1)
        (= (temps t46) 4)

        (not (asignada t47))
        (not (revisada t47))
        (= (dificultat t47) 2)
        (= (temps t47) 4)

        (not (asignada t48))
        (not (revisada t48))
        (= (dificultat t48) 2)
        (= (temps t48) 1)

        (not (asignada t49))
        (not (revisada t49))
        (= (dificultat t49) 2)
        (= (temps t49) 1)

        (not (asignada t5))
        (not (revisada t5))
        (= (dificultat t5) 2)
        (= (temps t5) 2)

        (not (asignada t50))
        (not (revisada t50))
        (= (dificultat t50) 3)
        (= (temps t50) 5)

        (not (asignada t51))
        (not (revisada t51))
        (= (dificultat t51) 1)
        (= (temps t51) 3)

        (not (asignada t52))
        (not (revisada t52))
        (= (dificultat t52) 2)
        (= (temps t52) 2)

        (not (asignada t53))
        (not (revisada t53))
        (= (dificultat t53) 2)
        (= (temps t53) 4)

        (not (asignada t54))
        (not (revisada t54))
        (= (dificultat t54) 1)
        (= (temps t54) 1)

        (not (asignada t55))
        (not (revisada t55))
        (= (dificultat t55) 3)
        (= (temps t55) 1)

        (not (asignada t56))
        (not (revisada t56))
        (= (dificultat t56) 3)
        (= (temps t56) 1)

        (not (asignada t57))
        (not (revisada t57))
        (= (dificultat t57) 3)
        (= (temps t57) 4)

        (not (asignada t58))
        (not (revisada t58))
        (= (dificultat t58) 1)
        (= (temps t58) 1)

        (not (asignada t59))
        (not (revisada t59))
        (= (dificultat t59) 2)
        (= (temps t59) 1)

        (not (asignada t6))
        (not (revisada t6))
        (= (dificultat t6) 2)
        (= (temps t6) 5)

        (not (asignada t60))
        (not (revisada t60))
        (= (dificultat t60) 3)
        (= (temps t60) 5)

        (not (asignada t61))
        (not (revisada t61))
        (= (dificultat t61) 3)
        (= (temps t61) 2)

        (not (asignada t62))
        (not (revisada t62))
        (= (dificultat t62) 3)
        (= (temps t62) 3)

        (not (asignada t63))
        (not (revisada t63))
        (= (dificultat t63) 2)
        (= (temps t63) 3)

        (not (asignada t64))
        (not (revisada t64))
        (= (dificultat t64) 1)
        (= (temps t64) 3)

        (not (asignada t65))
        (not (revisada t65))
        (= (dificultat t65) 1)
        (= (temps t65) 2)

        (not (asignada t66))
        (not (revisada t66))
        (= (dificultat t66) 1)
        (= (temps t66) 1)

        (not (asignada t67))
        (not (revisada t67))
        (= (dificultat t67) 2)
        (= (temps t67) 4)

        (not (asignada t68))
        (not (revisada t68))
        (= (dificultat t68) 1)
        (= (temps t68) 5)

        (not (asignada t69))
        (not (revisada t69))
        (= (dificultat t69) 1)
        (= (temps t69) 2)

        (not (asignada t7))
        (not (revisada t7))
        (= (dificultat t7) 2)
        (= (temps t7) 2)

        (not (asignada t70))
        (not (revisada t70))
        (= (dificultat t70) 2)
        (= (temps t70) 1)

        (not (asignada t71))
        (not (revisada t71))
        (= (dificultat t71) 1)
        (= (temps t71) 3)

        (not (asignada t72))
        (not (revisada t72))
        (= (dificultat t72) 2)
        (= (temps t72) 2)

        (not (asignada t73))
        (not (revisada t73))
        (= (dificultat t73) 1)
        (= (temps t73) 1)

        (not (asignada t74))
        (not (revisada t74))
        (= (dificultat t74) 3)
        (= (temps t74) 4)

        (not (asignada t75))
        (not (revisada t75))
        (= (dificultat t75) 1)
        (= (temps t75) 1)

        (not (asignada t76))
        (not (revisada t76))
        (= (dificultat t76) 2)
        (= (temps t76) 4)

        (not (asignada t77))
        (not (revisada t77))
        (= (dificultat t77) 1)
        (= (temps t77) 5)

        (not (asignada t78))
        (not (revisada t78))
        (= (dificultat t78) 2)
        (= (temps t78) 2)

        (not (asignada t79))
        (not (revisada t79))
        (= (dificultat t79) 3)
        (= (temps t79) 3)

        (not (asignada t8))
        (not (revisada t8))
        (= (dificultat t8) 2)
        (= (temps t8) 1)

        (not (asignada t80))
        (not (revisada t80))
        (= (dificultat t80) 2)
        (= (temps t80) 3)

        (not (asignada t81))
        (not (revisada t81))
        (= (dificultat t81) 2)
        (= (temps t81) 3)

        (not (asignada t82))
        (not (revisada t82))
        (= (dificultat t82) 3)
        (= (temps t82) 3)

        (not (asignada t83))
        (not (revisada t83))
        (= (dificultat t83) 2)
        (= (temps t83) 3)

        (not (asignada t84))
        (not (revisada t84))
        (= (dificultat t84) 2)
        (= (temps t84) 2)

        (not (asignada t85))
        (not (revisada t85))
        (= (dificultat t85) 3)
        (= (temps t85) 3)

        (not (asignada t86))
        (not (revisada t86))
        (= (dificultat t86) 2)
        (= (temps t86) 1)

        (not (asignada t87))
        (not (revisada t87))
        (= (dificultat t87) 2)
        (= (temps t87) 2)

        (not (asignada t88))
        (not (revisada t88))
        (= (dificultat t88) 2)
        (= (temps t88) 2)

        (not (asignada t89))
        (not (revisada t89))
        (= (dificultat t89) 1)
        (= (temps t89) 4)

        (not (asignada t9))
        (not (revisada t9))
        (= (dificultat t9) 1)
        (= (temps t9) 2)

        (not (asignada t90))
        (not (revisada t90))
        (= (dificultat t90) 3)
        (= (temps t90) 3)

        (not (asignada t91))
        (not (revisada t91))
        (= (dificultat t91) 2)
        (= (temps t91) 5)

        (not (asignada t92))
        (not (revisada t92))
        (= (dificultat t92) 3)
        (= (temps t92) 2)

        (not (asignada t93))
        (not (revisada t93))
        (= (dificultat t93) 2)
        (= (temps t93) 4)


        (= (tempsTotal) 0)

    )

    (:goal
          (forall(?t - tasca) (revisada ?t))
    )

    (:metric minimize(+(*0.1 (tempsTotal)) (*0.9 (progEnUs))))

)
