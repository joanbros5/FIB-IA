
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

(deffunction det-cal(?s ?na)
   (if (eq ?s f) 
      then (
         if (eq ?na s) 
            then (1600) 
            else (
               if (eq ?na a)
                  then (1800)
                  else (2000)
                  )
            )
)