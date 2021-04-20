#' get_all_cheatsheets
#'
#' @description
#' Download all current cheat sheets as pdf files into your chosen directory
#'
#' @param local_path local file path to save the cheatsheets to - string
#' @param tidyverse_only only download tidyverse cheatsheets? - logical
#' @param providers select particular provider? Defaults to "All" - logical
#' @param documented provide a table of cheatsheets and providers? - logical
#' @export
#' @note
#'  Downloads all pdf cheatsheets available as pdf from providers in url dataset
#'
#' @returns
#' Conditionally returns a table of cheatsheets; called for side effects.
#'
#' @examples
#' \dontrun{
#' get_all_cheatsheets("~/user/Cheatsheets", tidyverse_only = FALSE)
#' }
#'
get_all_cheatsheets <- function(local_path = ".", providers = "All",tidyverse_only = FALSE, documented = FALSE) {

  # cheatsheet::urls %>% purrr::map(get_cheatsheets,
  #                             provider = urls$Provider,
  #                             url = urls$url,
  #                             tidyverse_only = tidyverse_only,
  #                             documented = documented)

  #apply(urls, MARGIN = 1,FUN = get_cheatsheets,)
  if(providers == "All") {
    links <- cheatsheet::urls
  }
  else {
    links <- cheatsheet::urls[cheatsheet::urls$Provider %in% providers,]
  }

  cheatsheet_list <- data.frame()

  for(link in 1:nrow(links)){
    cheatsheet <- get_cheatsheets(local_path = local_path, tidyverse_only = tidyverse_only, provider = links$Provider[link], url = links$url[link], documented = documented)

    if(documented == TRUE) {
      cheatsheet_list <- rbind(cheatsheet_list, cheatsheet)
      assign(x = "cheatsheet_list", value = cheatsheet_list, envir = .GlobalEnv)
    }
  }


}


