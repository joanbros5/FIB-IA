
(defclass MenuSetmana
    (is-a USER)
    (role concrete)
    (multislot Alhora_de
        (type INSTANCE)
        (cardinality 7 7)
        (create-accessor read-write))
)

(defclass MenuDiari
    (is-a USER)
    (role concrete)
    (slot Esmorzar
        (type INSTANCE)
        (create-accessor read-write))
    (slot Dinar
        (type INSTANCE)
        (create-accessor read-write))
    (slot Sopar
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Apat
    (is-a USER)
    (role concrete)
)

(defclass Dinar
    (is-a Apat)
    (role concrete)
    (slot primerPlat
        (type INSTANCE)
        (create-accessor read-write))
    (slot segonPlat
        (type INSTANCE)
        (create-accessor read-write))
    (slot postre
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Sopar
    (is-a Apat)
    (role concrete)
    (slot primerPlat
        (type INSTANCE)
        (create-accessor read-write))
    (slot segonPlat
        (type INSTANCE)
        (create-accessor read-write))
    (slot postre
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Esmorzar
    (is-a Apat)
    (role concrete)
    (slot platEsmorzar
        (type INSTANCE)
        (create-accessor read-write))
)

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
    (multislot tipusRestringibles
        (type INSTANCE)
        (create-accessor read-write)
        )
)

(defclass Persona
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot nom
        (type STRING)
        (create-accessor read-write))
    (slot sexe
        (type STRING)
        (create-accessor read-write))
    (slot edat
        (type INTEGER)
        (create-accessor read-write))
    (slot nv_act
        (type STRING)
        (create-accessor read-write))
)