
<!-- README.md is generated from README.Rmd. Please edit that file -->

Package website: [release](https://mlr3verse.mlr-org.com/) \|
[dev](https://mlr3verse.mlr-org.com/dev)

Meta-package for installing/loading core [mlr3
packages](https://github.com/mlr-org/mlr3/wiki/Extension-Packages).

mlr3verse
=========

<!-- badges: start -->

[![tic](https://github.com/mlr-org/mlr3verse/workflows/tic/badge.svg?branch=master)](https://github.com/mlr-org/mlr3verse/actions)
[![Cran
Status](https://cranchecks.info/badges/worst/mlr3verse)](https://cran.r-project.org/web/checks/check_results_mlr3verse.html)
[![StackOverflow](https://img.shields.io/badge/stackoverflow-mlr3-orange.svg)](https://stackoverflow.com/questions/tagged/mlr3)
[![Mattermost](https://img.shields.io/badge/chat-mattermost-orange.svg)](https://lmmisld-lmu-stats-slds.srv.mwn.de/mlr_invite/)
<!-- badges: end -->

Overview
--------

This package is intended to simplify both installation and loading of
packages from the mlr3 ecosystem.

Installation
------------

    # From CRAN:
    install.packages("mlr3verse")

    # From Github:
    remotes::install_github("mlr-org/mlr3verse")

Batteries included
------------------

The following packages are attached by this meta package:

| Name          | Title                                                        | URL                                                                                           |
|:--------------|:-------------------------------------------------------------|:----------------------------------------------------------------------------------------------|
| mlr3          | Machine Learning in R - Next Generation                      | <a href="https://mlr3.mlr-org.com" class="uri">https://mlr3.mlr-org.com</a>                   |
| mlr3filters   | Filter Based Feature Selection for ‘mlr3’                    | <a href="https://mlr3filters.mlr-org.com" class="uri">https://mlr3filters.mlr-org.com</a>     |
| mlr3learners  | Recommended Learners for ‘mlr3’                              | <a href="https://mlr3learners.mlr-org.com" class="uri">https://mlr3learners.mlr-org.com</a>   |
| mlr3pipelines | Preprocessing Operators and Pipelines for ‘mlr3’             | <a href="https://mlr3pipelines.mlr-org.com" class="uri">https://mlr3pipelines.mlr-org.com</a> |
| mlr3tuning    | Tuning for ‘mlr3’                                            | <a href="https://mlr3tuning.mlr-org.com" class="uri">https://mlr3tuning.mlr-org.com</a>       |
| mlr3viz       | Visualizations for ‘mlr3’                                    | <a href="https://mlr3viz.mlr-org.com" class="uri">https://mlr3viz.mlr-org.com</a>             |
| paradox       | Define and Work with Parameter Spaces for Complex Algorithms | <a href="https://paradox.mlr-org.com" class="uri">https://paradox.mlr-org.com</a>             |

By loading the `mlr3verse` package, you are all set to deal with most
regression and classification tasks:

    library("mlr3verse")
    #> Loading required package: mlr3
    #> Loading required package: mlr3filters
    #> Loading required package: mlr3learners
    #> Loading required package: mlr3pipelines
    #> Loading required package: mlr3tuning
    #> Loading required package: mlr3viz
    #> Loading required package: paradox

If you want to get more detailed information about the loaded packages,
you can call `mlr3verse_info()`:

    mlr3verse_info()
    #>         Package    Version
    #> 1          mlr3      0.7.0
    #> 2    mlr3tuning 0.3.0.9000
    #> 3 mlr3pipelines      0.3.0
    #> 4       paradox      0.4.0
    #> 5   mlr3filters      0.3.0
    #> 6      mlr3data      0.2.0
    #> 7  mlr3learners      0.4.0
    #> 8       mlr3viz      0.3.0

More extension packages are available on CRAN/GitHub, and may be
included in this meta package in the future.

<a href="https://raw.githubusercontent.com/mlr-org/mlr3/master/man/figures/mlr3verse.svg?sanitize=true"><img src="https://raw.githubusercontent.com/mlr-org/mlr3/master/man/figures/mlr3verse.svg?sanitize=true" /></a>
