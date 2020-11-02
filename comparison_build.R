tribble(
~printer, ~HTML, ~PDF, ~RTF,~Word, ~fns, 
"gt",	1,	5,	5,	4,  "`as_gt()`",
"kable", 2,	2,	2,	2, "`as_kable()`",
"flextable", 1,	1,	4,	1,  "`as_flex_table()`",
"kableExtra", 1,	1,	4,	4, "`as_kable_extra()`",
"huxtable",	1,	1,	1,	1, "`as_hux_table()`",
"tibble",	3,	3,	3,	3, "`as_tibble()`"
) %>% 
  dplyr::mutate(
    link = dplyr::case_when(
      printer == "gt" ~ 
        "[gt](https://gt.rstudio.com/index.html)",
      printer == "kable" ~ 
        "[kable](https://bookdown.org/yihui/rmarkdown-cookbook/kable.html)",
      printer == "flextable" ~
        "[flextable](https://davidgohel.github.io/flextable/articles/overview.html)",
      printer == "kableExtra" ~ 
        "[kableExtra](http://haozhu233.github.io/kableExtra/)",
      printer == "huxtable" ~
        "[huxtable](https://hughjonesd.github.io/huxtable/)",
      printer == "tibble" ~ 
        "[tibble](https://tibble.tidyverse.org/)"
    )
  ) %>%
  gt::gt() %>%
  gt::cols_move_to_start(columns = vars(link, fns)) %>%
  gt::cols_hide(columns = vars(printer)) %>%
  gt::cols_label(link = gt::md("**Print Engine**"), 
             fns = gt::md("**Function**"), 
             HTML = gt::md("**HTML**"), PDF = gt::md("**PDF**"), 
             RTF = gt::md("**RTF**"), Word = gt::md("**Word**")) %>%
  gt::fmt_markdown(columns = vars(fns, link)) %>%
  gt::data_color(
    columns = vars(HTML, PDF, RTF, Word),
    colors = scales::col_factor(
      palette = c("#bae1ff", "#ffb3ba", "#ffdfba", "#ffffba", "#baffc9"),
      domain = NULL,
      reverse = TRUE
    ),
    alpha = 0.8
  ) %>%
  gt::cols_width(vars(HTML, PDF, RTF, Word) ~ px(60),
             vars(link) ~ px(110),
             vars(link, fns) ~ px(140))
