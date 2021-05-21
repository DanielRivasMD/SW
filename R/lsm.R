
#' @title Methods lister
#'
#' @description List object methods
#' @param fObject Object to inquiry about
#' @return Object's methods
#' @importFrom utils methods
#' @examples x <- 1:100; lsm(x)
#' @export

lsm <- function(fObject) {
  methods(class = class(fObject))
}
