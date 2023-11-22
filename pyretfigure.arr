use context essentials2021
#bakgrunn
bg = rectangle(160, 160, "solid", "dark-red")

#sirkel
outer_circ = circle(40, "outline", "yellow")
inner_circ = circle(39, "solid", "black")

#konstruksjon
put-image(outer_circ, 80, 80, 
  put-image(inner_circ, 80, 80,bg))