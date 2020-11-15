gapminder::gapminder %>% 
  filter(country %in% 
           c("Australia", "New Zealand", 
             "Canada", "United States", "Mexico"),
         year > 1990) %>% 
  mutate(gdp_billion = pop * gdpPercap/1000000000) %>% 
  mutate(gdp_billion = round(gdp_billion,1)) %>% 
  select(1:3, gdp_billion) %>% 
  pivot_wider(values_from = gdp_billion,names_from = year) %>% 
  select(continent, everything()) %>% 
  arrange(continent) %>% 
  mutate(Total = `1992` + `1997` + `2002` + `2007`) %>% 
  mutate(is_sub = F) ->
prep

prep %>% 
  group_by(continent) %>% 
  summarise_at(vars(`1992`:Total), sum, na.rm = TRUE) %>% 
  mutate(country = "Total") %>% 
  mutate(is_sub = T) %>% 
  bind_rows(prep, .) %>% 
  mutate(is_grand = F) %>% 
  bind_rows(prep %>% 
              summarise_at(vars(`1992`:Total), 
                           sum, na.rm = TRUE) %>% 
              mutate(country = "Grand Total") %>% 
              mutate(is_sub = F) %>% 
              mutate(is_grand = T)) %>% 
  arrange(is_grand, continent, is_sub) ->
arranged_table

arranged_table
