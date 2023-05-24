;;; ---------------------------------------------------------
;;; SimpleOntology1.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology SimpleOntology1.owl
;;; :Date 09/05/2023 21:13:20

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

;(defclass Persona
;    (is-a USER)
;    (role concrete)
;    (pattern-match reactive)
;    (multislot Edad
;        (type INTEGER)
;        (create-accessor read-write))
;    (multislot Nivell_activitat
;        (type STRING)
;        (create-accessor read-write))
;    (multislot Nom
;        (type STRING)
;        (create-accessor read-write))
;    (multislot Sexe
;        (type STRING)
;        (create-accessor read-write))
;)

;# MAIN

(deftemplate MAIN::persona
    (slot nom (type STRING))
    (slot edat (type INTEGER))
    (slot sexe (type SYMBOL))
    (slot nivellActivitat (type SYMBOL))
)

(defmodule MAIN (export ?ALL))

(defmodule RECOGER_DATOS_PERSONA
    (import MAIN ?ALL)
    (export ?ALL)
)

;# RULES

(defrule RECOGER_DATOS_PERSONA
    (asked-nom)
    (asked-edat)
    (asked-sexe)
    (asked-nivellActivitat)
    =>
    (printout t crlf "Creant menu.." crlf)
    (focus inference_of_data)
)

(defrule RECOGER_DATOS_PERSONA::recollir-nom
    (not (asked-nom))
    ?user <- (user)
    =>
    (bind ?nom (ask-nom "Quin nom tens?"))
    (modify ?user (nom ?nom))
    (assert (asked-nom))
)

(defrule RECOGER_DATOS_PERSONA::recollir-edat
    (not (asked-edat))
    ?user <- (user)
    =>
    (bind ?num (ask-edat "Quina edat tens?" 65 115))
    (modify ?user (edat ?num))
    (assert (asked-edat))
)

(defrule RECOGER_DATOS_PERSONA::recollir-nivellActivitat
    (not (asked-nivellActivitat))
    ?user <- (user)
    =>
    (bind ?niv (ask-nivellActivitat "Quin nivell d'activitat tens?" (create$ Sedentari Actiu Molt-Actiu)))
    (modify ?user (nivellActivitat ?niv))
    (assert (asked-nivellActivitat))
)

(defrule RECOGER_DATOS_PERSONA::recollir-sexe
    (not (asked-sexe))
    ?user <- (user)
    =>
    (bind ?sex (ask-sexe "Quin es el teu gènere?" (create$ Home Dona)))
    (modify ?user (sexe ?sex))
    (assert (asked-sexe))
)



(defrule questions::ask-all
   (declare (salience 10))
   (nom ?n)
   (sexe ?s)
   (edat ?e)
   (nvactivitat ?na)
   =>
   (println crlf "All asked" crlf)
   (bind ?total-cal (calcul-caloric ?s ?e ?na))
   (println crlf ?total-cal crlf)
   (bind ?esmorzars-disponibles (find-all-instances ((?c Plat)) 
                                    (member$ esmorzar ?c:tipusApat))
   )
   (bind ?dinars-disponibles (find-all-instances ((?c Plat)) 
                                    (member$ dinar ?c:tipusApat))
   )
   (bind ?sopars-disponibles (find-all-instances ((?c Plat)) 
                                    (member$ sopar ?c:tipusApat))
   )
   (println crlf ?esmorzars-disponibles crlf)
   (println crlf ?dinars-disponibles crlf)
   (println crlf ?sopars-disponibles crlf)
   (focus logicas)
)

;(defrule logicas::llistar-plats
;   (declare (salience 10))
;   (not (esmorzars-disponibles ?))
;   =>
;   (assert (esmorzars-disponibles (find-all-instances ((?c Plat)) (member$ esmorzar ?c:tipusApat))))
;   (bind ?dinars-disponibles (find-all-instances ((?c Plat))))
;   (bind ?sopars-disponibles (find-all-instances ((?c Plat))))
;   (assert (plats-llistats))
;)

(defrule logicas::llistar-plats
   (declare (salience 10))
   (not (esmorzars-disponibles ?))
;   (not (dinars-disponibles ?))
;   (not (sopars-disponibles ?))
   =>
   (assert (esmorzars-disponibles (find-all-instances ((?c Plat)) 
                                    (member$ esmorzar ?c:tipusApat))
            )

   )
   (assert (dinars-disponibles (find-all-instances ((?c Plat)) 
                                    (member$ dinar ?c:tipusApat))
            )
   )
;   (assert (sopars-disponibles (find-all-instances ((?c Plat)) 
;                                    (member$ sopar ?c:tipusApat))
;            )
;   )
)




;;Proporción hidratos de carbono;;

1g de Hidratos de Carbono -> 4kCal
50/60% de la dieta

1g FAT -> 9kCal
30/35% de la dieta

1g Proteinas -> 4kCalorias
12/15% de la dieta

;;Tipus d'Alergens
.   Ou
.   Lactics
.   Gluten

Aliments restringibles:
.   ceba
.   pebrot
.   cacao
.   marisc
.   tomaquet
.   fregits
.   carn
.   peix

;;Tipus de dietes
.   Vegetariana
.   Vegana
.   Mediterranea(tres plats de carn maxim)


























