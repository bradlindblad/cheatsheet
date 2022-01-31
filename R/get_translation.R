#' get_translation
#'
#' @description
#' Download all current cheat sheets as pdf files into your chosen directory
#'
#' @param local_path local file path to save the cheatsheets to - string
#' @param language pick a language from the list obtained by running `cheatsheet::list_languages()`
#' @export
#'
#' @returns
#' No return value; called for side effects.
#'
#' @examples
#' \dontrun{
#' get_translation("~/user/Cheatsheets", language = "german")
#' }
#'
get_translation <- function(local_path = ".", language = NA) {

  # local_path = "~/Desktop/test"
  # language = "german"
  # tidyverse_only = T

  translation <- c("chinese", "dutch", "french", "german",
                   "greek", "italian", "japanese", "korean",
                   "portuguese", "russian", "spanish", "turkish",
                   "ukranian", "uzbek", "vietnamese")




  TEMP_PATH <- paste0(local_path, "/git")

  clone_cheats_to_cache(TEMP_PATH)

  pdfs <- list.files(path = paste0(TEMP_PATH, "/translations/", language), pattern = "*.pdf", full.names = TRUE)

  suppressMessages(
    purrr::map(pdfs, fs::file_copy, local_path)
  )

  fs::dir_delete(TEMP_PATH)
  cli::cli_alert_success("Added {language} cheatsheets to {crayon::blue(local_path)}")



}





