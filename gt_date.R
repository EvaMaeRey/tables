library(gt)  
example %>%  
  .[1:5, 4] %>%  
  gt() %>%  
  fmt_date(columns = vars(holiday), 
           date_style = "iso")
