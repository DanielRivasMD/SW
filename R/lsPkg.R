
#' @title Package lister
#'
#' @description List package contents
#' @param package   Package name
#' @param pattern   Specify if a pattern is to be searched
#' @param all_names Boolean. Default = F
#' @return Package contents
#' @examples lsPkg(stats)
#' @export

lsPkg <- function(package, all_names = FALSE, pattern) {
  package <- deparse(substitute(package))
  ls(pos = paste('package', package, sep = ':'), all.names = all_names, pattern = pattern)
}
