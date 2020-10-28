data.frame(Type  = c("Strawberry", "Raspberry", "Plum"),
    Price = c(1.90, 2.10, 1.80)) %>% 
  as_hux() %>% 
  set_text_color(row = 2:3, col = 1, 
                 value = "purple") %>% 
  set_background_color(row = evens, 
                       col = everywhere, 
                       value = "grey85") %>% 
  set_background_color(odds, everywhere, 
                       "grey93") %>% 
  set_markdown_contents(1, 1, "*Type* of jam") %>% 
  set_markdown_contents(1, 2, "*Price* of jam") %>% 
  set_markdown_contents(3, 2, "~~2.10~~ **Sale!** 1.50") %>%
  set_right_border(everywhere, 1, brdr(3, "double", "grey"))
