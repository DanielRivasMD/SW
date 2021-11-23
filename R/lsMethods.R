
#' @title Methods lister
#'
#' @description List object methods
#' @param object Object to inquiry about
#' @return Object's methods
#' @importFrom utils methods
#' @examples lsMethods(1:1000)
#' @export

lsMethods <- function(object) {
  methods(class = class(object))
}
