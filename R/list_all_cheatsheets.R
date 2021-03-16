
#' list_all_cheatsheets
#'
#' @description
#' List all cheatsheets currently available from https://rstudio.com/resources/cheatsheets/
#'
#' @export
#'
#' @examples
#' \dontrun{
#' list_all_cheatsheets()
#' }
#'
list_all_cheatsheets <- function() {

  # if don't have cache, download them
  if(cache_exists()[1] == FALSE) {

    clone_cheats_to_cache()
    TEMP_PATH <- path.expand(create_cache_location(create = FALSE))

  # if have cache, then do main
  }else{

  TEMP_PATH <- path.expand(create_cache_location(create = FALSE))
  pdf_names <- dir(TEMP_PATH)
  pdf_names <- gsub(pattern = ".pdf", replacement = "", pdf_names)

  cli::cli_h1("All available cheatsheets:")
  cli::cli_li(pdf_names)



  }
}
