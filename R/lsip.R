
#' @title Installed packages lister
#'
#' @description List installed packages
#' @return List of packages
#' @importFrom utils installed.packages
#' @examples lsip()
#' @export

lsip <- function() {
	f_ip <- as.data.frame(installed.packages()[,c(1,3:4)])
	rownames(f_ip) <- NULL
	f_ip <- f_ip[is.na(f_ip$Priority),1:2,drop=FALSE]
	print(f_ip, row.names=FALSE)
}
