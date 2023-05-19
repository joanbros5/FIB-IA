

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
   (focus logicas)
)

(defrule logicas::assing-calories
   (not (calories ?total-cal))
   (sexe ?s)
   (edad ?e)
   (nvactivitat ?na)
   =>
   (bind ?total-cal (calcul-caloric ?s ?e ?na))
   (println crlf "Calories calculades" crlf)
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