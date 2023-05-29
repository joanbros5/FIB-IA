
(defclass MenuSetmana
    (is-a USER)
    (role concrete)
    (multislot Alhora_de
        (type INSTANCE)
        (cardinality 7 7)
        (create-accessor read-write))
)

(deftemplate MAIN::MenuDiari
    (slot Esmorzar
        (type INSTANCE))
    (slot DinarPrimerPlat
        (type INSTANCE)
        (create-accessor read-write))
    (slot DinarSegonPlat
        (type INSTANCE)
        (create-accessor read-write))
    (slot DinarPostre
        (type INSTANCE)
        (create-accessor read-write))
    (slot SoparPrimerPlat
        (type INSTANCE))
    (slot SoparPostre
        (type INSTANCE))
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
    (multislot ingredients
        (type INSTANCE)
        (create-accessor read-write)
        )
    (multislot temporada
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
    (slot nivell_activitat
        (type STRING)
        (create-accessor read-write))
    (slot temporada
        (type STRING)
        (create-accessor read-write)
        )
    (slot alergies
        (type STRING)
        (create-accessor read-write)
        )
    (slot aliments-evitar
        (type STRING)
        (create-accessor read-write)
        )
    (slot tipusDieta
        (type STRING)
        (create-accessor read-write)
        )
)