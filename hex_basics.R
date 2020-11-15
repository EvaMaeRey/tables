library(huxtable)
gapminder::gapminder %>% 
  filter(year == 2002) %>% 
  head() %>%
  select(year, continent, everything()) %>% 
  as_hux() %>% 
  set_all_border_colors(value = "gold") %>% 
  merge_cells(col = 1, row = 2:7) %>% 
  merge_cells(col = 2, row = 4:5)
