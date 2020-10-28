library(sparkline) # miniplots spec underscore functions
split(mtcars$mpg, mtcars$cyl) ->
  mpg_list

kableExtra::spec_boxplot(mpg_list) ->
  figures

split(mtcars$disp, mtcars$cyl) ->
  disp_list

data.frame(cyl = c(4, 6, 8), 
           mpg_box = "", mpg_hist = "",
           mpg_line1 = "", mpg_line2 = "",
           mpg_points1 = "", mpg_points2 = "", 
           mpg_poly = "")  %>% 
  kableExtra::kbl(booktabs = TRUE) %>%
  kableExtra::kable_paper(full_width = FALSE) %>%
  kableExtra::column_spec(2, image = kableExtra::spec_boxplot(mpg_list)) %>%
  kableExtra::column_spec(3, image = kableExtra::spec_hist(mpg_list)) %>%
  kableExtra::column_spec(4, image = kableExtra::spec_plot(mpg_list, same_lim = TRUE)) %>%
  kableExtra::column_spec(5, image = kableExtra::spec_plot(mpg_list, same_lim = FALSE)) %>%
  kableExtra::column_spec(6, image = kableExtra::spec_plot(mpg_list, type = "p")) %>%
  kableExtra::column_spec(7, image = kableExtra::spec_plot(mpg_list, disp_list, type = "p")) %>%
  kableExtra::column_spec(8, image = kableExtra::spec_plot(mpg_list, polymin = 5))
