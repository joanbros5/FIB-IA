(definstances instances

    ([Dinar] of Apat
         (Proporcio_calories_diaries  0.5)
    )

    ([Arros] of Plat
         (Quantitat_Calories  200)
    )

    ([Pollastre_a_la_planxa] of Plat
         (Quantitat_Calories  26)
    )

    ([Poma] of Plat
         (Quantitat_Calories  65)
    )

    ([Salmo_a_la_planxa] of Plat
         (Quantitat_Calories  270)
    )

    ([Sopar] of Apat
         (Proporcio_calories_diaries  0.2)
    )
    
)

(definstances plats
    (arros of Plat (quantitatCalories 200))
    (Pollastre_a_la_planxa of Plat (quantitatCalories 26))
    (poma of Plat (quantitatCalories 65))
    (salmo_a_la_planxa of Plat (quantitatCalories 270))
)
