
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
   (bind ?response (ask-allowed-values ?question m f))
   (if (eq ?response m)
       then m 
       else f
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





