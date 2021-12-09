library(dplyr)

mtcars %>%
  select(mpg, cyl, hp) %>%
  group_by(cyl) %>%
  summarise(mean(hp))
