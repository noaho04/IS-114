use context essentials2021
#rød bakgrunn for flagg
red_bg = rectangle(220, 160, "solid", "red")

#horisontale hvite linjen
white_hor = rectangle(220, 40, "solid", "white")

#vertikale hvite linjen
white_vert = rectangle(40, 220, "solid", "white")

#horisontale blå linjen
blue_hor = rectangle(220, 20, "solid", "dark-blue")

#vertikale blå linjen
blue_vert = rectangle(20, 220, "solid", "dark-blue")


#|
   setter de definerte rektanglene på spesifiserte koordinater der koordinatene er dens midtpunkt, 
   relativt til det nedre venstre hjørnet til bakgrunnen (her: red_bg)
|#

put-image(blue_hor, 110, 80,
  put-image(blue_vert, 85, 80, 
    put-image(white_hor, 110, 80, 
      put-image(white_vert, 85, 80, red_bg))))

#mål tatt fra wikipedia: https://no.wikipedia.org/wiki/Norges_flagg