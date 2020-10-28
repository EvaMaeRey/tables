gapminder::gapminder %>%
  filter(year == 2002,
         continent == "Oceania") %>% 
  select(-year, -continent) %>% 
  as_hux() %>% 
  theme_bright() %>% 
  theme_blue() %>% 
  theme_article() %>% 
  theme_basic() %>% 
  theme_bright() %>% 
  theme_compact() %>% 
  theme_green() %>% 
  theme_grey() %>% 
  theme_mondrian() %>% 
  theme_orange() %>% 
  theme_plain() %>% 
  theme_striped()
