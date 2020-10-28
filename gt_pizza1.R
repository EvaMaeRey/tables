pizza2 %>% 
  data_color(
    columns = vars(sold, income),
    colors = scales::col_numeric(
      palette = paletteer::paletteer_d(
        palette = "ggsci::red_material"
      ) %>% as.character(),
      domain = NULL
    ),
    alpha = 0.8
  ) %>%
  summary_rows(
    groups = TRUE,
    columns = vars(sold),
    fns = list(TOTAL = "sum"),
    formatter = fmt_number,
    decimals = 0,
    use_seps = TRUE
  ) %>%
  summary_rows(
    groups = TRUE,
    columns = vars(income),
    fns = list(TOTAL = "sum"),
    formatter = fmt_currency,
    currency = "USD"
  ) %>%
  grand_summary_rows(
    columns = vars(sold),
    fns = list(`GRAND TOTAL` = "sum"),
    formatter = fmt_number,
    decimals = 0,
    use_seps = TRUE
  )  ->
pizza3; pizza3
