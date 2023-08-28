####################################################################################################

#' Check for Installed packages
#'
#' \code{installed} - List installed packages
#'
#' @return              List of packages
#' @importFrom          utils installed.packages
#'
#' @examples installed()
#'
#' @rdname installed
#' @export

####################################################################################################

installed <- function() {
  installedPackages <- as.data.frame(installed.packages()[, c(1, 3:4)])
  rownames(installedPackages) <- NULL
  installedPackages <- installedPackages[is.na(installedPackages$Priority), 1:2, drop = FALSE]
  print(installedPackages, row.names = FALSE)
}

####################################################################################################
####################################################################################################

#' \code{isInstalled} - Query whether package(s) is installed
#'
#' @param pkg           Package name
#'
#' @return              Boolean
#'
#' @examples isInstalled('stats')
#'
#' @rdname installed
#' @export

####################################################################################################

isInstalled <- function(pkg) {
  if ( pkg %in% SystWrapper::installed()[, 'Package'] ) {
    print(paste0('Package is installed: ', pkg))
  } else {
    print(paste0('Package is not installed: ', pkg))
  }
}

####################################################################################################
