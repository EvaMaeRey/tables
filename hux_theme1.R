library(huxtable)
gapminder::gapminder %>%
  filter(year == 2002,
         pop > 100000000) %>% 
  arrange(-pop) %>% 
  select(-year) %>% 
  as_hux() %>% 
  set_caption("Most populous Countries, 2002") %>% 
  theme_bright() %>% #ROTATE
  theme_blue() %>% #ROTATE
  theme_article() %>% #ROTATE
  theme_basic() %>% #ROTATE
  theme_compact() %>% #ROTATE
  theme_green() %>% #ROTATE
  theme_grey() %>% #ROTATE
  theme_mondrian() %>% #ROTATE
  theme_orange() %>% #ROTATE
  theme_plain() %>% #ROTATE
  theme_striped() #ROTATE
