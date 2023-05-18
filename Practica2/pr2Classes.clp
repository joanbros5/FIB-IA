
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
        (create-accessor read-write))
)




(defrule determine-cal ""
   (not (cal ?))
   (sexe f)
   (nvactivitat s)
   =>
   (assert (bind cal? 1600))
   )

(defrule determine-cal ""
   (not (cal ?))
   (sexe f)
   (nvactivitat a)
   =>
   (assert (bind cal? 1800))
   )

(defrule determine-cal ""
   (not (cal ?))
   (or (and (sexe f)
            (nvactivitat ma))
       (and (sexe m)
            (nvactivitat s))
            )
   =>
   (assert (bind cal? 2000))
   )

(defrule determine-cal ""
   (not (cal ?))
   (sexe m)
   (nvactivitat a)
   =>
   (assert (bind cal? 2200))
   )

(defrule determine-cal ""
   (not(cal ?))
   (sexe f)
   (nvactivitat ma)
   =>
   (assert (bind cal? 2400))
   )
