library(gt)
gt::exibble %>% 
  rename(fruit = char,
         team = fctr,
         weight = num,
         holiday = date,
         schedule = time,
         appointment = datetime, 
         price = currency,
         id = row,
         club = group) ->
example; example
