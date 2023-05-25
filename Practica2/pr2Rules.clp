

;;***********************
;;* DETERMINAR CALORIES *
;;***********************

(defrule questions::ask-all
   (declare (salience 10))
   (nom ?n)
   (sexe ?s)
   (edat ?e)
   (nv_act ?na)
   (temporada ?t)
   (alergies ?a)
   (alimentsEvitats ?ae)
   (dieta ?d)
   =>
   ;(println crlf crlf "Input fet..." crlf)
   (bind ?total-cal (calcul-caloric ?s ?e ?na))

   (printout t ?n crlf)
   (printout t ?s crlf)
   (printout t ?e crlf)
   (printout t ?na crlf)
   (printout t ?t crlf)
   (printout t ?a crlf)
   (printout t ?ae crlf)
   (printout t ?d crlf)

   (printout t crlf crlf "-/\--/\--/\--/\--/\--/\--/\--/\--/\--/\--/\--/\--/\--/\--/\-")
   (println crlf "Calories al dia aproximades per a " ?n ": " ?total-cal)
   (printout t "-\/--\/--\/--\/--\/--\/--\/--\/--\/--\/--\/--\/--\/--\/--\/-" crlf)

   (if (eq ?d smb)
      then
         (do-for-all-instances ((?c Plat)) (member$ traduccio-?d ?c:tipusDieta)
                           (send ?c delete)
         )
      else
         (do-for-all-instances ((?c Plat)) (not (member$ traduccio-?d ?c:tipusDieta))
                           (send ?c delete)
         )
   )

   (do-for-all-instances ((?c Plat)) 
                           (and
                              (not (member$ traduccio-?t ?c:temporada))
                              (member$ traduccio-?a ?c:ingredients)
                              (member$ traduccio-?ae ?c:ingredients)
                           )
                           (send ?c delete)
   )

   (bind ?esmorzars-disponibles (find-all-instances ((?c Plat)) 
                                    (member$ esmorzar ?c:tipusApat)
                                    )
   )
   (bind ?dinars-disponibles (find-all-instances ((?c Plat)) 
                                    (member$ dinar ?c:tipusApat)
                                    )
   )
   (bind ?sopars-disponibles (find-all-instances ((?c Plat)) 
                                    (member$ sopar ?c:tipusApat)
                                    )
   )
   (bind ?postres-disponibles (find-all-instances ((?c Plat)) 
                                    (member$ postre ?c:tipusApat)
                                    )
   )

   (printout t ?esmorzars-disponibles crlf)
   (printout t ?dinars-disponibles crlf)
   (printout t ?sopars-disponibles crlf)
   (printout t ?postres-disponibles crlf)

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
      
      (bind ?dades-menu-escollit (count-items ?menu-escollit))

      (printout t crlf "  Calories totals:     " (nth$ 1 ?dades-menu-escollit) crlf)
      (printout t crlf "  Carbohidrats totals: " (nth$ 2 ?dades-menu-escollit) crlf)
      (printout t crlf "  Greix total:         " (nth$ 3 ?dades-menu-escollit) crlf)
      (printout t crlf "  Proteines totals:    " (nth$ 4 ?dades-menu-escollit) crlf)

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
   (jdp ?num-joc)
   =>
   (if (= ?num-joc 0)
      then
         (assert (nom (ask-question "Quin nom tens? ")))
      else
         (assert (nom (assig-joc-de-proves nom ?num-joc)))
   )
)

(defrule questions::ask-edat ""
   (not (edat ?))
   (jdp ?num-joc)
   =>
   (if (= ?num-joc 0)
      then
         (assert (edat (ask-allowed-nums "Quina edat tens? ")))
      else
         (assert (edat (assig-joc-de-proves edat ?num-joc)))
   )
)

(defrule questions::ask-sexe ""
   (not (sexe ?))
   (jdp ?num-joc)
   =>
   (if (= ?num-joc 0)
      then
         (assert (sexe (m-or-f-p "Quin sexe tens (home/dona)? ")))
      else
         (assert (sexe (assig-joc-de-proves sexe ?num-joc)))
   )
)

(defrule questions::ask-nvactivitat ""
   (not (nv_act ?))
   (jdp ?num-joc)
   =>
   (if (= ?num-joc 0)
      then
         (assert (nv_act (ask-allowed-values "Quin nivell d'activitat tens? (sedentari (s) / actiu (a) / molt_actiu (ma))? "
                    s a ma)))
      else
         (assert (nv_act (assig-joc-de-proves nv_act ?num-joc)))
   )
)

(defrule questions::ask-temporada ""
  (not (temporada ?))
   (jdp ?num-joc)
  =>
  (if (= ?num-joc 0)
      then
         (assert (temporada (ask-allowed-values "Quina temporada de l'any vols fer el menú? (estiu (es) / primavera (pr) / tardor (ta) / hivern (hi))? "
                   es pr ta hi)))
      else
         (assert (temporada (assig-joc-de-proves temporada ?num-joc)))
   )
)

(defrule questions::ask-alergies ""
  (not (alergies ?))
   (jdp ?num-joc)
  =>
  (if (= ?num-joc 0)
      then
         (assert (alergies (ask-allowed-values "Ets alèrgic, intolerant, o preferiries no tenir en el menu algun dels següents ingredients (cap alèrgia (n) / ou (o) / làctics (l) / gluten (g))? "
                  n o l g)))
      else
         (assert (alergies (assig-joc-de-proves alergies ?num-joc)))
   )
)

(defrule questions::ask-alimentsEvitats ""
  (not (alimentsEvitats ?))
   (jdp ?num-joc)
  =>
  (if (= ?num-joc 0)
      then
         (assert (alimentsEvitats (ask-allowed-values "D'aquests tipus d'aliments, vols evitar-ne algun? (no vull evitar-ne cap (n) / ceba (c) / pebrot (p) / cacau (ca) / marisc (m) / tomaquet (t) / fregits (f) / carn (cr) / peix (px))? "
                  n c p ca m t f cr px)))
      else
         (assert (alimentsEvitats (assig-joc-de-proves alimentsEvitats ?num-joc)))
   )
)


(defrule questions::ask-dieta ""
  (not (dieta ?))
   (jdp ?num-joc)
  =>
  (if (= ?num-joc 0)
      then
         (assert (dieta (ask-allowed-values "Estàs seguint alguna d'aquestes dietes (cap dieta (n) / vegetariana (vt) / vegana (vg) / sense-menjar-brossa (smb) / mediterranea (me))? "
                  n vt vg smb me)))
      else
         (assert (dieta (assig-joc-de-proves dieta ?num-joc)))
   )
)

(defrule questions::ask-joc-de-proves ""
   (not (jdp ?))
   =>
   (assert (jdp (ask-allowed-values "Si vols utilitzar un dels jocs de proves escriu un numero del 1 al 10, sino escriu zero ? " 0 1 2 3 4 5 6 7 8 9 10)))
   (println crlf crlf "En cas que hagis escrit un numero diferent de 0," crlf)
   (println crlf crlf "has d'introduïr 8 cops (run 1)" crlf)
)

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
