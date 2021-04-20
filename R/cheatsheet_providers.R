#' cheatsheet_providers
#'
#' @description
#' List all cheatsheet providers
#'
#' @export
#' @note
#'  List all cheatsheet providers
#'
#' @returns
#' No return value; called for side effects.
#'
#' @examples
#' \dontrun{
#' cheatsheet_providers())
#' }
#'
cheatsheet_providers <- function() {
  print(cheatsheet::urls$Provider)
}
