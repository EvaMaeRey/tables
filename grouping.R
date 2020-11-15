gapminder::gapminder %>%
  group_by(country) %>% 
  filter(year > 1990) %>% 
  filter(continent == "Oceania") %>% 
  select(-continent) %>% 
  gt::gt() #ROTATE
  tibble::tibble() #ROTATE
