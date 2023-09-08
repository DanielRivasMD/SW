####################################################################################################

#' Choose documentation viewer
#'
#' \code{doc}           Documentation viewer
#'
#' @param str           Viewer
#'
#' @return              Invisible
#'
#' @examples doc('Opera')
#'
#' @rdname doc
#' @export

####################################################################################################

doc <- function(str = NULL) {

  # open help in commnad line viewer
  if (is.null(str)) {
    options(help_type = '')
    options(browser = '/usr/local/bin/bat')

  # open help in Firefox
  } else if (str == 'firefox' | str == 'f' | str == 'Firefox' | str == 'F') {
    options(help_type = 'html')
    options(browser = '/usr/bin/open -a "/Applications/Firefox.app"')

  # open help in Opera
  } else if (str == 'opera' | str == 'o' | str == 'Opera' | str == 'O') {
    options(help_type = 'html')
    options(browser = '/usr/bin/open -a "/Applications/Opera.app"')

  # non-valid value
  } else {
    stop(paste0('`str`',  ' = ', str, '\n', 'This is invalid', '\n', 'View documentation for further information'))
  }

}

####################################################################################################
