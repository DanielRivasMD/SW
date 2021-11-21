
#' @title Methods lister
#'
#' @description List object methods
#' @param object Object to inquiry about
#' @return Object's methods
#' @importFrom utils methods
#' @examples x <- 1:100; lsMethods(x)
#' @export

lsMethods <- function(object) {
  methods(class = class(object))
}
