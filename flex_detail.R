iris[c(1:3, 51:53, 101:104),] %>% 
  flextable(col_keys = 
              c("Species", "col_1", 
               "Sepal.Length", 
               "Petal.Length")) %>% 
  theme_vanilla() %>% 
  autofit() %>% 
  empty_blanks() %>% 
  set_header_labels(
    Sepal.Length = "Sepal length", 
    Sepal.Width = "Sepal width", 
    Petal.Length = "Petal length",
    Petal.Width = "Petal width" )
