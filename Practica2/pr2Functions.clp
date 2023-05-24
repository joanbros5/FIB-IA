

;;EASY FUNCTIONS

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



;;ASKING FUNCTIONS
(deffunction MAIN::ask-allowed-values (?question $?allowed-values)
   (print ?question)
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
   (if (lexemep ?answer) 
       then (bind ?answer (lowcase ?answer)))
    )

(deffunction MAIN::valid-num (?num ?min ?max)
   (return (and (eq (type ?num) INTEGER) (<= ?num ?max) (>= ?num ?min)))
   )

(deffunction MAIN::ask-allowed-nums (?question)
   (print ?question)
   (bind ?answer (read))
   (while (not (valid-num ?answer 65 105)) do
      (print ?question)
      (bind ?answer (read))
      )
   ?answer
   )

(deffunction MAIN::m-or-f-p (?question)
   (bind ?response (ask-allowed-values ?question h d))
   (if (eq ?response h)
       then h 
       else d
       )
   )

(deffunction MAIN::traducció (?char)

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
      then (return gluten)
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

   (if (eq ?char ve)
      then (return vegetariana)
   )
   (if (eq ?char me)
      then (return mediterranea)
   )
   (if (eq ?char smb)
      then (return sense-menjar-brossa)
   )
)



(deffunction MAIN::calcul-caloric (?sexe ?edat ?na)
   (bind ?C 0)
   (if (eq ?sexe m)
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

(deffunction MAIN::count-items ($?plats)
  (bind ?countKCalories 0)
  (bind ?countCarbohidrats 0)
  (bind ?countGreix 0)
  (bind ?countProteines 0)
  (foreach ?plat ?plats
    (bind ?count (+ ?count (send ?plat get-quantitatCalories)))
    (bind ?count (+ ?count (send ?plat get-quantitatCarbohidrats)))
    (bind ?count (+ ?count (send ?plat get-quantitatGreix)))
    (bind ?count (+ ?count (send ?plat get-quantitatProteines)))
    )
   (return (create$ ?countKCalories ?countCarbohidrats ?countGreix ?countProteines))
)

(deffunction MAIN::menu-valid (?menu-candidat ?kcalRequerides)
   
   (bind ?all-quantitats (count-items ?menu-candidat))
   
   (bind ?quantitat-kcal-menu (nth$ 1 ?all-quantitats))
   (bind ?quantitat-carbohidrats (nth$ 2 ?all-quantitats))
   (bind ?quantitat-greix (nth$ 3 ?all-quantitats))
   (bind ?quantitat-proteines (nth$ 4 ?all-quantitats))
   
   (if (and
         (elements-unics ?menu-candidat)

         (<= ?quantitat-kcal-menu (+ ?kcalRequerides 100))
         (>= ?quantitat-kcal-menu (- ?kcalRequerides 100))
         
         (<= (* 0.5 ?kcalRequerides) (* 4 ?quantitat-carbohidrats))
         (>= (* 0.6 ?kcalRequerides) (* 4 ?quantitat-carbohidrats))

         (<= (* 0.3  ?kcalRequerides) (* 9 ?quantitat-greix))
         (>= (* 0.35 ?kcalRequerides) (* 9 ?quantitat-greix))
         
         (<= (* 0.1  ?kcalRequerides) (* 4 ?quantitat-proteines))
         (>= (* 0.15 ?kcalRequerides) (* 4 ?quantitat-proteines))
         
      )
      then
         (return TRUE)
      else
         (return FALSE)
   )
)

(deffunction MAIN::genera-convinacions (?esmorzars ?dinars ?sopars ?postres ?kcalRequerides)
   
   (bind ?combinaciones (create$))

   (foreach ?e (random-sort ?esmorzars)
      (foreach ?d1 (random-sort ?dinars)
      (foreach ?d2 (random-sort ?dinars)
      (foreach ?dp (random-sort ?postres)
      (foreach ?s1 (random-sort ?sopars)
      (foreach ?sp (random-sort ?postres)

         (bind ?menu-candidat (create$ ?e ?d1 ?d2 ?dp ?s1 ?sp))

         (if (menu-valid ?menu-candidat ?kcalRequerides)
               then (return ?menu-candidat)
               )
      )
      )
      )
      )
      )
   )
)

(deffunction MAIN::no-repeticions-dies-consecutius (?menu1 ?menu2)
   (return (elements-unics (create$ ?menu1 ?menu2)))
)



