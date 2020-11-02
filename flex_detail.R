myft <- iris[c(1:3, 51:53, 101:104),]
myft <- flextable(
  data = myft, 
  col_keys = c("Species", "col_1", 
               "Sepal.Length", "Petal.Length") )
myft <- theme_vanilla(myft)
myft <- autofit(myft)
myft <- empty_blanks(myft)

# reset and build
myft <- head(iris)
myft <- flextable(myft) 
myft <- set_header_labels(myft, Sepal.Length = "Sepal length", 
    Sepal.Width = "Sepal width", Petal.Length = "Petal length",
    Petal.Width = "Petal width" )
