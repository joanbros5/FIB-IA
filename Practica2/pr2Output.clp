
(defrule imprimir-menu-diario
   ?menuDiario <- (MenuDiari)
   ?esmorzar <- (platEsmorzar ?platEsmorzar)
   ?p1dinar <- (primerPlat ?primerPlat)
   ?p2dinar <- (segonPlat ?segonPlat)
   ?p3dinar <- (postre ?postre)
   ?p1sopar <- (primerPlat ?primerPlatSopar)
   ?p2sopar <- (segonPlat ?segonPlatSopar)
   ?p3sopar <- (postre ?postreSopar)
   =>
   (printout t "Menú Diario:" crlf)
   (printout t "Esmorzar:" crlf)
   (printout t "- " ?platEsmorzar crlf)
   (printout t "Dinar:" crlf)
   (printout t "- Primer plat: " ?primerPlat crlf)
   (printout t "- Segon plat: " ?segonPlat crlf)
   (printout t "- Postre: " ?postre crlf)
   (printout t "Sopar:" crlf)
   (printout t "- Primer plat: " ?primerPlatSopar crlf)
   (printout t "- Segon plat: " ?segonPlatSopar crlf)
   (printout t "- Postre: " ?postreSopar crlf)
   (printout t crlf)
)