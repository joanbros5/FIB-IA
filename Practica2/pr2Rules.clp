

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
   (assert (sexe (m-or-f-p "Quin sexe tens (m/f)? "))))

(defrule questions::ask-nvactivitat ""
   (not (nvactivitat ?))
   =>
   (assert (nvactivitat
   (ask-allowed-values "Quin nivell d'activitat tens? (sedentari/actiu/molt_actiu)? "
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
  (println crlf "The Engine Diagnosis Expert System" crlf)
  (focus questions)
  )

(defrule MAIN::set-focus-questions ""
  (not (focus questions))
  =>
  (focus questions)
)

(defrule MAIN::set-focus-logicas ""
  (not (focus logicas))
  =>
  (focus logicas)
)