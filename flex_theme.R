gapminder::gapminder %>% 
  filter(year == 2002) %>% 
  head() %>% 
  flextable() %>%
  theme_alafoli() %>% #ROTATE
  theme_booktabs() %>% #ROTATE
  theme_box() %>% #ROTATE
  theme_tron() %>% #ROTATE
  theme_tron_legacy() %>% #ROTATE
  theme_vader() %>% #ROTATE
  theme_vanilla() %>% #ROTATE
  theme_zebra() #ROTATE
