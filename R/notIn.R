
#' @title Not in
#'
#' @description     Not in
#' @param x         Object to check
#' @param y         Object to check
#' @return          Invisible
#' @examples        10 %ni% 1:9
#' @export

'%ni%' <- function(x, y) {
  !('%in%'(x, y))
}
