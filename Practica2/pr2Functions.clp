
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
   ?answer)

(deffunction ask-question (?question)
   (print ?question)
   (bind ?answer (read))
   (if (lexemep ?answer) 
       then (bind ?answer (lowcase ?answer)))
    )

(deffunction m-or-f-p (?question)
   (bind ?response (ask-allowed-values ?question m f))
   (if (eq ?response m)
       then m 
       else f))

(deffunction calcul-caloric (?sexe ?edat ?na)
   (bind ?C 0)
   (if (eq ?sexe m)
      then 
            (bind ?C 2600)
      else
            (bind ?C 2000)
   )
   (return ?C)
;(+ (* (- (?edat) (65)) 10)  
)