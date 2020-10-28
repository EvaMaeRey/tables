library(gt)  
example %>%  
  .[1:5, 5] %>%  
  gt() %>%  
  fmt_time(columns = vars(schedule), time_style = "hms") %>% #ROTATE
  fmt_time(columns = vars(schedule), time_style = "hm") %>% #ROTATE
  fmt_time(columns = vars(schedule), time_style = "hms_p") %>% #ROTATE
  fmt_time(columns = vars(schedule), time_style = "hm_p") %>% #ROTATE
  fmt_time(columns = vars(schedule), time_style = "h_p") #ROTATE
