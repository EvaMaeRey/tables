library(tidyverse)

my_colors <- colors()[!str_detect(colors(), "^grey|^gray|indian|peru|navajo")]
grays <- colors()[str_detect(colors(), "^grey|^gray")]

num_columns <- 7
num_colors <- length(my_colors)
start_color <- 1
end_color <- start_color + 
  num_colors - 1
the_colors <- my_colors[start_color:end_color]


the_colors %>% 
  matrix(ncol = num_columns, byrow = F, ) %>% 
  as_tibble() %>% 
  mutate_at(.vars = 1:num_columns, 
            funs(factor(., 
                        levels = 
                          rev(the_colors), 
                        ordered = T))) %>% 
  gt::gt() %>% 
  gt::data_color(columns = 1:num_columns,
                 colors = scales::col_factor(
                   palette = the_colors,
                   domain = NULL,
                   reverse = TRUE)
                 ) %>%
  gt::tab_options(
    column_labels.hidden = TRUE
  )
