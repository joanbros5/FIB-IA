
;; Modul main
(defmodule MAIN (export ?ALL))

;; Modul Preguntes
(defmodule questions
	(import MAIN ?ALL)
	(export ?ALL)
)

; Modul Logicas
(defmodule logicas
	(import MAIN ?ALL)
	(import questions ?ALL)
	(export ?ALL)
)

;; Modul Prints
(defmodule prints
	(import MAIN ?ALL)
	(import questions ?ALL)
;	(import calc_data ?ALL)	
	(export ?ALL)
)