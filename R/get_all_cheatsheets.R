#' get_all_cheatsheets
#'
#' @description
#' Download all current cheat sheets as pdf files into your chosen directory
#'
#' @param local_path local file path to save the cheatsheets to - string
#' @param tidyverse_only only download tidyverse cheatsheets? - logical
#' @export
#' @note
#'  Downloads all pdf cheatsheets currently available as pdf from https://rstudio.com/resources/cheatsheets/
#'
#' @returns
#' No return value; called for side effects.
#'
#' @examples
#' \dontrun{
#' get_all_cheatsheets("~/user/Cheatsheets", tidyverse_only = FALSE)
#' }
#'
get_all_cheatsheets <- function(local_path = ".", tidyverse_only = FALSE) {


  TEMP_PATH <- paste0(local_path, "/git")

  clone_cheats_to_cache(TEMP_PATH)

  pdfs <- list.files(path = TEMP_PATH, pattern = "*.pdf", full.names = TRUE)

  if(tidyverse_only == TRUE) {
    tidy <- c(paste0(TEMP_PATH, "/", "data-visualization-2.1.pdf"),
              paste0(TEMP_PATH, "/", "data-import.pdf"),
              paste0(TEMP_PATH, "/", "data-transformation.pdf"),
              paste0(TEMP_PATH, "/", "factors.pdf"),
              paste0(TEMP_PATH, "/", "lubridate.pdf"),
              paste0(TEMP_PATH, "/", "purrr.pdf"),
              paste0(TEMP_PATH, "/", "tidyeval.pdf"),
              paste0(TEMP_PATH, "/", "strings.pdf")
    )

    pdfs <- pdfs[pdfs %in% tidy]

  }

  suppressMessages(
    purrr::map(pdfs, fs::file_copy, local_path)
  )

  fs::dir_delete(TEMP_PATH)
  cli::cli_alert_success("Added cheatsheets to {crayon::blue(local_path)}")
}
