

;;***********************
;;* DETERMINAR CALORIES *
;;***********************


;;**************
;;* INIT RULES *
;;**************

(defrule ask-nom ""
   (not (nom ?))
   =>
   (assert (nom (ask-question "Quin nom tens? "))))

(defrule ask-edat ""
   (not (edat ?))
   =>
   (assert (edat (ask-question "Quina edat tens? "))))

(defrule ask-sexe ""
   (not (sexe ?))
   =>
   (assert (sexe (m-or-f-p "Quin sexe tens (m/f)? "))))

(defrule ask-nvactivitat ""
   (not (nvactivitat ?))
   =>
   (assert (nvactivitat
   (ask-allowed-values "Quin nivell d'activitat tens? (sedentari/actiu/molt_actiu)? "
                    s a ma))))

(defrule ask-cal ""
   (not (cal ?))
   (sexe ?s)
   (edad ?e)
   (nvactivitat ?na)
   =>
   (assert (cal (det-cal ?s ?e ?na))))

;;**************
;;* TEST RULES *
;;**************

(defrule system-banner ""
  (declare (salience 10))
  =>
  (println crlf "The Engine Diagnosis Expert System" crlf))

(defrule print ""
  (declare (salience -10))
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