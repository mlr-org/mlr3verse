
<!-- README.md is generated from README.Rmd. Please edit that file -->

Package website: [release](https://mlr3verse.mlr-org.com/) \|
[dev](https://mlr3verse.mlr-org.com/dev/)

Meta-package for installing and using core [mlr3
packages](https://github.com/mlr-org/mlr3/wiki/Extension-Packages).

# mlr3verse

<!-- badges: start -->

[![tic](https://github.com/mlr-org/mlr3verse/workflows/tic/badge.svg?branch=master)](https://github.com/mlr-org/mlr3verse/actions)
[![Cran
Status](https://cranchecks.info/badges/worst/mlr3verse)](https://cran.r-project.org/web/checks/check_results_mlr3verse.html)
[![StackOverflow](https://img.shields.io/badge/stackoverflow-mlr3-orange.svg)](https://stackoverflow.com/questions/tagged/mlr3)
[![Mattermost](https://img.shields.io/badge/chat-mattermost-orange.svg)](https://lmmisld-lmu-stats-slds.srv.mwn.de/mlr_invite/)
<!-- badges: end -->

## Overview

This package is intended to simplify both installation and loading of
packages from the mlr3 ecosystem. Instead of depending on the extension
packages, functions required for data analysis are re-exported,
providing a thin view on the most important functionality of the mlr3
ecosystem.

## Installation

``` r
# From CRAN:
install.packages("mlr3verse")

# From Github:
remotes::install_github("mlr-org/mlr3verse")
```

## Batteries included

Functions and objects from The following packages are imported by this
meta package:

| Name          | Title                                        | URL                                 |
|:--------------|:---------------------------------------------|:------------------------------------|
| mlr3          | Machine Learning in R - Next Generation      | <https://mlr3.mlr-org.com>          |
| mlr3cluster   | Unsupervised Clustering                      | <https://mlr3cluster.mlr-org.com>   |
| mlr3data      | Additional data sets and tasks               | <https://mlr3data.mlr-org.com>      |
| mlr3filters   | Filter Based Feature Selection               | <https://mlr3filters.mlr-org.com>   |
| mlr3fselect   | Wrapper Based Feature Selection              | <https://mlr3fselect.mlr-org.com>   |
| mlr3learners  | Recommended Learners                         | <https://mlr3learners.mlr-org.com>  |
| mlr3pipelines | Preprocessing Operators and Pipelines        | <https://mlr3pipelines.mlr-org.com> |
| mlr3proba     | Probalistic Regression and Survival Analysis | <https://mlr3proba.mlr-org.com>     |
| mlr3tuning    | Hyperparameter Tuning                        | <https://mlr3tuning.mlr-org.com>    |
| mlr3viz       | Visualizations                               | <https://mlr3viz.mlr-org.com>       |
| paradox       | Parameter Spaces                             | <https://paradox.mlr-org.com>       |

By loading the `mlr3verse` package, you are all set to deal with most
regression, classification, cluster and survival tasks:

``` r
library("mlr3verse")
```

If you want to get more detailed information about the loaded packages,
you can call `mlr3verse_info()`:

``` r
mlr3verse_info()
#>           package    version
#>  1:         bbotk 0.3.0.9000
#>  2:          mlr3 0.9.0.9000
#>  3:   mlr3cluster      0.1.1
#>  4:      mlr3data      0.3.0
#>  5:   mlr3filters      0.4.0
#>  6:   mlr3fselect 0.4.1.9000
#>  7:  mlr3learners      0.4.3
#>  8:      mlr3misc      0.7.0
#>  9: mlr3pipelines      0.3.2
#> 10:     mlr3proba 0.2.6.9000
#> 11:    mlr3tuning 0.5.0.9000
#> 12:       mlr3viz      0.5.0
#> 13:       paradox      0.7.0
```

More [extension
packages](https://github.com/mlr-org/mlr3/wiki/Extension-Packages) are
available on CRAN/GitHub, and may be included in this meta package in
the future.

<a href="https://raw.githubusercontent.com/mlr-org/mlr3/master/man/figures/mlr3verse.svg?sanitize=true"><img src="https://raw.githubusercontent.com/mlr-org/mlr3/master/man/figures/mlr3verse.svg?sanitize=true" /></a>
