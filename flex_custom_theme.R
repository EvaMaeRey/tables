gapminder::gapminder %>% 
  filter(year == 2002) %>% 
  head() %>% 
  flextable() %>% 
  theme_vanilla() %>% 
  color(color = "steelblue", 
        part = "all") %>% 
  bg(bg = "transparent", 
     part = "all") %>% 
  italic(j = 1) %>% 
  bg(bg = "#C90000", 
     part = "header") %>% 
  color(color = "white", 
        part = "header") %>%
  color(~ year > 3.5, ~ year, 
        color = "red") %>% 
  bold(~ year > 3.5, ~ year, 
       bold = TRUE) %>% 
  autofit()
