
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cheatsheet

<img src='https://github.com/bradlindblad/cheatsheet/blob/main/fig/logo.png?raw=true' align="right" height="200" />

<!-- badges: start -->

[![R build
status](https://github.com/bradlindblad/cheatsheet/workflows/R-CMD-check/badge.svg)](https://github.com/bradlindblad/cheatsheet/actions)
[![Codecov test
coverage](https://codecov.io/gh/bradlindblad/cheatsheet/branch/main/graph/badge.svg)](https://codecov.io/gh/bradlindblad/cheatsheet?branch=main)
[![CRAN
status](https://www.r-pkg.org/badges/version/cheatsheet)](https://CRAN.R-project.org/package=cheatsheet)

<!-- badges: end -->

{cheatsheet} is a simple R package that downloads [helpful R
cheatsheets](https://www.rstudio.com/resources/cheatsheets/) from the
repository maintained by RStudio.

## Installation

You can install the released version of cheatsheet from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("cheatsheet")
```

## Usage

The main function here is `cheatsheet::get_all_cheatsheets`.

``` r
library(cheatsheet)
library(fs)

# Get all cheatsheets and place in a folder on your desktop
cheatsheet::get_all_cheatsheets(local_path = "cheats", tidyverse_only = FALSE)
fs::dir_ls("cheats")
```

``` r
# Just grab core tidyverse cheatsheets
cheatsheet::get_all_cheatsheets(local_path = "~/Desktop/cheats", tidyverse_only = TRUE)
```

## Foreign language support

{cheatsheet} also lets you download cheatsheets that have been
translated to over a dozen languages. Check which languages are
available with this command:

``` r
cheatsheet::list_languages()
#> 
#> ── Languages available for get_translation() ───────────────────────────────────
#> ● chinese
#> ● dutch
#> ● french
#> ● german
#> ● greek
#> ● italian
#> ● japanese
#> ● korean
#> ● portuguese
#> ● russian
#> ● spanish
#> ● turkish
#> ● ukranian
#> ● uzbek
#> ● vietnamese
#> 
#>   ── Pass the language you choose above to get_translation(), like:
#>   get_translation('~/Desktop/french', 'french')
```

Then, pass the language you want to this function:

``` r
cheatsheet::get_translation(local_path = "cheatsheet", language = "german")
```
