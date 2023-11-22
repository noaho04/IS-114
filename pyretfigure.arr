use context essentials2021
#bakgrunn
bg = rectangle(160, 160, "solid", "dark-red")

#sirkel
outer_circ = circle(60, "outline", "yellow")
inner_circ = circle(59, "solid", "black")

#konstruksjon
put-image(outer_circ, 60, 100, 
  put-image(inner_circ, 60, 100,bg))
