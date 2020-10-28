pizza_prep %>% 
  gt(rowname_col = "size") %>%
  tab_header(title = 
               md("&#127829; Pizzas Sold in 2015 &#127829;")) %>%
  fmt_number(
    columns = vars(sold),
    decimals = 0,
    use_seps = TRUE
  ) %>%
  fmt_currency(
    columns = vars(income),
    currency = "USD"
  ) %>%
  cols_align(align = "right", columns = TRUE) ->
pizza2; pizza2
