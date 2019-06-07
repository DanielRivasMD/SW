
#' @title Package lister
#'
#' @description List package contents
#' @param f_package   Package name
#' @param f_pattern   Specify if a pattern is to be searched
#' @param f_all.names Boolean. Default = F
#' @return Package contents
#' @examples lsp(stats)
#' @export

lsp <- function(f_package, f_all.names = FALSE, f_pattern) {
	f_package <- deparse(substitute(f_package))
	ls(pos = paste("package", f_package, sep = ":"), all.names = f_all.names, pattern = f_pattern)
}
