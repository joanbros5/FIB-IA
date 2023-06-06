

;; EASY FUNCTIONS

(deffunction MAIN::random-ord (?a ?b)
  (eq 1 (random 1 2))
)

(deffunction MAIN::random-sort (?list)
  (sort random-ord ?list)
)

(deffunction MAIN::elements-unics (?llista)
   (bind ?elements (create$))

   (foreach ?elem ?llista
      (if (member$ ?elem ?elements)
         then (return FALSE)
         else (bind ?elements (create$ ?elements ?elem))
      )
   )

   (return TRUE)
)


(deffunction MAIN::valid-num (?num ?min ?max)
   (return (and (eq (type ?num) INTEGER) (<= ?num ?max) (>= ?num ?min)))
   )

;; ASKING FUNCTIONS
(deffunction MAIN::ask-allowed-values (?question $?allowed-values)
   ;(print ?question)
   (bind ?answer (read))
   (if (lexemep ?answer)
       then (bind ?answer (lowcase ?answer)))
   (while (not (member$ ?answer ?allowed-values)) do
      (print ?question)
      (bind ?answer (read))
      (if (lexemep ?answer)
          then (bind ?answer (lowcase ?answer))))
   ?answer
   )

(deffunction MAIN::ask-question (?question)
   (print ?question)
   (bind ?answer (read))
   )

(deffunction MAIN::ask-allowed-nums (?question)
   (print ?question)
   (bind ?answer (read))
   (while (not (valid-num ?answer 2 105)) do
      (print ?question)
      (bind ?answer (read))
      )
   ?answer
   )

(deffunction MAIN::ask-home-dona (?question)
   (bind ?response (ask-allowed-values ?question home dona))
   (if (eq ?response home)
       then h
       else d
       )
   )


;; INPUT TREATMENT FUNCTIONS

(deffunction MAIN::traduccio (?char)

   (if (eq ?char es)
      then (return estiu)
   )
   (if (eq ?char pr)
      then (return primavera)
   )
   (if (eq ?char ta)
      then (return tardor)
   )
   (if (eq ?char hi)
      then (return hivern)
   )

   (if (eq ?char n)
      then (return no)
   )
   (if (eq ?char o)
      then (return ou)
   )
   (if (eq ?char l)
      then (return lactic)
   )
   (if (eq ?char g)
      then (return blat)
   )

   (if (eq ?char c)
      then (return ceba)
   )
   (if (eq ?char p)
      then (return pebrot)
   )
   (if (eq ?char ca)
      then (return cacau)
   )
   (if (eq ?char m)
      then (return marisc)
   )
   (if (eq ?char t)
      then (return tomaquet)
   )
   (if (eq ?char f)
      then (return fregit)
   )
   (if (eq ?char cr)
      then (return carn)
   )
   (if (eq ?char px)
      then (return peix)
   )

   (if (eq ?char vt)
      then (return vegetariana)
   )
   (if (eq ?char vg)
      then (return vegana)
   )
   (if (eq ?char me)
      then (return mediterranea)
   )
   (if (eq ?char smb)
      then (return smb)
   )
)

;; GENERETING MENU FUNCTIONS

(deffunction MAIN::calcul-caloric (?sexe ?edat ?na)
   (bind ?C 0)
   (if (eq ?sexe h)
      then
            (bind ?C 2600)
      else
            (bind ?C 2000)
   )
   (if (not (eq ?na ma))
      then
            (if (eq ?na s)
               then
                     (bind ?C (- ?C 200))
               else
                     (bind ?C (- ?C 100))
               )
   )
   (return (- ?C (* 3 (- ?edat 65))))
)

(deffunction MAIN::calcul-caloric-new (?sexe ?edat ?na)
   (bind ?C 2600)
   (if (eq ?sexe h)
      then
            (if (and (> ?edat 50) (< ?edat 105))
               	then
                    	(bind ?C 2750)
            )
            (if (and (> ?edat 30) (< ?edat 51))
               	then
			(bind ?C 2950)
            )
	    (if (and (> ?edat 18) (< ?edat 31))
               	then
			(bind ?C 3000)
            )
            (if (and (> ?edat 13) (< ?edat 19))
               	then
			(bind ?C 3100)
            )
            (if (and (> ?edat 8) (< ?edat 14))
               	then
			(bind ?C 2550)
            )
            (if (and (> ?edat 3) (< ?edat 9))
               	then
			(bind ?C 1950)
            )
            (if (and (> ?edat 1) (< ?edat 4))
               	then
			(bind ?C 1000)
            )
    )
    (if (eq ?sexe d)
        then
            (if (and (> ?edat 50) (< ?edat 106))
               	then
                    	(bind ?C 2150)
            )
            (if (and (> ?edat 30) (< ?edat 51))
               	then
			(bind ?C 2200)
            )
	    (if (and (> ?edat 18) (< ?edat 31))
               	then
			(bind ?C 2400)
            )
            (if (and (> ?edat 13) (< ?edat 19))
               	then
			(bind ?C 2400)
            )
            (if (and (> ?edat 8) (< ?edat 14))
               	then
			(bind ?C 2150)
            )
            (if (and (> ?edat 3) (< ?edat 9))
               	then
			(bind ?C 1750)
            )
            (if (and (> ?edat 1) (< ?edat 4))
               	then
			(bind ?C 1000)
            )
     )
   (if (not (eq ?na ma))
      then
            (if (eq ?na s)
               then
                     (bind ?C (- ?C 400))
               else
                     (bind ?C (- ?C 200))
               )
   )
   (return (- ?C ?edat))
)

(deffunction MAIN::count-items ($?plats)
  (bind ?count_kcal 0)
  (bind ?count_hc 0)
  (bind ?count_fat 0)
  (bind ?count_pro 0)
  (foreach ?plat ?plats
    (bind ?count_kcal (+ ?count_kcal (send ?plat get-quantitatCalories)))
    (bind ?count_hc (+ ?count_hc (send ?plat get-quantitatCarbohidrats)))
    (bind ?count_fat (+ ?count_fat (send ?plat get-quantitatGreix)))
    (bind ?count_pro (+ ?count_pro (send ?plat get-quantitatProteines)))
    )
   (return (create$ ?count_kcal ?count_hc ?count_fat ?count_pro))
)

(deffunction MAIN::menu-valid (?menu-candidat ?kcalRequerides ?margeCal)

   (bind ?all-quantitats (count-items ?menu-candidat))
   (bind ?quantitat-kcal-menu (nth$ 1 ?all-quantitats))
   (bind ?quantitat-carbohidrats (nth$ 2 ?all-quantitats))
   (bind ?quantitat-greix (nth$ 3 ?all-quantitats))
   (bind ?quantitat-proteines (nth$ 4 ?all-quantitats))

   ;(print (<= ?quantitat-kcal-menu (+ ?kcalRequerides ?margeCal)) crlf)
   ;(print (>= ?quantitat-kcal-menu (- ?kcalRequerides ?margeCal)) crlf)

   ;(print (<= (* 0.5 (+ ?kcalRequerides ?margeCal)) (* 4 ?quantitat-carbohidrats)) crlf)
   ;(print (>= (* 0.6 (+ ?kcalRequerides ?margeCal)) (* 4 ?quantitat-carbohidrats)) crlf)

   ;(print (<= (* 0.3  (+ ?kcalRequerides ?margeCal)) (* 9 ?quantitat-greix)) crlf)
   ;(print (>= (* 0.35 (+ ?kcalRequerides ?margeCal)) (* 9 ?quantitat-greix)) crlf)

   ;(print (<= (* 0.1  (+ ?kcalRequerides ?margeCal)) (* 4 ?quantitat-proteines)) crlf)
   ;(print (>= (* 0.15 (+ ?kcalRequerides ?margeCal)) (* 4 ?quantitat-proteines)) crlf)
   ;(print "--------" crlf)

   (if (and

         (<= ?quantitat-kcal-menu (+ ?kcalRequerides ?margeCal))
         (>= ?quantitat-kcal-menu (- ?kcalRequerides ?margeCal))

         (<= (* 0.5 (- ?kcalRequerides ?margeCal)) (* 4 ?quantitat-carbohidrats))
         (>= (* 0.6 (+ ?kcalRequerides ?margeCal)) (* 4 ?quantitat-carbohidrats))

         (<= (* 0.3  (- ?kcalRequerides ?margeCal)) (* 9 ?quantitat-greix))
         (>= (* 0.35 (+ ?kcalRequerides ?margeCal)) (* 9 ?quantitat-greix))

         (<= (* 0.1  (- ?kcalRequerides ?margeCal)) (* 4 ?quantitat-proteines))
         (>= (* 0.15 (+ ?kcalRequerides ?margeCal)) (* 4 ?quantitat-proteines))

      )
      then
         (return TRUE)
      else
         (return FALSE)
   )
)

(deffunction MAIN::genera-menu-random (?esmorzars ?dinars ?sopars ?postres)

   (bind ?e (nth$ (random 1 (length$ ?esmorzars)) ?esmorzars))
   (bind ?d1 (nth$ (random 1 (length$ ?dinars)) ?dinars))
   (bind ?d2 (nth$ (random 1 (length$ ?dinars)) ?dinars))
   (bind ?dp (nth$ (random 1 (length$ ?postres)) ?postres))
   (bind ?s1 (nth$ (random 1 (length$ ?sopars)) ?sopars))
   (bind ?sp (nth$ (random 1 (length$ ?postres)) ?postres)) 

   (return (create$ ?e ?d1 ?d2 ?dp ?s1 ?sp))
)

(deffunction MAIN::genera-convinacions (?esmorzars ?dinars ?sopars ?postres ?kcalRequerides)


   (bind ?menu-candidat (genera-menu-random ?esmorzars ?dinars ?sopars ?postres))
   (bind ?marge 50)
   (while (not (and
               (elements-unics ?menu-candidat)
               (menu-valid ?menu-candidat ?kcalRequerides ?marge)
               )) do
               (bind ?menu-candidat (genera-menu-random ?esmorzars ?dinars ?sopars ?postres))
               (bind ?marge (+ ?marge 1))
               ;(print (nth$ 1 (count-items ?menu-candidat)) crlf)
      )

   (return ?menu-candidat)
)

;; REVING MENU FUNCTIONS

(deffunction MAIN::no-repeticions-dies-consecutius (?menu1 ?menu2)
   (return (elements-unics (create$ ?menu1 ?menu2)))
)

(deffunction MAIN::resvisio-temporada-dieta (?plats ?t ?d)
   (bind ?plats-definitius (create$))
   (if (neq ?d no)
      then
         (foreach ?plat ?plats
            (if
               (and
                  (member$ ?t (send ?plat get-temporada))
                  (member$ ?d (send ?plat get-tipusDieta))
                  )
               then
                  (bind ?plats-definitius (create$ ?plats-definitius ?plat))
               )
            )
      else
         (foreach ?plat ?plats
            (if (member$ ?t (send ?plat get-temporada))
               then
                  (bind ?plats-definitius (create$ ?plats-definitius ?plat))
               )
            )
      )
   (return ?plats-definitius)
)

;;PRINTS
(deffunction MAIN::printa-avis (?marge)
	(printout t crlf "------------ATTENTION-----------" crlf)
   	(printout t "Degut a que les restriccions alimentàries forcen a recomanar aliments" crlf)
   	(printout t "amb baix contingut calòric, hi ha dies on la suma de calories és" crlf)
   	(printout t "fins a " ?marge " inferior a la calculada." crlf)
   	(printout t "Per no patir un dèficit calòric, recomanem augmentar el tamany de les racions." crlf)
)