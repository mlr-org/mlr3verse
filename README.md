
# mlr3verse

Package website: [release](https://mlr3.mlr-org.com/) | [dev](https://mlr3.mlr-org.com/dev)

Meta-package for installing/loading core [mlr3 packages](https://github.com/mlr-org/mlr3/wiki/Extension-Packages).

[![CRAN status](https://www.r-pkg.org/badges/version/mlr3verse)](https://cran.r-project.org/package=mlr3verse)
[![StackOverflow](https://img.shields.io/badge/stackoverflow-mlr3-orange.svg)](https://stackoverflow.com/questions/tagged/mlr3)
[![Dependencies](https://tinyverse.netlify.com/badge/mlr3verse)](https://cran.r-project.org/package=mlr3verse)

## Overview

This package is intended to simplify both installation and loading of packages from the mlr3 ecosystem.

## Installation

``` r
# From CRAN (not yet possible):
install.packages("mlr3verse")

# From Github:
remotes::install_github("mlr-org/mlr3verse")
```

## Batteries included

The following packages are attached by this meta package:

| Name          | Title                                                        | URL                                 |
| :------------ | :----------------------------------------------------------- | :---------------------------------- |
| mlr3          | Machine Learning in R - Next Generation                      | <https://mlr3.mlr-org.com>          |
| mlr3db        | Data Base Backend for ‘mlr3’                                 | <https:///mlr3db.mlr-org.com>       |
| mlr3filters   | Filter Based Feature Selection for ‘mlr3’                    | <https://mlr3filters.mlr-org.com>   |
| mlr3learners  | Recommended Learners for ‘mlr3’                              | <https://mlr3learners.mlr-org.com>  |
| mlr3pipelines | Preprocessing Operators and Pipelines for ‘mlr3’             | <https://mlr3pipelines.mlr-org.com> |
| mlr3tuning    | Tuning for ‘mlr3’                                            | <https://mlr3tuning.mlr-org.com>    |
| paradox       | Define and Work with Parameter Spaces for Complex Algorithms | <https://paradox.mlr-org.com>       |


By loading the `mlr3verse` package, you are all set to deal with most regression and classification tasks.
More packages, e.g. for survival analysis, are available on CRAN/GitHub, and may be included in this meta package in the future:

<a href="https://raw.githubusercontent.com/mlr-org/mlr3/master/man/figures/mlr3verse.svg?sanitize=true"><img src="https://raw.githubusercontent.com/mlr-org/mlr3/master/man/figures/mlr3verse.svg?sanitize=true" /></a>
