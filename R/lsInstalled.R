
#' @title Installed packages lister
#'
#' @description List installed packages
#' @return List of packages
#' @importFrom utils installed.packages
#' @examples lsInstalled()
#' @export

lsInstalled <- function() {
  installedPackages <- as.data.frame(installed.packages()[, c(1, 3:4)])
  rownames(installedPackages) <- NULL
  installedPackages <- installedPackages[is.na(installedPackages$Priority), 1:2, drop = FALSE]
  print(installedPackages, row.names = FALSE)
}
