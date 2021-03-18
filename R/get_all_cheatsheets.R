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
#' @examples
#' \dontrun{
#' get_all_cheatsheets("~/user/Cheatsheets")
#' }
#'
get_all_cheatsheets <- function(local_path = ".", tidyverse_only = FALSE) {

  TEMP_PATH <- paste0(local_path, "/git")

  clone_cheats_to_cache(TEMP_PATH)

  pdfs <- list.files(path = TEMP_PATH, pattern = "*.pdf", full.names = TRUE)

  if(tidyverse_only == TRUE) {
    tidy <- c("data-visualization-2.1.pdf", "data-import.pdf", "data-transformation.pdf", "factors.pdf", "lubridate.pdf", "purrr.pdf", "tidyeval.pdf", "strings.pdf")

    pdfs <- subset(pdfs, stringr::str_detect(pdfs, tidy))

  }

  suppressMessages(
    purrr::map(pdfs, fs::file_copy, local_path)
  )

  fs::dir_delete(TEMP_PATH)
  cli::cli_alert_success("Added cheatsheets to {crayon::blue(local_path)}")
}
