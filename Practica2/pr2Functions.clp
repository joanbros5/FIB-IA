
;;ASKING FUNCTIONS
(deffunction ask-allowed-values (?question $?allowed-values)
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

(deffunction ask-question (?question)
   (print ?question)
   (bind ?answer (read))
   (if (lexemep ?answer) 
       then (bind ?answer (lowcase ?answer)))
    )

(deffunction valid-num (?num ?min ?max)
   (return (and (eq (type ?num) INTEGER) (<= ?num ?max) (>= ?num ?min)))
   )

(deffunction ask-allowed-nums (?question)
   (print ?question)
   (bind ?answer (read))
   (while (not (valid-num ?answer 65 105)) do
      (print ?question)
      (bind ?answer (read))
      )
   ?answer
   )

(deffunction m-or-f-p (?question)
   (bind ?response (ask-allowed-values ?question h d))
   (if (eq ?response h)
       then h 
       else d
       )
   )

;;CALC FUNCTIONS
(deffunction calcul-caloric (?sexe ?edat ?na)
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

(deffunction count_calories ($?plats)
  (bind ?count 0)
  (foreach ?plat ?plats
    (bind ?count (+ ?count (send ?plat get-quantitatCalories)))
    )
)

(deffunction MAIN::random-ord (?a ?b)
  (eq 1 (random 1 2))
)

(deffunction MAIN::random-sort (?list)
  (sort random-ord ?list)
)

(deffunction elementos-unicos (?lista)
   (bind ?elementos (create$))
   
   (foreach ?elem ?lista
      (if (member$ ?elem ?elementos)
         then (return FALSE)
         else (bind ?elementos (create$ ?elementos ?elem))
      )
   )
   
   (return TRUE)
)

(deffunction no-repeticions-dies-consecutius (?menu1 ?menu2)
   (return (elementos-unicos (create$ ?menu1 ?menu2)))
)

(deffunction genera-convinacions (?esmorzars ?dinars ?sopars ?postres ?calories)
   
   (bind ?combinaciones (create$))

   (foreach ?e (random-sort ?esmorzars)
      (foreach ?d1 (random-sort ?dinars)
      (foreach ?d2 (random-sort ?dinars)
      (foreach ?dp (random-sort ?postres)
      (foreach ?s1 (random-sort ?sopars)
      (foreach ?sp (random-sort ?postres)

         (bind ?menu-candidat (create$ ?e ?d1 ?d2 ?dp ?s1 ?sp))

         (if (and 
               (elementos-unicos ?menu-candidat)
               (<= (count_calories ?menu-candidat) (+ ?calories 200))
               (>= (count_calories ?menu-candidat) (- ?calories 200))
               )
               then (return ?menu-candidat)
               )
      )
      )
      )
      )
      )
   )
)


