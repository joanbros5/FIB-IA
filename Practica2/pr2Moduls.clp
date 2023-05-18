
;; Modul main
(defmodule MAIN (export ?ALL))

;; Modul Preguntes
(defmodule asks
	(import MAIN ?ALL)
	(export ?ALL)
)

;; Modul Calculate data
(defmodule calc_data
	(import MAIN ?ALL)
	(import asks ?ALL)
	(export ?ALL)
)

;; Modul Prints
(defmodule prints
	(import MAIN ?ALL)
	(import asks ?ALL)
	(import calc_data ?ALL)	
	(export ?ALL)
)