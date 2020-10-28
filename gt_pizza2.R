pizza3 %>%
  grand_summary_rows(
    columns = vars(income),
    fns = list(`GRAND TOTAL` = "sum"),
    formatter = fmt_currency,
    currency = "USD"
  ) %>%
  tab_options(table.font.size = "tiny") %>% 
  tab_footnote(
    footnote = "The pizza category with the highest total sales.",
    locations = cells_row_groups("classic (classical pizzas)")
  ) %>%
  tab_footnote(
    footnote = md("Custom sizes for **The Greek** pizza."),
    locations = cells_stub("XXL")
  ) %>%
  tab_footnote(
    footnote = md("This is a new record. Truly, 2015 was a **great** year for the `pizzaplace`."),
    locations = cells_grand_summary(columns = vars(sold))
  ) ->
pizza_tab; pizza_tab
