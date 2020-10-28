library(huxtable)
hux(Type  = c("Strawberry", "Raspberry", "Plum"),
    Price = c(1.90, 2.10, 1.80)) %>% 
  set_all_padding(4) %>% 
  set_outer_padding(0) %>% 
  set_number_format(2) %>% 
  set_bold(row = 1, col = everywhere) %>% 
  set_bottom_border(1, everywhere) %>% 
  set_width(0.4) %>% 
  set_caption("Pots of jam for sale")
