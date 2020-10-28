tibble(
  letters1 = c("a", "b", "b", "c"), 
  letters2 = c("d", "e", "b", "b"), 
  number = 1:4) %>% 
  flextable() %>% 
  theme_box() %>%
  merge_v(j = ~ letters1 + letters2 ) %>% #ROTATE
  merge_h() %>% #ROTATE
  merge_h_range(i =  ~ number < 3, j1 = "letters1", j2 = "letters2") #ROTATE
