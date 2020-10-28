library(gt)  
example %>%  
  .[1:8, 7] %>%  
  gt() %>%  
  fmt_currency(columns = vars(price), 
               currency = "USD")
