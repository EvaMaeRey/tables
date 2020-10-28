hux(Type  = c("Strawberry", "Raspberry", "Plum"),
    Price = c(1.90, 2.10, 1.80)) %>%
  set_all_borders(brdr(0.4, "dotted", "white")) %>%
  set_right_border(everywhere, 1, 
                   brdr(thickness = 3, 
                        style = "double", 
                        color = "grey")) %>%
  set_right_border(everywhere, 
                   1, 
                   3) %>%
  set_lr_borders(value = 
                   brdr(thickness = 8, 
                        style = "solid", 
                        color = "magenta")) %>%
  set_outer_borders(value = 
                      brdr(thickness = 2, 
                           style = "dashed", 
                           color = "green")) %>%    
  set_tb_borders(value = 
                   brdr(thickness = 1, 
                        style = "dotted", 
                        color = "goldenrod"))
