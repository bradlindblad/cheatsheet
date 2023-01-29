
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cheatsheet <img src='https://github.com/bradlindblad/cheatsheet/blob/main/fig/logo.png?raw=true' align="right" width="120" />

<!-- badges: start -->

[![R build
status](https://github.com/bradlindblad/cheatsheet/workflows/R-CMD-check/badge.svg)](https://github.com/bradlindblad/cheatsheet/actions)
[![pkgdown](https://github.com/bradlindblad/cheatsheet/actions/workflows/pkgdown.yaml/badge.svg)](https://github.com/bradlindblad/cheatsheet/actions/workflows/pkgdown.yaml)
[![Codecov test
coverage](https://app.codecov.io/gh/bradlindblad/cheatsheet/branch/main/graph/badge.svg)](https://app.codecov.io/gh/bradlindblad/cheatsheet?branch=main)
[![metacran
downloads](https://cranlogs.r-pkg.org/badges/grand-total/cheatsheet)](https://cran.r-project.org/package=cheatsheet)
[![CRAN
status](https://www.r-pkg.org/badges/version/cheatsheet)](https://CRAN.R-project.org/package=cheatsheet)

<!-- badges: end -->

{cheatsheet} is a simple R package that downloads [helpful R
cheatsheets](https://posit.co/resources/cheatsheets/) from the
repository maintained by Posit You could easily just clone the repo
these are [hosted at](https://github.com/rstudio/cheatsheets) and filter
them how you wish; this package is just a shortcut and more useful for
people who aren’t familiar with git.

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

# 0-template.pdf
# Machine Learning Modelling in R.pdf
# SamplingStrata.pdf
# base-r.pdf
# bayesplot.pdf
# bcea.pdf
# caret.pdf
# cartography.pdf
# collapse.pdf
# data-import.pdf
# data-transformation.pdf
# data-visualization-2.1.pdf
# datatable.pdf
# declaredesign.pdf
# distr6.pdf
# estimatr.pdf
# eurostat.pdf
# factors.pdf
# gganimate.pdf
# golem.pdf
# gwasrapidd.pdf
# h2o.pdf
# how-big-is-your-graph.pdf
# imputeTS.pdf
# jfa.pdf
# keras.pdf
# labelled.pdf
# leaflet.pdf
# lubridate.pdf
# mlr.pdf
# mosaic.pdf
# nardl.pdf
# nimble.pdf
# oSCR.pdf
# overviewR.pdf
# package-development.pdf
# packagefinder.pdf
# parallel_computation.pdf
# plumber.pdf
# purrr.pdf
# quanteda.pdf
# randomizr.pdf
# regex.pdf
# reticulate.pdf
# rmarkdown-2.0.pdf
# rphylopic.pdf
# rstudio-ide.pdf
# sf.pdf
# shiny.pdf
# shiny_Spanish_final.pdf
# sjmisc.pdf
# sparklyr.pdf
# stata2r.pdf
# strings.pdf
# survminer.pdf
# syntax.pdf
# teachR.pdf
# tidyeval.pdf
# time-series.pdf
# tsbox.pdf
# vegan.pdf
# vtree.pdf
# xplain.pdf
```

``` r
# Just grab core tidyverse cheatsheets
cheatsheet::get_all_cheatsheets(local_path = "cheats", tidyverse_only = TRUE)

# data-import.pdf            data-transformation.pdf    
# data-visualization-2.1.pdf factors.pdf                
# lubridate.pdf              purrr.pdf                  
# strings.pdf                tidyeval.pdf 
```

## Foreign language support

{cheatsheet} also lets you download cheatsheets that have been
translated to over a dozen languages. Check which languages are
available with this command:

``` r
cheatsheet::list_languages()
#> 
#> ── Languages available for get_translation() ───────────────────────────────────
#> • chinese
#> • dutch
#> • french
#> • german
#> • greek
#> • italian
#> • japanese
#> • korean
#> • portuguese
#> • russian
#> • spanish
#> • turkish
#> • ukranian
#> • uzbek
#> • vietnamese
#> 
#> ── Pass the language you choose above to get_translation(), like:
#> get_translation('~/Desktop/french', 'french')
```

Then, pass the language you want to this function:

``` r
cheatsheet::get_translation(local_path = "cheats", language = "german")

# base-r_de.pdf
# data-transformation-cheatsheet_de.pdf
# data-wrangling-german.pdf
# devtools-german.pdf
# ggplot2-german.pdf
# rmarkdown-cheatsheet-2.0-german.pdf
# shiny-german.pdf
# sparklyr-cheatsheet_de.pdf
```

If anyone has another known and established stash of cheatsheets that
would be helpful for this package, please submit an
[issue](https://github.com/bradlindblad/cheatsheet/issues) or pull
request.
