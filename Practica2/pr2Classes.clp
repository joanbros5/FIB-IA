 

(defclass Plat
    (is-a USER)
    (role concrete)
    (slot quantitatCalories
        (type INSTANCE)
        (create-accessor read-write)
        )
    (slot quantitatCarbohidrats
        (type INSTANCE)
        (create-accessor read-write)
        )
    (slot quantitatGreix
        (type INSTANCE)
        (create-accessor read-write)
        )
    (slot quantitatProteines
        (type INSTANCE)
        (create-accessor read-write)
        )
    (multislot tipusApat
        (type INSTANCE)
        (create-accessor read-write)
        )
    (multislot tipusDieta
        (type INSTANCE)
        (create-accessor read-write)
        )
    (multislot ingredients
        (type INSTANCE)
        (create-accessor read-write)
        )
    (multislot temporada
        (type INSTANCE)
        (create-accessor read-write)
        )
)
