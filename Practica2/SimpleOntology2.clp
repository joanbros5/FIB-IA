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
