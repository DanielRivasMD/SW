####################################################################################################

#' Change Display options
#'
#' \code{show}          Show all tibble rows
#'
#' @param tbl_df        Tibble to display
#'
#' @return              Invisible
#' @examples            show(tibble::tibble(iris))
#'
#' @rdname display
#' @export

####################################################################################################

show <- function(tbl_df) {
  print(tbl_df, n = nrow(tbl_df))
}

####################################################################################################
####################################################################################################

#' \code{wideScreen}    Use full screen on interactive R sessions
#'
#' @param howWide       Number of columns to widen the screen. Default system obtained measures for "full screen".
#'
#' @return              Invisible
#' @examples            wideScreen()
#'
#' @rdname display
#' @export

####################################################################################################

wideScreen <- function(howWide = NULL) {
  if ( is.null(howWide) ){
    howWide <- Sys.getenv('COLUMNS')
  }
  if ( howWide == '' ) howWide <- getOption('width')
  options(width = as.integer(howWide))
}

####################################################################################################
