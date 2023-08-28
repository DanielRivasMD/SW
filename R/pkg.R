####################################################################################################

#' Check for Package contents
#'
#' \code{lsMethods}     List object methods
#'
#' @param obj           Object to inquiry about
#'
#' @importFrom          utils methods
#' @return              Object's methods
#'
#' @examples lsMethods(1:1000)
#'
#' @rdname pkg
#' @export


####################################################################################################

lsMethods <- function(obj) {
  methods(class = class(obj))
}

####################################################################################################
####################################################################################################

#' \code{lsPkg}         List package contents
#'
#' @param pkg           Package name
#' @param pattern       Specify if a pattern is to be searched
#' @param all_names     Boolean. Default = FALSE
#'
#' @return              Package contents
#'
#' @examples lsPkg(stats)
#'
#' @rdname pkg
#' @export

####################################################################################################

lsPkg <- function(pkg, all_names = FALSE, pattern) {
  pkg <- deparse(substitute(pkg))
  ls(pos = paste('package', pkg, sep = ':'), all.names = all_names, pattern = pattern)
}

####################################################################################################
