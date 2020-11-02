gapminder::gapminder %>% 
  filter(year == 2002) %>% 
  group_by(continent) %>% 
  summarise(population = sum(pop)) %>% 
  mutate(percent = 100 * round(prop.table(population), 3) ) ->
base
  
base %>% 
  summarise(percent = sum(percent), 
            population = sum(population),
            continent = "Totals") ->
totals
bind_rows(base, totals) %>% 
  mutate(`Population (millions)` = population/1000000) %>% 
  mutate(percent = round(percent, 2)) %>% 
  rename(` ` = continent) %>% 
  select(` `, `Population (millions)`, percent)
