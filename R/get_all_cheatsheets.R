#' get_all_cheatsheets
#'
#' @description
#' Download all current cheat sheets as pdf files into your chosen directory
#'
#' @param local_path local file path to save the cheatsheets to - string
#' @export
#' @note
#'  Downloads all pdf cheatsheets currently available as pdf from https://rstudio.com/resources/cheatsheets/
#'
#' @examples
#' \dontrun{
#' get_all_cheatsheets("~/user/Cheatsheets")
#' }
#'
get_all_cheatsheets <- function(local_path = ".") {
  url <- "https://github.com/rstudio/cheatsheets"

  TEMP_PATH <- paste0(local_path, "/git")

  cli::cli_alert_success("Grabbing cheatsheets from {crayon::blue('https://rstudio.com/resources/cheatsheets/')}")
  Sys.sleep(3)

  cli::cli_alert_info("This may take 30 seconds or more...")
  suppressWarnings(
    git2r::clone(url = url, local_path = TEMP_PATH, progress = FALSE)
  )
  pdfs <- list.files(path = TEMP_PATH, pattern = "*.pdf", full.names = TRUE)

  suppressMessages(
    purrr::map(pdfs, fs::file_copy, local_path)
  )

  fs::file_delete(paste0(local_path, "/0-template.pdf"))
  fs::dir_delete(TEMP_PATH)
  cli::cli_alert_success("Added cheatsheets to {crayon::blue(local_path)}")
}
