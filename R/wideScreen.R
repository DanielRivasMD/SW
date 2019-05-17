
#' @title Screen wider
#'
#' @description Uses full screen on interactive R sessions
#' @param howWide Number of columns to widen the screen. Default system obtained measures for "full screen".
#' @return Invisible
#' @export
#' @examples wideScreen()

wideScreen <- function(howWide = NULL)
{
  if ( is.null(howWide) ){
        howWide <- Sys.getenv("COLUMNS")
  }
  options(width = as.integer(howWide))
}
