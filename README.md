# mlr3verse

Package website: [release](https://mlr3.mlr-org.com/) | [dev](https://mlr3.mlr-org.com/dev)

Meta-package for installing/updating [mlr3* packages](https://github.com/mlr-org/mlr3/wiki/Extension-Packages).

[![CRAN status](https://www.r-pkg.org/badges/version/mlr3verse)](https://cran.r-project.org/package=mlr3verse)
[![Build Status](https://img.shields.io/travis/mlr-org/mlr3verse/master?label=Linux&logo=travis&style=flat-square)](https://travis-ci.org/mlr-org/mlr3verse)
[![codecov](https://codecov.io/gh/mlr-org/mlr3verse/branch/master/graph/badge.svg)](https://codecov.io/gh/mlr-org/mlr3verse)
[![StackOverflow](https://img.shields.io/badge/stackoverflow-mlr3-orange.svg)](https://stackoverflow.com/questions/tagged/mlr3)
[![Dependencies](https://tinyverse.netlify.com/badge/mlr3verse)](https://cran.r-project.org/package=mlr3verse)

## Overview

The _mlr3verse_ is a set of packages that work in harmony because they share common data representations and API design (similar to the [tidyverse](https://tidyverse.tidyverse.org/) but with differing principles). 
The **mlr3verse** package is designed to make it easy to install and load core packages
from the **mlr3verse** in a single command.

## Installation

``` r
remotes::install_github("mlr-org/mlr3verse")
```

## Usage

`mlr3verse` includes the following set of packages:

  - [mlr3](https://mlr3.mlr-org.com/): The core package.
  - [paradox](https://paradox.mlr-org.com/): Parameter specifications.
  - [mlr3learners](https://mlr3learners.mlr-org.com/): The core learners.
  - [mlr3tuning](https://mlr3tuning.mlr-org.com/): Tuning support.
  - [mlr3filters](https://mlr3filters.mlr-org.com/): Filter-based feature selection support.
  - [mlr3fselect](https://mlr3fselect.mlr-org.com/): Wrapper-based feature selection support.
  - [mlr3pipelines](https://mlr3pipelines.mlr-org.com/): Pipeline integration for all packages.
  - [mlr3viz](https://mlr3viz.mlr-org.com/): Plotting support.
  - [mlr3db](https://mlr3db.mlr-org.com/): Database support.
  - [mlr3ordinal](https://mlr3ordinal.mlr-org.com/): Support for ordinal data.
  - [mlr3survival](https://mlr3survival.mlr-org.com/): Support for survival data.
  - [mlr3spatiotempcv](https://mlr3spatiotempcv.mlr-org.com/): Spatio-temporal resampling methods.

You can check that all _mlr3verse_ packages are up-to-date with
`mlr3verse_update()`

## Loading

If you call `library("mlr3verse")` the following core packages will be loaded:

- mlr3
- mlr3pipelines
- mlr3learners
- paradox
- mlr3tuning
