

;;***********************
;;* DETERMINAR CALORIES *
;;***********************


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

   (focus logicas)
)

(defrule logicas::preparar-menus
   (declare (salience 20))
   (esmorzars-disponibles ?ed)
   (dinars-disponibles ?dd)
   (sopars-disponibles ?sd)
   (postres-disponibles ?pd)
   =>
   (println crlf ?ed crlf)
   (println crlf ?dd crlf)
   (println crlf ?sd crlf)
   (println crlf ?pd crlf)
)

(defrule logicas::llistar-esmorzar
   (not (esmorzars-disponibles ?))
   =>
   (assert (esmorzars-disponibles (find-all-instances ((?c Plat)) 
                                    (member$ esmorzar ?c:tipusApat))
            )
   )
   (println crlf "esmorzars llistats" crlf)
)

(defrule logicas::llistar-dinar
   (not (dinars-disponibles ?))
   =>
   (assert (dinars-disponibles (find-all-instances ((?c Plat)) 
                                    (member$ dinar ?c:tipusApat))
            )
   )
   (println crlf "dinars llistats" crlf)
)

(defrule logicas::llistar-sopar
   (not (sopars-disponibles ?))
   =>
   (assert (sopars-disponibles (find-all-instances ((?c Plat)) 
                                    (member$ sopar ?c:tipusApat))
            )
   )
   (println crlf "sopars llistats" crlf)
)

(defrule logicas::llistar-postre
   (not (postres-disponibles ?))
   =>
   (assert (postres-disponibles (find-all-instances ((?c Plat)) 
                                    (member$ postre ?c:tipusApat))
            )
   )
   (println crlf "postres llistats" crlf)
)



;;*******************
;;* QUESTIONS RULES *
;;*******************

(defrule questions::ask-nom ""
   (not (nom ?))
   =>
   (assert (nom (ask-question "Quin nom tens? "))))

(defrule questions::ask-edat ""
   (not (edat ?))
   =>
   (assert (edat (ask-allowed-nums "Quina edat tens? "))))

(defrule questions::ask-sexe ""
   (not (sexe ?))
   =>
   (assert (sexe (m-or-f-p "Quin sexe tens (h/d)? "))))

(defrule questions::ask-nvactivitat ""
   (not (nvactivitat ?))
   =>
   (assert (nvactivitat
   (ask-allowed-values "Quin nivell d'activitat tens? (sedentari (s) / actiu (a) / molt_actiu (ma))? "
                    s a ma))))

;;**************
;;* TEST RULES *
;;**************

(defrule prints::print ""
  (declare (salience 10))
  (nom ?n)
  (sexe ?s)
  (edad ?e)
  (nvactivitat ?na)
  =>
  (println crlf "Nom:" ?n crlf)
  (println crlf "Sexe:" ?s crlf)
  (println crlf "Edat:" ?e crlf)
  (println crlf "Nivell d'activitat:" ?na crlf)
  )

(defrule MAIN::system-banner ""
  (declare (salience 10))
  =>
  (println crlf crlf "Benvingut al increíble creador de menús!" crlf)
  (focus questions)
  )

;(defrule MAIN::set-focus-questions ""
;  (not (focus questions))
;  =>
;  (focus questions)
;)

;(defrule MAIN::set-focus-logicas ""
;  (not (focus logicas))
;  =>
;  (focus logicas)
;)