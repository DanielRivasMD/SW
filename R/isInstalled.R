
#' @title Installed package finder
#'
#' @description Query whether package is installed
#' @return Boolean
#' @importFrom SystWrapper lsInstalled
#' @examples isInstalled('SystWrapper')
#' @export

isInstalled <- function(pkg) {
  if ( pkg %in% SystWrapper::lsInstalled()[, 'Package'] ) {
    print(paste0('Package is installed: ', pkg))
  } else {
    print(paste0('Package is not installed: ', pkg))
  }
}
