
#' @title Installed packages lister
#'
#' @description List installed packages
#' @return List of packages
#' @importFrom utils installed.packages
#' @examples lsip()
#' @export

lsip <- function() {
  fIp <- as.data.frame(installed.packages()[,c(1,3:4)])
  rownames(fIp) <- NULL
  fIp <- fIp[is.na(fIp$Priority),1:2,drop=FALSE]
  print(fIp, row.names=FALSE)
}
