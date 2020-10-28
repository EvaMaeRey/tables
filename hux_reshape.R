matrix(1:16, 4, 4) %>% 
  as_hux() %>% 
  set_background_color(1:2, 1:2, "red") %>% 
  set_background_color(1:2, 3:4, "yellow") %>% 
  set_background_color(3:4, 1:2, "darkgreen") %>% 
  set_background_color(3:4, 3:4, "blue") %>% 
  set_text_color(3:4, 1:4, "white") %>% 
  set_all_borders(brdr(2, "solid", "white")) %>%   
  set_caption("Original table") %>% 
  restack_across(rows = 2) %>% 
  set_caption("Restacked across") %>% 
  restack_down(cols = 2) %>% 
  set_caption("Restacked down")
