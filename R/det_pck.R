
#' @title Package detacher
#'
#' @description Detaches specified packages
#' @param f_pkg Package name
#' @param f_char.only Package name handler
#' @return Invisible
#' @export
#' @examples det_pck("data.table")

det_pck <- function(f_pkg, f_char.only = FALSE)
{
  if(!f_char.only)
  {
    f_pkg <- deparse(substitute(f_pkg))
  }
  f_search_item <- paste("package", f_pkg, sep = ":")
  while(f_search_item %in% search())
  {
    detach(f_search_item, unload = TRUE, character.only = TRUE)
  }
}
