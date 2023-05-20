

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
   ;(println crlf crlf "Input fet..." crlf)
   (bind ?total-cal (calcul-caloric ?s ?e ?na))

   (printout t crlf crlf "-/\--/\--/\--/\--/\--/\--/\--/\--/\--/\--/\--/\--/\--/\--/\-")
   (println crlf "Calories al dia aproximades per a " ?n ": " ?total-cal)
   (printout t "-\/--\/--\/--\/--\/--\/--\/--\/--\/--\/--\/--\/--\/--\/--\/-" crlf)

   (bind ?esmorzars-disponibles (find-all-instances ((?c Plat)) 
                                    (member$ esmorzar ?c:tipusApat))
   )
   (bind ?dinars-disponibles (find-all-instances ((?c Plat)) 
                                    (member$ dinar ?c:tipusApat))
   )
   (bind ?sopars-disponibles (find-all-instances ((?c Plat)) 
                                    (member$ sopar ?c:tipusApat))
   )
   (bind ?postres-disponibles (find-all-instances ((?c Plat)) 
                                    (member$ postre ?c:tipusApat))
   )

   (bind ?index 1)
   (while (<= ?index 7) do

      (bind ?menu-escollit (genera-convinacions ?esmorzars-disponibles ?dinars-disponibles ?sopars-disponibles ?postres-disponibles ?total-cal))

      (if (> ?index 1)
            then 
               (while (not(no-repeticions-dies-consecutius ?menu-escollit ?menu-dia-anterior)) do
                  (bind ?menu-escollit (genera-convinacions ?esmorzars-disponibles ?dinars-disponibles ?sopars-disponibles ?postres-disponibles ?total-cal))
                  )
      )

      (printout t crlf "--------------------------------")
      (printout t crlf "-----------MENU DIA " ?index "-----------" crlf)


      (printout t crlf "  Esmorzar:          " (nth$ 1 ?menu-escollit) crlf)
      
      (printout t crlf "  Dinar Primer Plat: " (nth$ 2 ?menu-escollit))
      (printout t crlf "  Dinar Segon Plat:  " (nth$ 3 ?menu-escollit))
      (printout t crlf "  Dinar Postre:      " (nth$ 4 ?menu-escollit) crlf)
      
      (printout t crlf "  Sopar Plat unic:   " (nth$ 5 ?menu-escollit))
      (printout t crlf "  Sopar Postre:      " (nth$ 6 ?menu-escollit) crlf)
      
      (printout t crlf "  Calories totals: " (count_calories ?menu-escollit) crlf)

      ;(printout t crlf "--------------------------------" crlf)

      (bind ?menu-dia-anterior ?menu-escollit)

      (bind ?index (+ ?index 1))

   )
   (printout t crlf "--------------DONE--------------" crlf)
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