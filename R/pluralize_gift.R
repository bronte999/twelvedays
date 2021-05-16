#' Takes a noun and makes it plural
#'
#' @param gift A string or vector of strings
#'
#' @return A string or vector of strings with the pluralized words
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
pluralize_gift <- function(gift){

gift <- gift %>%
  paste("s", sep="") %>%
  str_replace("ys$", "ies") %>%
  str_replace("oo", "ee")

return(gift)

}
