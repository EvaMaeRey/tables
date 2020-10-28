library(kableExtra)
mtcars[1:5, 1:4] %>%
  mutate(car = row.names(.)) %>%
  select(car, everything()) %>% 
  knitr::kable("html", escape = F)
