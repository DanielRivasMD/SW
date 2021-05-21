
#' @title Package lister
#'
#' @description List package contents
#' @param fPackage   Package name
#' @param fPattern   Specify if a pattern is to be searched
#' @param fAll.names Boolean. Default = F
#' @return Package contents
#' @examples lsp(stats)
#' @export

lsp <- function(fPackage, fAll.names = FALSE, fPattern) {
  fPackage <- deparse(substitute(fPackage))
  ls(pos = paste("package", fPackage, sep = ":"), all.names = fAll.names, pattern = fPattern)
}
