library(ggplot2)
library(dplyr)

x = c(4, 5, 6, 7, 8, 9, 10,11)
fav_animal <- "cat"
likes_veggie <- "no"

info <- as.data.frame(x = x, f = fav_animal, v = likes_veggie, w = x, a=f)
info |> pull(f)
