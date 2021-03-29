test_that("get_all_cheatsheets", {

  testthat::expect_error(get_all_cheatsheets(), NA)
  pdfs <- list.files(path = ".", pattern = "*.pdf", full.names = TRUE)
  purrr::map(pdfs, fs::file_delete)


})

test_that("get_all_cheatsheets_tidy", {

  testthat::expect_error(get_all_cheatsheets(tidyverse_only = TRUE), NA)
  pdfs <- list.files(path = ".", pattern = "*.pdf", full.names = TRUE)
  purrr::map(pdfs, fs::file_delete)


})

