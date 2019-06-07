
#' @title Methods lister
#'
#' @description List object methods
#' @param f_object Object to inquiry about
#' @return Object's methods
#' @importFrom utils methods
#' @examples x <- 1:100; lsm(x)
#' @export

lsm <- function(f_object) {
	methods(class = class(f_object))
}
