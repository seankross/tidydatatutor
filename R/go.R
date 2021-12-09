#' Send Code in the RStudio Editor to Tidy Data Tutor
#'
#' @importFrom rstudioapi verifyAvailable getSourceEditorContext
#' @importFrom utils browseURL
#' @returns A string with an appropriately formatted URL to Tidy Data Tutor
#' (invisibly).
#' @export
#' @examples
#' \dontrun{
#'
#' # Copy the following code into an open RStudio editor:
#'
#' library(dplyr)
#' library(palmerpenguins)
#'
#' penguins %>%
#'   select(species, bill_length_mm) %>%
#'   group_by(species) %>%
#'   arrange(desc(bill_length_mm), .by_group = TRUE) %>%
#'   slice(1)
#'
#' # Then run this in the console:
#'
#' tidydatatutor::go()
#' }
go <- function(){
  verifyAvailable()
  url_ <- tdt_url(getSourceEditorContext()[["contents"]])

  browseURL(url_)
  invisible(url_)
}

#' Send Code Selected in the RStudio Editor to Tidy Data Tutor
#'
#' @importFrom rstudioapi verifyAvailable getSourceEditorContext
#' @importFrom utils browseURL
#' @returns A string with an appropriately formatted URL to Tidy Data Tutor
#' (invisibly).
#' @export
#' @examples
#' \dontrun{
#'
#' # Select some pipeline code in the RStudio editor,
#' # then run this in the console:
#'
#' tidydatatutor::go_selection()
#' }
go_selection <- function(){
  verifyAvailable()
  url_ <- tdt_url(getSourceEditorContext()[["selection"]][[1]][["text"]])

  browseURL(url_)
  invisible(url_)
}

#' Send Code Copied to the Clipboard to Tidy Data Tutor
#'
#' @importFrom clipr clipr_available read_clip
#' @importFrom utils browseURL
#' @returns A string with an appropriately formatted URL to Tidy Data Tutor
#' (invisibly).
#' @export
#' @examples
#' \dontrun{
#'
#' # Copy the following code into the clipboard:
#'
#' library(dplyr)
#' library(palmerpenguins)
#'
#' penguins %>%
#'   select(species, bill_length_mm) %>%
#'   group_by(species) %>%
#'   arrange(desc(bill_length_mm), .by_group = TRUE) %>%
#'   slice(1)
#'
#' # Then run this in the console:
#'
#' tidydatatutor::go_paste()
#' }
go_paste <- function(){
  stopifnot(clipr_available())
  url_ <- tdt_url(read_clip())

  browseURL(url_)
  invisible(url_)
}

#' Send a Code String to Tidy Data Tutor
#'
#' @param code A string of R code.
#' @importFrom utils browseURL
#' @returns A string with an appropriately formatted URL to Tidy Data Tutor
#' (invisibly).
#' @export
#' @examples
#' \dontrun{
#'
#' code =
#' "library(dplyr)
#' library(palmerpenguins)
#'
#' penguins %>%
#'   select(species, bill_length_mm) %>%
#'   group_by(species) %>%
#'   arrange(desc(bill_length_mm), .by_group = TRUE) %>%
#'   slice(1)"
#'
#' tidydatatutor::go_code(code)
#' }
go_code <- function(code){
  url_ <- tdt_url(code)

  browseURL(url_)
  invisible(url_)
}
