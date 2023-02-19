
#' @title Installed package finder
#'
#' @description     Query whether package is installed
#' @param pkg       Package name
#' @return          Boolean
#' @examples        isInstalled('SystWrapper')
#' @export

isInstalled <- function(pkg) {
  if ( pkg %in% SystWrapper::lsInstalled()[, 'Package'] ) {
    print(paste0('Package is installed: ', pkg))
  } else {
    print(paste0('Package is not installed: ', pkg))
  }
}
