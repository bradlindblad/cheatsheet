#' get_cheatsheets
#'
#' @description
#' List all cheatsheet repositories
#'
#' @returns
#' Returns a list of providers in the cheatsheet url dataset
#'
#' @examples
#' \dontrun{
#' cheatsheet_providers()
#' }
#'
cheatsheet_providers <- function() {
  print(urls$Provider)
}
