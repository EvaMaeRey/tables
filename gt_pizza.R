library(tidyverse)
library(paletteer)
library(gt)
pizzaplace %>%
  mutate(type = case_when(
    type == "chicken" ~ "chicken (pizzas with chicken as a major ingredient)",
    type == "classic" ~ "classic (classical pizzas)",
    type == "supreme" ~ "supreme (pizzas that try a little harder)",
    type == "veggie" ~ "chicken (pizzas without any meats whatsoever)",
  )) %>%
  mutate(size = factor(size, levels = c("S", "M", "L", "XL", "XXL"))) %>%
  dplyr::group_by(type, size) %>%
  dplyr::summarize(
    sold = n(),
    income = sum(price)
  ) %>% 
  # table is kind of large, hard to make sense of
  dplyr::filter(size != "S" & size != "M" & size != "XL") ->
pizza_prep; pizza_prep
