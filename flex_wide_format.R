arranged_table %>% 
  select(-is_sub, -is_grand) %>% 
  flextable() %>% 
  theme_box() %>% 
  merge_v() %>% 
  rotate(j = 1, part = "body", rotation = "btlr") %>% 
  set_header_labels(continent = "",
                    country = "") %>% 
  bg(bg = "aliceblue", part = "all") %>% 
  bg(i = ~ country == "Total", 
     bg = "steelblue3") %>% 
  bg(i = ~ country == "Grand Total", 
     bg = "steelblue3") %>% 
  color (i = ~ country == "Grand Total", 
     color = "grey90") %>% 
  bg(j = "continent", bg = "steelblue3") %>% 
  bold(j = "Total", part = "all") %>% 
  bold(i = ~ str_detect(country, "Total")) %>% 
  font(fontname = "Times") %>% 
  flextable::set_caption("Very good") %>% 
  flextable::add_header(continent = "This is my title") %>% 
  flextable::add_footer(country = "A footnote goes here") %>% 
  merge_h()
  
