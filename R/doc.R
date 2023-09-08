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

doc <- function(str) {

  # open help in commnad line viewer
  if (str == '' | str == NULL) {
    options(help_type = '')
    options(browser = '/usr/local/bin/bat')

  # open help in Firefox
  } else if (str == 'firefox' | str == 'f') {
    options(help_type = 'html')
    options(browser = '/usr/bin/open -a "/Applications/Firefox.app"')

  # open help in Opera
  } else if (str == 'opera' | str == 'o') {
    options(help_type = 'html')
    options(browser = '/usr/bin/open -a "/Applications/Opera.app"')

  # non-valid value
  } else {
    stop(paste0('`str`',  ' = ', str, '\n', 'This is invalid', '\n', 'View documentation for further information'))
  }

}

####################################################################################################
