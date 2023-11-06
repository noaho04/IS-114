use context essentials2021
#hovedfunksjon for å tegne flagg, med flere parameteret for å kunne tegne alle nordiske flagg
fun flagg(bg_color, outer_color, inner_color, dim_x, dim_y, thickness, distance_to_cross):
  
  #forstørrer forholdene
  new_dim_x = dim_x * 10
  new_dim_y = dim_y * 10
  new_thickness = thickness * 10
  
  #definerer hovedrektangelet
  bg = rectangle(new_dim_x, new_dim_y, "solid", bg_color)

  #definerer det ytre korset
  outer_hor = rectangle(new_dim_x, new_thickness, "solid", outer_color)
  outer_vert = rectangle(new_thickness, new_dim_x, "solid", outer_color)
  
  #definerer det innerste korset
  inner_hor = rectangle(new_dim_x, (new_thickness / 2), "solid", inner_color)
  inner_vert = rectangle((new_thickness / 2), new_dim_x, "solid", inner_color)
  
  #tegner flagget
  put-image(inner_hor, (new_dim_x / 2), (new_dim_y / 2),
    put-image(inner_vert, (distance_to_cross * 10) + (new_thickness / 2), (new_dim_y / 2),
        put-image(outer_hor, (new_dim_x / 2), (new_dim_y / 2), 
        put-image(outer_vert, (distance_to_cross * 10) + (new_thickness / 2), (new_dim_y / 2), bg))))
  
end

#brukseksempel
flagg("red", "white", "blue", 22, 16, 4, 6)
flagg("white", "blue", "red", 22, 16, 4, 6)
flagg("red", "white", "white", 37, 28, 4, 12)
flagg("blue", "yellow", "yellow", 16, 10, 2, 5)
flagg("white", "blue", "blue", 18, 11, 3, 5)
flagg("blue", "white", "red", 25, 18, 4, 7)