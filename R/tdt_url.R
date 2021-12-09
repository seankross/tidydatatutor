#' @importFrom utils URLencode
tdt_url <- function(x){
  paste(
    "https://tidydatatutor.com/vis.html#code=",
    URLencode(paste(x, collapse = "\n"), reserved = TRUE),
    "&d=", as.character(Sys.Date()), "&lang=r&v=v1",
    sep = ""
  )
}

#' Create a Link to Tidy Data Tutor
#'
#' @param code A string or vector of strings containing R code.
#' @returns A string with an appropriately formatted URL to Tidy Data Tutor.
#' @export
#' @examples
#' \dontrun{
#'
#' code <- "library(dplyr)
#' Formaldehyde %>% mutate(Sum = carb + optden)"
#'
#' tdt_link(code)
#'}
tdt_link <- function(code) {
  tdt_url(code)
}

#' Create a Link to Tidy Data Tutor from an R Code Chunk
#'
#' @param chunk The name of an R code chunk in the current R Markdown document.
#' @importFrom knitr knit_code
#' @returns A string with an appropriately formatted URL to Tidy Data Tutor.
#' @export
#' @examples
#' \dontrun{
#'
#' <!--- In an R Markdown document: --->
#' ```{r mtcars-1}
#' library(dplyr)
#'
#' mtcars %>%
#'   select(mpg, cyl, hp) %>%
#'   group_by(cyl) %>%
#'   summarise(mean(hp))
#' ```
#'
#' [See this pipeline in Tidy Data Tutor](`r tdt_chunk("mtcars-1")`)
#'}
tdt_chunk <- function(chunk) {
  tdt_url(as.character(knit_code[["get"]](chunk)))
}

#' Create a Link to Tidy Data Tutor from an R Code File
#'
#' @param file The path to an R code file.
#' @returns A string with an appropriately formatted URL to Tidy Data Tutor.
#' @export
#' @examples
#' \dontrun{
#'
#' r_code_file <- system.file("test", "test-1.R", package = "tidydatatutor")
#' tdt_file(r_code_file)
#' }
tdt_file <- function(file) {
  stopifnot(file.exists(file))
  tdt_url(readLines(file))
}
