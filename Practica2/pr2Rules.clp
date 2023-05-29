

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
   (if (neq ?a n)
      then
         (do-for-all-instances ((?c Plat)) (member$ (traduccio ?a) ?c:ingredients)
                                 (send ?c delete)
            )
      )

   (if (neq ?ae n)
      then
         (do-for-all-instances ((?c Plat)) (member$ (traduccio ?ae) ?c:ingredients)
                           (send ?c delete)
            )
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

   (bind ?esmorzars-disponibles (resvisio-temporada-dieta ?esmorzars-disponibles (traduccio ?t) (traduccio ?d)))
   (bind ?dinars-disponibles (resvisio-temporada-dieta ?dinars-disponibles (traduccio ?t) (traduccio ?d)))
   (bind ?sopars-disponibles (resvisio-temporada-dieta ?sopars-disponibles (traduccio ?t) (traduccio ?d)))
   (bind ?postres-disponibles (resvisio-temporada-dieta ?postres-disponibles (traduccio ?t) (traduccio ?d)))

   (bind ?total-cal (calcul-caloric-new ?s ?e ?na))

   (printout t crlf crlf "-/\--/\--/\--/\--/\--/\--/\--/\--/\--/\--/\--/\--/\--/\--/\-")
   (println crlf "Calories al dia aproximades per a " ?n ": " ?total-cal)
   (println crlf "En " ?n " te disponibles: ")
   (println crlf "   " (length$ ?esmorzars-disponibles) " esmorzars")
   (println crlf "   " (length$ ?dinars-disponibles) " dinars")
   (println crlf "   " (length$ ?sopars-disponibles) " sopars")
   (println crlf "   " (length$ ?postres-disponibles) " postres" crlf)
   (printout t "-\/--\/--\/--\/--\/--\/--\/--\/--\/--\/--\/--\/--\/--\/--\/-" crlf)

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
   =>
   (assert (nom (ask-question "Quin nom tens? ")))
   (print "----------" crlf)
)

(defrule questions::ask-edat ""
   (not (edat ?))
   =>
   (assert (edat (ask-allowed-nums "Quina edat tens? ")))
   (print "----------" crlf)
)

(defrule questions::ask-sexe ""
   (not (sexe ?))
   =>
   (print "Quin sexe tens (home/dona)? ")
   (assert (sexe (ask-home-dona "Quin sexe tens (home/dona)? ")))
   (print "----------" crlf)
)

(defrule questions::ask-nvactivitat ""
   (not (nv_act ?))
   =>
   (print "Quin nivell d'activitat tens?" crlf)
   (print "(sedentari (s) / actiu (a) / molt_actiu (ma):")
   (assert (nv_act (ask-allowed-values "Quin nivell d'activitat tens? (sedentari (s) / actiu (a) / molt_actiu (ma))? "
                    s a ma)))
   (print "----------" crlf)
)

(defrule questions::ask-temporada ""
  (not (temporada ?))
  =>
  (print "Quina temporada de l'any vols fer el menú?" crlf)
  (print "(estiu (es) / primavera (pr) / tardor (ta) / hivern (hi):")
  (assert (temporada (ask-allowed-values "Quina temporada de l'any vols fer el menú? (estiu (es) / primavera (pr) / tardor (ta) / hivern (hi))? "
                 es pr ta hi)))
  (print "----------" crlf)
)

(defrule questions::ask-alergies ""
  (not (alergies ?))
  =>
  (print "Ets alèrgic, intolerant, o preferiries no tenir" crlf)
  (print "en el menu algun dels següents ingredients?:" crlf)
  (print "(cap alèrgia (n) / ou (o) / làctics (l) / gluten (g):")
  (assert (alergies (ask-allowed-values "Ets alèrgic, intolerant, o preferiries no tenir en el menu algun dels següents ingredients (cap alèrgia (n) / ou (o) / làctics (l) / gluten (g))? "
                  n o l g)))
  (print "----------" crlf)
)

(defrule questions::ask-alimentsEvitats ""
  (not (alimentsEvitats ?))
  =>
  (print "D'aquests tipus d'aliments, vols evitar-ne algun?" crlf)
  (print "(cap (n) / ceba (c) / pebrot (p) / cacau (ca) / marisc (m)" crlf)
  (print "tomaquet (t) / fregit (f) / carn (cr) / peix (px):")
  (assert (alimentsEvitats (ask-allowed-values "D'aquests tipus d'aliments, vols evitar-ne algun? (cap (n) / ceba (c) / pebrot (p) / cacau (ca) / marisc (m) / tomaquet (t) / fregit (f) / carn (cr) / peix (px))"
                  n c p ca m t f cr px)))
  (print "----------" crlf)
)

(defrule questions::ask-dieta ""
  (not (dieta ?))
  =>
  (print "Estàs seguint alguna d'aquestes dietes?" crlf)
  (print "cap dieta (n) / vegetariana (vt) / vegana (vg)" crlf)
  (print "sense-menjar-brossa (smb) / mediterranea (me):")
  (assert (dieta (ask-allowed-values "Estàs seguint alguna d'aquestes dietes (cap dieta (n) / vegetariana (vt) / vegana (vg) / sense-menjar-brossa (smb) / mediterranea (me))? "
                  n vt vg smb me)))
  (print "----------" crlf)
)

;;**************
;;* TEST RULES *
;;**************

(defrule MAIN::system-banner ""
  (declare (salience 10))
  =>
  (println crlf crlf "Benvingut al increíble creador de menús!" crlf)
  (focus questions)
  )
