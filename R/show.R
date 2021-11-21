
#' @title Show all rows
#'
#' @description Show all tibble rows
#' @return Invisible
#' @examples show(tibble(iris))
#' @export

show <- function(tbl_df) {
  print(tbl_df, n = nrow(tbl_df))
}
