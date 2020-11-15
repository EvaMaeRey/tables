library(flextable)
gapminder::gapminder %>% 
  filter(year == 2002) %>% 
  head() %>%
  select(year, continent, everything()) %>% 
  flextable() %>% 
  theme_box() %>% 
  merge_v(j = c("year", "country", "continent") ) %>% 
  set_header_labels(country = "The Country Name", 
                    year = "Year", 
                    continent = "",
                    pop = "Population") %>% 
  autofit() %>% 
  bg(bg = "grey95", part = "body") %>% 
  bg(bg = "steelblue", part = "header") %>% 
  color(color = "oldlace", part = "header") %>% 
  font(fontname = "Times") %>% 
  bg(bg = "grey70", j = 6) %>% 
  bg(bg = "goldenrod2", j = 1) %>% 
  rotate(j = 1:4, rotation="btlr", part = "header") %>% 
  rotate(j = 3, rotation="lrtb", part = "header") %>% 
  rotate(i = 3, j = 2, rotation="btlr", part = "body") %>% 
  rotate(j = 1, rotation="btlr", part = "body") %>%
  # conditional formatting
  color(i = ~ lifeExp > 75, 
        j = ~ country + lifeExp, 
        color = "goldenrod4") %>% 
  bold(j = c("year", "gdpPercap"), 
       bold = TRUE) %>% 
  align(align = "center", part = "all" ) %>% 
  fontsize(j = "continent", size = 14) %>% 
  fontsize(j = "year", size = 20) %>% 
  color(j = 1, color = "steelblue", part = "body") %>% 
  line_spacing(space = 3, part = "header") %>% 
  vline(border = officer::fp_border(color="goldenrod3", 
                           style = "dashed"), 
        part = "all" ) %>% 
  hline_bottom(border = 
                  officer::fp_border(color="steelblue", 
                            style = "solid", width = 5), 
               part = "body" ) %>% 
  hline(i = 5, border = officer::fp_border(color = "plum4", width = 4)) %>% 
  hline_top(border = officer::fp_border(color="goldenrod3", width = 3), 
            part = "all")
