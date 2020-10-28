mtcars[1:5, 1:4] %>%
  mutate(car = row.names(.)) %>%
  select(car, everything()) %>%
  mutate(mpg = formattable::color_tile("white", "orange")(mpg)) %>% #BREAK2
  mutate(hp = formattable::color_tile("white", "lightgreen")(hp)) %>% #BREAK3
  mutate(cyl = kableExtra::cell_spec(x = cyl, #BREAK4
                         format = "html", #BREAK4
                         angle = (1:5)*90/5, #BREAK4
                         background = "red", #BREAK4
                         color = "white", #BREAK4
                         align = "center")) %>% #BREAK4
  mutate(disp = ifelse(disp > 200, #BREAK5
                       kableExtra::cell_spec( #BREAK5
                         x = disp, #BREAK5
                         "html",  #BREAK5
                         color = "red",  #BREAK5
                         bold = T), #BREAK5
                       kableExtra::cell_spec( #BREAK5
                         x = disp, #BREAK5
                         format = "html",  #BREAK5
                         color = "green",  #BREAK5
                         italic = T))) %>%  #BREAK5
  knitr::kable("html", escape = F) %>%
  kableExtra::column_spec(column = 2:5, 
                          width = c("1cm", "1cm","1cm","3cm")
                                      ) %>%
  kableExtra::add_header_above(header = 
                                 c(" ", 
                                   "Hello" = 2, 
                                   "World" = 2))
