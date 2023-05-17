

## INIT RULES

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
   (not (nvacticitat ?))
   =>
   (assert (nvactivitat
   (ask-allowed-values "Quin nivell d'activitat tens? (sedentari/actiu/molt_actiu)? "
                    s a ma))))

## DETERMINAR CALORIES

# 1000 1200 1400 1600 1800 2000 2200 2400 2600 2800 3000 3200

(defrule determine-cal ""
   (edat < 6)
   (nvactivitat s)
   =>
   (assert (cal 1000))
   )

## TEST RULES

(defrule system-banner ""
  (declare (salience 10))
  =>
  (println crlf "The Engine Diagnosis Expert System" crlf))

(defrule print ""
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