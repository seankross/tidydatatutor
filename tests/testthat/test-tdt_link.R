test_that("tdt_link makes the correct url", {

  input <- c("library(dplyr)", "library(palmerpenguins)", "", "penguins %>%",
             "  select(species, bill_length_mm) %>%", "  group_by(species) %>%",
             "  arrange(desc(bill_length_mm), .by_group = TRUE) %>% ", "  slice(1)"
  )
  correct <- paste0("https://tidydatatutor.com/vis.html#code=library%28dplyr%29%0Alibrary%28palmerpenguins%29%0A%0Apenguins%20%25%3E%25%0A%20%20select%28species%2C%20bill_length_mm%29%20%25%3E%25%0A%20%20group_by%28species%29%20%25%3E%25%0A%20%20arrange%28desc%28bill_length_mm%29%2C%20.by_group%20%3D%20TRUE%29%20%25%3E%25%20%0A%20%20slice%281%29&d=",
                    as.character(Sys.Date()), "&lang=r&v=v1")
  expect_equal(correct, tdt_link(input))
})
