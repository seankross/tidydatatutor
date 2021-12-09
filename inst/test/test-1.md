    library(dplyr)

    mtcars %>% 
      select(mpg, cyl, hp) %>% 
      group_by(cyl) %>% 
      summarise(mean(hp))

    ## # A tibble: 3 × 2
    ##     cyl `mean(hp)`
    ##   <dbl>      <dbl>
    ## 1     4       82.6
    ## 2     6      122. 
    ## 3     8      209.

[See this pipeline in Tidy Data
Tutor](https://tidydatatutor.com/vis.html#code=library%28dplyr%29%0A%0Amtcars%20%25%3E%25%20%0A%20%20select%28mpg%2C%20cyl%2C%20hp%29%20%25%3E%25%20%0A%20%20group_by%28cyl%29%20%25%3E%25%20%0A%20%20summarise%28mean%28hp%29%29&d=2021-12-09&lang=r&v=v1)
