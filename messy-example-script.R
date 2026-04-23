library(ggplot2); library(dplyr)

x=c(1,2,3,4,5,6,7,8,9,10,11,12)
fav_animal<-c(  rep( "cat" ,length(x)-4) ,  rep("dog" , 4 ) )
likes_veggie  <-"no"

info <-    data.frame(
x = x,
      f = fav_animal,
                v = likes_veggie,
  w = x
)

info|>mutate(x=2*x)|>filter(likes_veggie=="no")|>mutate(y=glue::glue("My favorite animal is a {f}"))|>select(w,y)
