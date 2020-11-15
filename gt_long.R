gapminder::gapminder %>% 
  filter(year == 2002) %>% 
  head() %>%
  select(year, continent, everything()) %>% 
  gt::gt()
