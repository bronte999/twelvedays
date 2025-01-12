#' Puts the various parts of speech together into a full phrase.
#'
#' @param num An integer
#' @param num_word A string corresponding to the integer
#' @param item A string
#' @param verb A string
#' @param adjective A string
#' @param location A string
#'
#' @return A string containing the words in grammatical order.
#'
#' @import stringr
#' @import glue
#' @import dplyr
#' @import purrr
#'
#' @export




make_phrase <- function(num, num_word, item, verb="", adjective="", location=""){

  verb <- str_replace_na(verb, "")
  adjective <- str_replace_na(adjective, "")
  location <- str_replace_na(location, "")

  if(num == "one"){
    if(str_detect(item, "^[aeio]")==TRUE){num_word='an'}
    else{num_word='a'}}


  phrase <- str_c(num_word, adjective, item, verb, location, sep=" ") %>%
    str_replace_all( "  ", " ") %>%
    str_replace_all(" $", "")
  return(phrase)
}
