
# tidydatatutor

<!-- badges: start -->
[![R-CMD-check](https://github.com/seankross/tidydatatutor/workflows/R-CMD-check/badge.svg)](https://github.com/seankross/tidydatatutor/actions)
<!-- badges: end -->

Connect R and RStudio to [Tidy Data Tutor](https://tidydatatutor.com).

## Installation

You can install the development version of tidydatatutor from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("seankross/tidydatatutor")
```

## Getting Started

Copy this code:

```r
library(dplyr)
library(palmerpenguins)

penguins %>%
  select(species, bill_length_mm) %>%
  group_by(species) %>%
  arrange(desc(bill_length_mm), .by_group = TRUE) %>% 
  slice(1)
```

Then run this in the R console:

```r
tidydatatutor::go_paste()
```
