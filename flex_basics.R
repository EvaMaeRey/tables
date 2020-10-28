gapminder::gapminder %>% 
  filter(year == 2002) %>% 
  head() %>% 
  flextable() %>% 
  merge_v(j = c("country", "continent") ) %>% 
  set_header_labels(country = "The Country" ) %>% 
  autofit() %>% 
  theme_vader()
