gapminder::gapminder %>% 
  filter(year == 2002) %>% 
  select(-year) %>% 
  arrange(-pop) %>% 
  slice(1:20) %>% 
  flextable::flextable()
