#' list_languages
#'
#' @description
#' View all the languages that can be pulled using `cheatsheet::get_translation()`
#'
#' @export
#'
#'
#' @returns
#' No return value; called for side effects.
#'
#' @examples
#' \dontrun{
#' list_languages()
#' }
#'
list_languages <- function() {

  translation <- c("chinese", "dutch", "french", "german",
                   "greek", "italian", "japanese", "korean",
                   "portuguese", "russian", "spanish", "turkish",
                   "ukranian", "uzbek", "vietnamese")
  cli::cli_h1("Languages available for get_translation()")
  cli::cli_li(translation)
  cli::cli_h3("Pass the language you choose above to get_translation(), like:")
  cli::cli_code("get_translation('~/Desktop/french', 'french')")

}
