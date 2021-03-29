test_that("get_translation", {

  testthat::expect_error(get_translation(local_path = ".", language = "german"), NA)
  pdfs <- list.files(path = ".", pattern = "*.pdf", full.names = TRUE)
  purrr::map(pdfs, fs::file_delete)


})
