library(gt)
gt::exibble %>% 
  rename(fruit = char) %>%
  rename(team = fctr) %>% 
  rename(weight = num) %>% 
  rename(holiday = date) %>% 
  rename(schedule = time) %>% 
  rename(appointment = datetime) %>% 
  rename(price = currency) %>% 
  rename(id = row) %>% 
  rename(club = group) ->
example

example %>% 
  .[1:5, 1:4] %>% 
  gt() %>%
  fmt_number(columns = vars(weight), 
             decimals = 2) %>%
  fmt_date(columns = vars(holiday), 
           date_style = 1) 
