
<!-- README.md is generated from README.Rmd. Please edit that file -->

Package website: [release](https://mlr3verse.mlr-org.com/) |
[dev](https://mlr3verse.mlr-org.com/dev/)

Meta-package for installing and using core [mlr3
packages](https://github.com/mlr-org/mlr3/wiki/Extension-Packages).

# mlr3verse

<!-- badges: start -->

[![r-cmd-check](https://github.com/mlr-org/mlr3verse/actions/workflows/r-cmd-check.yml/badge.svg)](https://github.com/mlr-org/mlr3verse/actions/workflows/r-cmd-check.yml)
[![CRAN
Status](https://www.r-pkg.org/badges/version-ago/mlr3verse)](https://cran.r-project.org/package=mlr3verse)
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

| Name             | Title                                      | URL                                    |
| :--------------- | :----------------------------------------- | :------------------------------------- |
| mlr3             | Machine Learning in R - Next Generation    | <https://mlr3.mlr-org.com>             |
| mlr3cluster      | Unsupervised Clustering                    | <https://mlr3cluster.mlr-org.com>      |
| mlr3data         | Additional data sets and tasks             | <https://mlr3data.mlr-org.com>         |
| mlr3filters      | Filter Based Feature Selection             | <https://mlr3filters.mlr-org.com>      |
| mlr3fselect      | Wrapper Based Feature Selection            | <https://mlr3fselect.mlr-org.com>      |
| mlr3learners     | Recommended Learners                       | <https://mlr3learners.mlr-org.com>     |
| mlr3pipelines    | Preprocessing Operators and Pipelines      | <https://mlr3pipelines.mlr-org.com>    |
| mlr3tuning       | Hyperparameter Tuning                      | <https://mlr3tuning.mlr-org.com>       |
| mlr3tuningspaces | Collection of Hyperparameter Tuning Spaces | <https://mlr3tuningspaces.mlr-org.com> |
| mlr3viz          | Visualizations                             | <https://mlr3viz.mlr-org.com>          |
| paradox          | Parameter Spaces                           | <https://paradox.mlr-org.com>          |

By loading the `mlr3verse` package, you are all set to deal with most
regression, classification, cluster and survival tasks:

``` r
library("mlr3verse")
#> Loading required package: mlr3
```

If you want to get more detailed information about the loaded packages,
you can call `mlr3verse_info()`:

``` r
mlr3verse_info()
```

More [extension
packages](https://github.com/mlr-org/mlr3/wiki/Extension-Packages) are
available on CRAN/GitHub, and may be included in this meta package in
the future.

<a href="https://raw.githubusercontent.com/mlr-org/mlr3/master/man/figures/mlr3verse.svg?sanitize=true"><img src="https://raw.githubusercontent.com/mlr-org/mlr3/master/man/figures/mlr3verse.svg?sanitize=true" /></a>
