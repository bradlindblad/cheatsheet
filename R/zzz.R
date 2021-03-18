.onAttach <- function(libname, pkgname) {

  bsu_rule_color <- "#2c3e50"
  bsu_main_color <- "#1f78b4"

  # Check Theme: If Dark, Update Colors
  tryCatch({
    if (rstudioapi::isAvailable()) {
      theme <- rstudioapi::getThemeInfo()
      if (is.null(theme)) {
        bsu_rule_color <- "#2c3e50"
        bsu_main_color <- "#1f78b4"
      }
      if (theme$dark) {
        bsu_rule_color <- "#7FD2FF"
        bsu_main_color <- "#18bc9c"
      }
    }
  }, error = function(e) {
    bsu_rule_color <- "#2c3e50"
    bsu_main_color <- "#1f78b4"
  }, finally = {
    bsu_main <- crayon::make_style(bsu_main_color)

    msg <- paste0(
      cli::rule(left = "Welcome to {cheatsheet}!", col = bsu_rule_color, line = 2),
      bsu_main('\nDownload handy R cheat sheets to your local machine! Enter <?get_all_cheatsheets> to learn more. \n'),
      bsu_main('Or visit the homepage at https://bradlindblad.github.io/cheatsheet/')
    )

    packageStartupMessage(msg)
  })

}
