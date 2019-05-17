# installed.packages('package_name', type = 'source', repos = NULL)

#----------------------------------------------------------------------------------------------------------------

#' @title Bioconductor's biocLite() sourcing wrapper
#'
#' @description Source bioconductor biocLite()
#' @return Invisible
#' @export
#' @examples bioc_wrap()

bioc_wrap <- function()
{
  source("https://bioconductor.org/biocLite.R")
}

#----------------------------------------------------------------------------------------------------------------

#' @title Package detacher
#'
#' @description Detaches specified packages
#' @param f_pkg Package name
#' @param f_char.only Package name handler
#' @return Invisible
#' @export
#' @examples det_pck("data.table")

det_pck <- function(f_pkg, f_char.only = FALSE)
{
  if(!f_char.only)
  {
    f_pkg <- deparse(substitute(f_pkg))
  }
  f_search_item <- paste("package", f_pkg, sep = ":")
  while(f_search_item %in% search())
  {
    detach(f_search_item, unload = TRUE, character.only = TRUE)
  }
}

#----------------------------------------------------------------------------------------------------------------

#' @title Package lister
#'
#' @description List package contents
#' @param f_package   Package name
#' @param f_pattern   Specify if a pattern is to be searched
#' @param f_all.names Boolean. Default = F
#' @return Package contents
#' @export
#' @examples lsp(stats)

lsp <- function(f_package, f_all.names = FALSE, f_pattern)
{
  f_package <- deparse(substitute(f_package))
  ls(pos = paste("package", f_package, sep = ":"), all.names = f_all.names, pattern = f_pattern)
}

#----------------------------------------------------------------------------------------------------------------

#' @title Methods lister
#'
#' @description List object methods
#' @param f_object Object to inquiry about
#' @return Object's methods
#' @importFrom utils methods
#' @export
#' @examples x <- 1:100; lsm(x)

lsm <- function(f_object)
{
  methods(class = class(f_object))
}

#-----------------------------------------------------------------------------------------------------------------

#' @title Installed packages lister
#'
#' @description List installed packages
#' @return List of packages
#' @importFrom utils installed.packages
#' @export
#' @examples lsip()

lsip <- function()
{
  f_ip <- as.data.frame(installed.packages()[,c(1,3:4)])
  rownames(f_ip) <- NULL
  f_ip <- f_ip[is.na(f_ip$Priority),1:2,drop=FALSE]
  print(f_ip, row.names=FALSE)
}

#-----------------------------------------------------------------------------------------------------------------

#' @title Screen wider
#'
#' @description Uses full screen on interactive R sessions
#' @param howWide Number of columns to widen the screen. Default system obtained measures for "full screen".
#' @return Invisible
#' @export
#' @examples wideScreen()

wideScreen <- function(howWide = NULL)
{
  if ( is.null(howWide) ){
        howWide <- Sys.getenv("COLUMNS")
  }
  options(width = as.integer(howWide))
}

#----------------------------------------------------------------------------------------------------------------

#' @title Error catcher
#'
#' @description Catches errors directly to stderr and continues execution.
#' 'capture.output' is used to get the output of 'try' expression, whereas 'try' itself is used to evaluate whether or not 'expression' works
#' @param f_expression Expression to be evaluated
#' @return Error
#' @importFrom utils capture.output
#' @export
#' @examples

err_catch <- function(f_expression=quote()){

	err <- capture.output(try(f_out <- eval(f_expression)), type = "message")
	if( length(err) > 0 ){
		write(err, stderr())
	}else{
		return(f_out)
	}
}

#----------------------------------------------------------------------------------------------------------------
