jams1 <- jams
# set all padding:
left_padding(jams1) <- 7
right_padding(jams1) <- 20
top_padding(jams1) <- 11
bottom_padding(jams1) <- 12

# set outer padding:
left_padding(jams1)[1:nrow(jams1), 1] <- 3
top_padding(jams1)[1, 1:ncol(jams1)] <- 1
right_padding(jams1)[1:nrow(jams1),
                     ncol(jams1)] <- .3
bottom_padding(jams1)[nrow(jams1),
                      1:ncol(jams1)] <- 0

number_format(jams1) <- 2
bold(jams1)[1, 1:ncol(jams1)] <- TRUE
bottom_border(jams1)[1, 1:ncol(jams1)] <- 0.8
width(jams1) <- 1
caption(jams1) <- "Pots!!!"

bold(jams1)[1, 1:ncol(jams1)] <- FALSE
