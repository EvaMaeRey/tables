library(gt)
example %>%
  .[1:5, ] %>% 
  gt() %>%
  fmt_number(columns = vars(weight), 
             decimals = 2) %>%
  fmt_date(columns = vars(holiday), 
           date_style = 1) %>% 
  fmt_time(columns = vars(schedule), 
           time_style = 1) %>%
  fmt_datetime(columns = vars(appointment), 
               date_style = 6, 
               time_style = 4) %>%
  fmt_currency(columns = vars(price), 
               currency = "EUR") %>%
  tab_header(
    title = md("This is the `exibble` dataset in **gt**"), 
    subtitle = "It is one of six datasets in the package"
  ) %>%
  tab_source_note(source_note = 
                    md("More information is available at `?exibble`.")) %>% 
  tab_spanner(label = "Dates and Times", 
              columns = matches("schedule|appointment"))
