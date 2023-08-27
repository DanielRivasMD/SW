####################################################################################################

#' Check for Loaded Packages
#'
#' \code{loaded} - Output is a character string of loaded packages.
#'
#' @param all           logical. If \code{TRUE} will show all packages including base install; \code{FALSE} will show all packages excluding base install packages that install when R loads.
#' @param char          Character vector containing packages to load. If you are calling \code{loaded} from within a function (or just having difficulties calling it  using a character vector input) then pass your character vector of packages to load to this parameter directly.
#' @param char_only     logical. If \code{TRUE} then \code{loaded} will only accept a single input which is a character vector containing the names of packages to load.
#' @param \ldots        Optional package names.  Adding package names will check their individual load status.
#'
#' @return              List of packages
#' @examples            loaded()
#'
#' @rdname loaded
#' @export

####################################################################################################

loaded <- function(..., all = FALSE, char, char_only = FALSE) {
  if ( !missing(char) ) {
    packs <- char
  } else if ( char_only ) {
    packs <- eval(match.call()[[2]])
  } else {
    packs <- tryCatch(as.character(match.call(expand.dots = FALSE)[[2]]), error=function(err) NA)
  }

  if ( is.logical(packs) ) {
    packs <- NA
  }

  ## check if all = TRUE & supply `.packages` or `sessionInfo`
  if ( all ) {
    loaded <- .packages()
  } else {
    loaded <- names(utils::sessionInfo()[["otherPkgs"]])
  }

  if ( !all && (length(packs) > 1 || !is.na(packs)) ) {
    packs <- as.character(packs)

    # output <- packs %in% loaded
    output <- packs %in% .packages() # make sure we can detect any loaded package
    names(output) <- packs
    return(output)
  } else {
    return(loaded)
  }
}

####################################################################################################
####################################################################################################

#' Check for Loaded Packages
#'
#' \code{isLoaded} - Query whether package(s) is loaded.
#'
#' @return              Boolean
#' @examples            isLoaded('stats')
#'
#' @rdname loaded
#' @export

####################################################################################################

isLoaded <- function(...) {
  x <- substitute(...())
  loaded(char = sapply(x, as.character))
}

####################################################################################################
