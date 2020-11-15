library(huxtable)
gapminder::gapminder %>% 
  filter(year == 2002) %>% 
  head() %>%
  select(year, continent, everything()) %>% 
  hux() %>% 
  set_all_border_colors(value = "grey10") %>% 
  set_lr_borders(value =
                   brdr(thickness = 1,
                        style = "dotted",
                        color = "goldenrod")) %>% 
  set_background_color(row = everywhere,
                       col = everywhere,
                       value = "grey85") %>% 
  set_background_color(row = 1,
                       col = everywhere,
                       value = "steelblue") %>% 
  set_text_color(row = -1,
                 col = everywhere,
                 value = "black") %>% 
  set_text_color(row = -1,
                 col = everywhere,
                 value = "black") %>% 
  merge_cells(row = 2:7, col = 1) %>% 
  merge_cells(row = 4:5, col = 2) %>% 
  map_text_color(by_regex("Al" = "goldenrod4", "navy")) %>% 
  map_text_color(row = 2:7, col = 4, 
                 by_colorspace("darkred", "red", "red2", colwise = TRUE))
