gapminder::gapminder %>% 
  filter(year == 2002) %>% 
  head() %>% 
  flextable() %>%
  theme_tron_legacy() 
