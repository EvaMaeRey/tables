iris %>% 
  group_by(Species) %>% 
  select(Species, Sepal.Length, Sepal.Width, 
             Petal.Length, Petal.Width) %>% 
  slice(1:5) %>% 
  as_hux() %>%
  set_tb_padding(2) %>% 
  set_contents(1, 2:5, c("Length", "Width", "Length", "Width")) %>% 
  insert_row("", "Sepal", "", "Petal", "", after = 0) %>% 
  merge_cells(1, 2:3) %>% 
  merge_cells(1, 4:5) %>% 
  set_align(1, everywhere, "center") %>% 
  set_tb_padding(1, everywhere, 0) %>% 
  set_bold(1, everywhere)
