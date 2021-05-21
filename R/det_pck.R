
#' @title Package detacher
#'
#' @description Detaches specified packages
#' @param fPkg Package name
#' @param fChar.only Package name handler
#' @return Invisible
#' @examples detPck("data.table")
#' @export

detPck <- function(fPkg, fChar.only = FALSE) {
  if(!fChar.only)
  {
    fPkg <- deparse(substitute(fPkg))
  }
  fSearchItem <- paste("package", fPkg, sep = ":")
  while(fSearchItem %in% search())
  {
    detach(fSearchItem, unload = TRUE, character.only = TRUE)
  }
}
