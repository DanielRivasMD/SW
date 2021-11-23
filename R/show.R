
#' @title Show all rows
#'
#' @description Show all tibble rows
#' @param tbl_df Tibble to display
#' @return Invisible
#' @examples show(tibble::tibble(iris))
#' @export

show <- function(tbl_df) {
  print(tbl_df, n = nrow(tbl_df))
}
