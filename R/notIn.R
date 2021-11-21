
#' @title Not in
#'
#' @description Not in
#' @return Invisible
#' @examples 10 %!in% 1:9
#' @export

'%!in%' <- function(x, y) {
  !('%in%'(x, y))
}
