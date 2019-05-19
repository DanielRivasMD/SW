# installed.packages('package_name', type = 'source', repos = NULL)

#----------------------------------------------------------------------------------------------------------------

#' @title Error catcher
#'
#' @description Catches errors directly to stderr and continues execution.
#' 'capture.output' is used to get the output of 'try' expression, whereas 'try' itself is used to evaluate whether or not 'expression' works
#' @param f_expression Expression to be evaluated
#' @return Error
#' @importFrom utils capture.output
#' @export
#' @examples err_catch()

err_catch <- function(f_expression=quote()){

	err <- capture.output(try(f_out <- eval(f_expression)), type = "message")
	if( length(err) > 0 ){
		write(err, stderr())
	}else{
		return(f_out)
	}
}

#----------------------------------------------------------------------------------------------------------------
#
# Deprecated
# #' @title Bioconductor's biocLite() sourcing wrapper
# #'
# #' @description Source bioconductor biocLite()
# #' @return Invisible
# #' @export
# #' @examples bioc_wrap()
#
# bioc_wrap <- function()
# {
#   source("https://bioconductor.org/biocLite.R")
# }
#
#----------------------------------------------------------------------------------------------------------------
