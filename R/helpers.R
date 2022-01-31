#
#
#
# create_cache_location <- function(create = TRUE) {
#
#   BASE <- rappdirs::user_data_dir("CHEATSHEETS_DATA")
#   DATA_CACHE_LOC <- BASE
#
#   if(create) fs::dir_create(DATA_CACHE_LOC)
#
#   return(DATA_CACHE_LOC)
#
# }
#
#
# cache_exists <- function() {
#
#   # what should the cache location be?
#   should_be <- create_cache_location(create = FALSE)
#
#   if(fs::dir_exists(should_be)) {
#     return(c(TRUE, should_be))
#   }else{return(c(FALSE, FALSE))}
#
#
# }


clone_cheats_to_cache <- function(TEMP_PATH) {

  # TEMP_PATH <- path.expand(create_cache_location())

  # url <- "https://github.com/bradlindblad/foo"
  url <- "https://github.com/rstudio/cheatsheets"

  cli::cli_alert_success("Grabbing cheatsheets from {crayon::blue('https://rstudio.com/resources/cheatsheets/')}")
  Sys.sleep(3)

  cli::cli_alert_info("This may take 30 seconds or more...")

  suppressMessages(
    git2r::clone(url = url, local_path = path.expand(TEMP_PATH), progress = FALSE)
  )


}
