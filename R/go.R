#' Send Code in Source Editor to Tidy Data Tutor
#'
#' @importFrom rstudioapi verifyAvailable getSourceEditorContext
#' @importFrom utils URLencode browseURL
#' @export
go <- function(){
  verifyAvailable()
  url_ <- tdt_url(getSourceEditorContext()[["contents"]])

  browseURL(url_)
  invisible(url_)
}

#' Send Code in Source Editor to Tidy Data Tutor
#'
#' @importFrom rstudioapi verifyAvailable getSourceEditorContext
#' @importFrom utils URLencode browseURL
#' @export
go_selection <- function(){
  verifyAvailable()
  url_ <- tdt_url(getSourceEditorContext()[["selection"]][[1]][["text"]])

  browseURL(url_)
  invisible(url_)
}

#' Send Code in Clipboard to Tidy Data Tutor
#'
#' @importFrom clipr clipr_available read_clip
#' @importFrom utils URLencode browseURL
#' @export
go_paste <- function(){
  stopifnot(clipr_available())
  url_ <- tdt_url(read_clip())

  browseURL(url_)
  invisible(url_)
}

