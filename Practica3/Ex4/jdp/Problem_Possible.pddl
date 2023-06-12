(define (problem planificator)
    (:domain planificator3000)

    (:objects
        p1 p2 p3 p4 p5 - programador
        t1 t2 t3 t4 - tasca
    )

    (:init

        (disponible p1)
        (= (habilitat p1) 2)
        (= (calitat p1) 1)
        (= (nTasques p1) 0) 

        (disponible p2)
        (= (habilitat p2) 2)
        (= (calitat p2) 1)
        (= (nTasques p2) 0)

        (disponible p3)
        (= (habilitat p3) 1)
        (= (calitat p3) 1)
        (= (nTasques p3) 0)

        (disponible p4)
        (= (habilitat p4) 2)
        (= (calitat p4) 1)
        (= (nTasques p4) 0)

        (disponible p5)
        (= (habilitat p5) 1)
        (= (calitat p5) 1)
        (= (nTasques p5) 0)

        (not (asignada t1))
        (not (revisada t1))
        (= (dificultat t1) 1)
        (= (temps t1) 1)

        (not (asignada t2))
        (not (revisada t2))
        (= (dificultat t2) 1)
        (= (temps t2) 3)

        (not (asignada t3))
        (not (revisada t3))
        (= (dificultat t3) 1)
        (= (temps t3) 2)

        (not (asignada t4))
        (not (revisada t4))
        (= (dificultat t4) 2)
        (= (temps t4) 4)


        (= (progEnUs)   0)
        (= (tempsTotal) 0)

    )

    (:goal (and
           (forall(?t - tasca) (revisada ?t))
           (forall (?p - programador) (<= (nTasques ?p) 2))
           )
    )

    (:metric minimize (+ (* 0.1 (tempsTotal)) (* 0.9 (progEnUs))))

)
