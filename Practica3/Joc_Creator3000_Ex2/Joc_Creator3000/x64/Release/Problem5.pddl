(define (problem planificator)
    (:domain planificator3000)

    (:objects
        p1 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p2 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p3 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p4 p40 p41 p42 p43 p44 p5 p6 p7 p8 p9 - programador
        t1 t10 t100 t101 t102 t103 t104 t105 t106 t107 t108 t109 t11 t110 t111 t112 t12 t13 t14 t15 t16 t17 t18 t19 t2 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t3 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t4 t40 t41 t42 t43 t44 t45 t46 t47 t48 t49 t5 t50 t51 t52 t53 t54 t55 t56 t57 t58 t59 t6 t60 t61 t62 t63 t64 t65 t66 t67 t68 t69 t7 t70 t71 t72 t73 t74 t75 t76 t77 t78 t79 t8 t80 t81 t82 t83 t84 t85 t86 t87 t88 t89 t9 t90 t91 t92 t93 t94 t95 t96 t97 t98 t99 - tasca
    )

    (:init

        (disponible p1)
        (= (habilitat p1) 1)
        (= (calitat p1) 2)

        (disponible p10)
        (= (habilitat p10) 3)
        (= (calitat p10) 1)

        (disponible p11)
        (= (habilitat p11) 1)
        (= (calitat p11) 2)

        (disponible p12)
        (= (habilitat p12) 2)
        (= (calitat p12) 1)

        (disponible p13)
        (= (habilitat p13) 3)
        (= (calitat p13) 1)

        (disponible p14)
        (= (habilitat p14) 2)
        (= (calitat p14) 1)

        (disponible p15)
        (= (habilitat p15) 2)
        (= (calitat p15) 2)

        (disponible p16)
        (= (habilitat p16) 2)
        (= (calitat p16) 1)

        (disponible p17)
        (= (habilitat p17) 1)
        (= (calitat p17) 2)

        (disponible p18)
        (= (habilitat p18) 3)
        (= (calitat p18) 1)

        (disponible p19)
        (= (habilitat p19) 2)
        (= (calitat p19) 1)

        (disponible p2)
        (= (habilitat p2) 2)
        (= (calitat p2) 1)

        (disponible p20)
        (= (habilitat p20) 1)
        (= (calitat p20) 2)

        (disponible p21)
        (= (habilitat p21) 3)
        (= (calitat p21) 1)

        (disponible p22)
        (= (habilitat p22) 3)
        (= (calitat p22) 2)

        (disponible p23)
        (= (habilitat p23) 1)
        (= (calitat p23) 1)

        (disponible p24)
        (= (habilitat p24) 3)
        (= (calitat p24) 2)

        (disponible p25)
        (= (habilitat p25) 1)
        (= (calitat p25) 2)

        (disponible p26)
        (= (habilitat p26) 3)
        (= (calitat p26) 1)

        (disponible p27)
        (= (habilitat p27) 3)
        (= (calitat p27) 2)

        (disponible p28)
        (= (habilitat p28) 3)
        (= (calitat p28) 1)

        (disponible p29)
        (= (habilitat p29) 2)
        (= (calitat p29) 1)

        (disponible p3)
        (= (habilitat p3) 3)
        (= (calitat p3) 1)

        (disponible p30)
        (= (habilitat p30) 1)
        (= (calitat p30) 1)

        (disponible p31)
        (= (habilitat p31) 2)
        (= (calitat p31) 1)

        (disponible p32)
        (= (habilitat p32) 1)
        (= (calitat p32) 1)

        (disponible p33)
        (= (habilitat p33) 3)
        (= (calitat p33) 1)

        (disponible p34)
        (= (habilitat p34) 2)
        (= (calitat p34) 2)

        (disponible p35)
        (= (habilitat p35) 2)
        (= (calitat p35) 2)

        (disponible p36)
        (= (habilitat p36) 2)
        (= (calitat p36) 1)

        (disponible p37)
        (= (habilitat p37) 3)
        (= (calitat p37) 1)

        (disponible p38)
        (= (habilitat p38) 3)
        (= (calitat p38) 2)

        (disponible p39)
        (= (habilitat p39) 3)
        (= (calitat p39) 2)

        (disponible p4)
        (= (habilitat p4) 2)
        (= (calitat p4) 2)

        (disponible p40)
        (= (habilitat p40) 2)
        (= (calitat p40) 1)

        (disponible p41)
        (= (habilitat p41) 3)
        (= (calitat p41) 2)

        (disponible p42)
        (= (habilitat p42) 2)
        (= (calitat p42) 1)

        (disponible p43)
        (= (habilitat p43) 2)
        (= (calitat p43) 1)

        (disponible p44)
        (= (habilitat p44) 3)
        (= (calitat p44) 2)

        (disponible p5)
        (= (habilitat p5) 2)
        (= (calitat p5) 1)

        (disponible p6)
        (= (habilitat p6) 3)
        (= (calitat p6) 2)

        (disponible p7)
        (= (habilitat p7) 1)
        (= (calitat p7) 2)

        (disponible p8)
        (= (habilitat p8) 2)
        (= (calitat p8) 1)

        (disponible p9)
        (= (habilitat p9) 1)
        (= (calitat p9) 2)

        (not (asignada t1))
        (not (revisada t1))
        (= (dificultat t1) 2)
        (= (temps t1) 1)

        (not (asignada t10))
        (not (revisada t10))
        (= (dificultat t10) 1)
        (= (temps t10) 1)

        (not (asignada t100))
        (not (revisada t100))
        (= (dificultat t100) 2)
        (= (temps t100) 5)

        (not (asignada t101))
        (not (revisada t101))
        (= (dificultat t101) 3)
        (= (temps t101) 5)

        (not (asignada t102))
        (not (revisada t102))
        (= (dificultat t102) 2)
        (= (temps t102) 4)

        (not (asignada t103))
        (not (revisada t103))
        (= (dificultat t103) 3)
        (= (temps t103) 5)

        (not (asignada t104))
        (not (revisada t104))
        (= (dificultat t104) 2)
        (= (temps t104) 2)

        (not (asignada t105))
        (not (revisada t105))
        (= (dificultat t105) 1)
        (= (temps t105) 5)

        (not (asignada t106))
        (not (revisada t106))
        (= (dificultat t106) 1)
        (= (temps t106) 2)

        (not (asignada t107))
        (not (revisada t107))
        (= (dificultat t107) 2)
        (= (temps t107) 3)

        (not (asignada t108))
        (not (revisada t108))
        (= (dificultat t108) 3)
        (= (temps t108) 1)

        (not (asignada t109))
        (not (revisada t109))
        (= (dificultat t109) 3)
        (= (temps t109) 4)

        (not (asignada t11))
        (not (revisada t11))
        (= (dificultat t11) 1)
        (= (temps t11) 4)

        (not (asignada t110))
        (not (revisada t110))
        (= (dificultat t110) 2)
        (= (temps t110) 2)

        (not (asignada t111))
        (not (revisada t111))
        (= (dificultat t111) 2)
        (= (temps t111) 5)

        (not (asignada t112))
        (not (revisada t112))
        (= (dificultat t112) 2)
        (= (temps t112) 5)

        (not (asignada t12))
        (not (revisada t12))
        (= (dificultat t12) 1)
        (= (temps t12) 3)

        (not (asignada t13))
        (not (revisada t13))
        (= (dificultat t13) 3)
        (= (temps t13) 2)

        (not (asignada t14))
        (not (revisada t14))
        (= (dificultat t14) 2)
        (= (temps t14) 2)

        (not (asignada t15))
        (not (revisada t15))
        (= (dificultat t15) 2)
        (= (temps t15) 4)

        (not (asignada t16))
        (not (revisada t16))
        (= (dificultat t16) 2)
        (= (temps t16) 3)

        (not (asignada t17))
        (not (revisada t17))
        (= (dificultat t17) 3)
        (= (temps t17) 2)

        (not (asignada t18))
        (not (revisada t18))
        (= (dificultat t18) 2)
        (= (temps t18) 2)

        (not (asignada t19))
        (not (revisada t19))
        (= (dificultat t19) 2)
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
        (= (dificultat t21) 3)
        (= (temps t21) 2)

        (not (asignada t22))
        (not (revisada t22))
        (= (dificultat t22) 3)
        (= (temps t22) 5)

        (not (asignada t23))
        (not (revisada t23))
        (= (dificultat t23) 3)
        (= (temps t23) 5)

        (not (asignada t24))
        (not (revisada t24))
        (= (dificultat t24) 1)
        (= (temps t24) 5)

        (not (asignada t25))
        (not (revisada t25))
        (= (dificultat t25) 3)
        (= (temps t25) 2)

        (not (asignada t26))
        (not (revisada t26))
        (= (dificultat t26) 3)
        (= (temps t26) 3)

        (not (asignada t27))
        (not (revisada t27))
        (= (dificultat t27) 2)
        (= (temps t27) 5)

        (not (asignada t28))
        (not (revisada t28))
        (= (dificultat t28) 3)
        (= (temps t28) 1)

        (not (asignada t29))
        (not (revisada t29))
        (= (dificultat t29) 3)
        (= (temps t29) 1)

        (not (asignada t3))
        (not (revisada t3))
        (= (dificultat t3) 2)
        (= (temps t3) 2)

        (not (asignada t30))
        (not (revisada t30))
        (= (dificultat t30) 2)
        (= (temps t30) 3)

        (not (asignada t31))
        (not (revisada t31))
        (= (dificultat t31) 3)
        (= (temps t31) 3)

        (not (asignada t32))
        (not (revisada t32))
        (= (dificultat t32) 1)
        (= (temps t32) 4)

        (not (asignada t33))
        (not (revisada t33))
        (= (dificultat t33) 3)
        (= (temps t33) 3)

        (not (asignada t34))
        (not (revisada t34))
        (= (dificultat t34) 2)
        (= (temps t34) 5)

        (not (asignada t35))
        (not (revisada t35))
        (= (dificultat t35) 1)
        (= (temps t35) 4)

        (not (asignada t36))
        (not (revisada t36))
        (= (dificultat t36) 2)
        (= (temps t36) 1)

        (not (asignada t37))
        (not (revisada t37))
        (= (dificultat t37) 1)
        (= (temps t37) 2)

        (not (asignada t38))
        (not (revisada t38))
        (= (dificultat t38) 1)
        (= (temps t38) 2)

        (not (asignada t39))
        (not (revisada t39))
        (= (dificultat t39) 1)
        (= (temps t39) 4)

        (not (asignada t4))
        (not (revisada t4))
        (= (dificultat t4) 3)
        (= (temps t4) 1)

        (not (asignada t40))
        (not (revisada t40))
        (= (dificultat t40) 2)
        (= (temps t40) 2)

        (not (asignada t41))
        (not (revisada t41))
        (= (dificultat t41) 2)
        (= (temps t41) 3)

        (not (asignada t42))
        (not (revisada t42))
        (= (dificultat t42) 3)
        (= (temps t42) 4)

        (not (asignada t43))
        (not (revisada t43))
        (= (dificultat t43) 2)
        (= (temps t43) 4)

        (not (asignada t44))
        (not (revisada t44))
        (= (dificultat t44) 1)
        (= (temps t44) 2)

        (not (asignada t45))
        (not (revisada t45))
        (= (dificultat t45) 3)
        (= (temps t45) 5)

        (not (asignada t46))
        (not (revisada t46))
        (= (dificultat t46) 3)
        (= (temps t46) 3)

        (not (asignada t47))
        (not (revisada t47))
        (= (dificultat t47) 1)
        (= (temps t47) 2)

        (not (asignada t48))
        (not (revisada t48))
        (= (dificultat t48) 1)
        (= (temps t48) 3)

        (not (asignada t49))
        (not (revisada t49))
        (= (dificultat t49) 1)
        (= (temps t49) 1)

        (not (asignada t5))
        (not (revisada t5))
        (= (dificultat t5) 1)
        (= (temps t5) 2)

        (not (asignada t50))
        (not (revisada t50))
        (= (dificultat t50) 2)
        (= (temps t50) 4)

        (not (asignada t51))
        (not (revisada t51))
        (= (dificultat t51) 3)
        (= (temps t51) 2)

        (not (asignada t52))
        (not (revisada t52))
        (= (dificultat t52) 1)
        (= (temps t52) 3)

        (not (asignada t53))
        (not (revisada t53))
        (= (dificultat t53) 3)
        (= (temps t53) 1)

        (not (asignada t54))
        (not (revisada t54))
        (= (dificultat t54) 2)
        (= (temps t54) 5)

        (not (asignada t55))
        (not (revisada t55))
        (= (dificultat t55) 3)
        (= (temps t55) 1)

        (not (asignada t56))
        (not (revisada t56))
        (= (dificultat t56) 3)
        (= (temps t56) 2)

        (not (asignada t57))
        (not (revisada t57))
        (= (dificultat t57) 2)
        (= (temps t57) 3)

        (not (asignada t58))
        (not (revisada t58))
        (= (dificultat t58) 1)
        (= (temps t58) 4)

        (not (asignada t59))
        (not (revisada t59))
        (= (dificultat t59) 2)
        (= (temps t59) 3)

        (not (asignada t6))
        (not (revisada t6))
        (= (dificultat t6) 3)
        (= (temps t6) 5)

        (not (asignada t60))
        (not (revisada t60))
        (= (dificultat t60) 2)
        (= (temps t60) 4)

        (not (asignada t61))
        (not (revisada t61))
        (= (dificultat t61) 3)
        (= (temps t61) 2)

        (not (asignada t62))
        (not (revisada t62))
        (= (dificultat t62) 2)
        (= (temps t62) 2)

        (not (asignada t63))
        (not (revisada t63))
        (= (dificultat t63) 1)
        (= (temps t63) 3)

        (not (asignada t64))
        (not (revisada t64))
        (= (dificultat t64) 2)
        (= (temps t64) 1)

        (not (asignada t65))
        (not (revisada t65))
        (= (dificultat t65) 2)
        (= (temps t65) 4)

        (not (asignada t66))
        (not (revisada t66))
        (= (dificultat t66) 3)
        (= (temps t66) 3)

        (not (asignada t67))
        (not (revisada t67))
        (= (dificultat t67) 2)
        (= (temps t67) 4)

        (not (asignada t68))
        (not (revisada t68))
        (= (dificultat t68) 3)
        (= (temps t68) 5)

        (not (asignada t69))
        (not (revisada t69))
        (= (dificultat t69) 2)
        (= (temps t69) 3)

        (not (asignada t7))
        (not (revisada t7))
        (= (dificultat t7) 1)
        (= (temps t7) 4)

        (not (asignada t70))
        (not (revisada t70))
        (= (dificultat t70) 2)
        (= (temps t70) 5)

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
        (= (temps t73) 2)

        (not (asignada t74))
        (not (revisada t74))
        (= (dificultat t74) 1)
        (= (temps t74) 3)

        (not (asignada t75))
        (not (revisada t75))
        (= (dificultat t75) 2)
        (= (temps t75) 4)

        (not (asignada t76))
        (not (revisada t76))
        (= (dificultat t76) 3)
        (= (temps t76) 4)

        (not (asignada t77))
        (not (revisada t77))
        (= (dificultat t77) 1)
        (= (temps t77) 5)

        (not (asignada t78))
        (not (revisada t78))
        (= (dificultat t78) 2)
        (= (temps t78) 3)

        (not (asignada t79))
        (not (revisada t79))
        (= (dificultat t79) 2)
        (= (temps t79) 1)

        (not (asignada t8))
        (not (revisada t8))
        (= (dificultat t8) 3)
        (= (temps t8) 2)

        (not (asignada t80))
        (not (revisada t80))
        (= (dificultat t80) 2)
        (= (temps t80) 1)

        (not (asignada t81))
        (not (revisada t81))
        (= (dificultat t81) 1)
        (= (temps t81) 2)

        (not (asignada t82))
        (not (revisada t82))
        (= (dificultat t82) 2)
        (= (temps t82) 4)

        (not (asignada t83))
        (not (revisada t83))
        (= (dificultat t83) 1)
        (= (temps t83) 1)

        (not (asignada t84))
        (not (revisada t84))
        (= (dificultat t84) 1)
        (= (temps t84) 5)

        (not (asignada t85))
        (not (revisada t85))
        (= (dificultat t85) 2)
        (= (temps t85) 3)

        (not (asignada t86))
        (not (revisada t86))
        (= (dificultat t86) 3)
        (= (temps t86) 5)

        (not (asignada t87))
        (not (revisada t87))
        (= (dificultat t87) 2)
        (= (temps t87) 3)

        (not (asignada t88))
        (not (revisada t88))
        (= (dificultat t88) 1)
        (= (temps t88) 4)

        (not (asignada t89))
        (not (revisada t89))
        (= (dificultat t89) 3)
        (= (temps t89) 4)

        (not (asignada t9))
        (not (revisada t9))
        (= (dificultat t9) 1)
        (= (temps t9) 1)

        (not (asignada t90))
        (not (revisada t90))
        (= (dificultat t90) 2)
        (= (temps t90) 5)

        (not (asignada t91))
        (not (revisada t91))
        (= (dificultat t91) 1)
        (= (temps t91) 3)

        (not (asignada t92))
        (not (revisada t92))
        (= (dificultat t92) 3)
        (= (temps t92) 4)

        (not (asignada t93))
        (not (revisada t93))
        (= (dificultat t93) 2)
        (= (temps t93) 1)

        (not (asignada t94))
        (not (revisada t94))
        (= (dificultat t94) 2)
        (= (temps t94) 3)

        (not (asignada t95))
        (not (revisada t95))
        (= (dificultat t95) 2)
        (= (temps t95) 1)

        (not (asignada t96))
        (not (revisada t96))
        (= (dificultat t96) 2)
        (= (temps t96) 5)

        (not (asignada t97))
        (not (revisada t97))
        (= (dificultat t97) 3)
        (= (temps t97) 4)

        (not (asignada t98))
        (not (revisada t98))
        (= (dificultat t98) 1)
        (= (temps t98) 5)

        (not (asignada t99))
        (not (revisada t99))
        (= (dificultat t99) 2)
        (= (temps t99) 4)


        (= (tempsTotal) 0)

    )

    (:goal
          (forall(?t - tasca) (revisada ?t))
    )

    (:metric minimize(+(*0.1 (tempsTotal)) (*0.9 (progEnUs))))

)
