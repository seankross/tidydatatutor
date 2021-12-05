tdt_url <- function(x){
  paste(
    "https://tidydatatutor.com/vis.html#code=",
    URLencode(paste(x, collapse = "\n"), reserved = TRUE),
    "&d=", as.character(Sys.Date()), "&lang=r&v=v1",
    sep = ""
  )
}
