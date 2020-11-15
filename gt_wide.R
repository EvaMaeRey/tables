library(gt)
gapminder::gapminder %>% 
  filter(country %in% 
           c("Australia", "New Zealand", 
             "Canada", "United States", "Mexico"),
         year > 1990) %>% 
  mutate(gdp_billion = pop * gdpPercap/1000000000) %>% 
  mutate(gdp_billion = round(gdp_billion,1)) %>% 
  select(1:3, gdp_billion) %>% 
  pivot_wider(values_from = gdp_billion,names_from = year) %>% 
  select(continent, everything()) %>% 
  arrange(continent) %>% 
  group_by(continent) %>% 
  gt() %>% 
  gt::grand_summary_rows(
    columns = vars(`1992`, `1997`, `2002`, `2007`),
    fns = list(
      `grand total` = ~sum(.),
      mean = ~mean(.)),
    formatter = fmt_number,
    use_seps = FALSE
  ) %>% 
  summary_rows(
    groups = TRUE,
    columns = vars(`1992`, `1997`, `2002`, `2007`),
    fns = list(`continent total` = "sum"),
    formatter = fmt_number,
    decimals = 0,
    use_seps = TRUE
  ) %>% 
  tab_header(title = "A countries table")
