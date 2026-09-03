
<!-- README.md is generated from README.Rmd. Please edit that file -->

Package website: [release](https://mlr3verse.mlr-org.com/) \|
[dev](https://mlr3verse.mlr-org.com/dev/)

Meta-package for installing and using core [mlr3
packages](https://mlr-org.com/ecosystem.html).

# mlr3verse

<!-- badges: start -->

[![r-cmd-check](https://github.com/mlr-org/mlr3verse/actions/workflows/r-cmd-check.yml/badge.svg)](https://github.com/mlr-org/mlr3verse/actions/workflows/r-cmd-check.yml)
[![CRAN
Status](https://www.r-pkg.org/badges/version-ago/mlr3verse)](https://cran.r-project.org/package=mlr3verse)
[![StackOverflow](https://img.shields.io/badge/stackoverflow-mlr3-orange.svg)](https://stackoverflow.com/questions/tagged/mlr3)
[![Mattermost](https://img.shields.io/badge/chat-mattermost-orange.svg)](https://lmmisld-lmu-stats-slds.srv.mwn.de/mlr_invite/)
<!-- badges: end -->

## Overview

This package simplifies installing and loading packages from the mlr3
ecosystem. Instead of attaching extension packages directly, this
package re-exports commonly used functions for data analysis and
provides a lightweight interface to core mlr3 ecosystem functionality.

## Installation

``` r
# From CRAN:
install.packages("mlr3verse")

# From GitHub:
pak::pak("mlr-org/mlr3verse")
```

## What’s included

Functions and objects from the following packages are imported by this
meta-package:

| Name | Title | URL |
|:---|:---|:---|
| mlr3 | Machine Learning in R - Next Generation | <https://mlr3.mlr-org.com> |
| mlr3cluster | Unsupervised Clustering | <https://mlr3cluster.mlr-org.com> |
| mlr3data | Additional data sets and tasks | <https://mlr3data.mlr-org.com> |
| mlr3filters | Filter Based Feature Selection | <https://mlr3filters.mlr-org.com> |
| mlr3fselect | Wrapper Based Feature Selection | <https://mlr3fselect.mlr-org.com> |
| mlr3learners | Recommended Learners | <https://mlr3learners.mlr-org.com> |
| mlr3pipelines | Preprocessing Operators and Pipelines | <https://mlr3pipelines.mlr-org.com> |
| mlr3torch | Deep Learning | <https://mlr3torch.mlr-org.com> |
| mlr3tuning | Hyperparameter Tuning | <https://mlr3tuning.mlr-org.com> |
| mlr3tuningspaces | Collection of Hyperparameter Tuning Spaces | <https://mlr3tuningspaces.mlr-org.com> |
| mlr3viz | Visualizations | <https://mlr3viz.mlr-org.com> |
| paradox | Parameter Spaces | <https://paradox.mlr-org.com> |

After loading `mlr3verse`, you are ready to work on most regression,
classification, clustering and survival tasks:

``` r
library("mlr3verse")
```

For more detailed information about loaded packages, call
`mlr3verse_info()`:

``` r
mlr3verse_info()
```

You can install additional packages with:

``` r
install.packages("mlr3verse", dependencies = TRUE)
```

| Name | Title | URL |
|:---|:---|:---|
| miesmuschel | Mixed Integer Evolution Strategies |  |
| mlr3batchmark | Batch Experiments | <https://mlr3batchmark.mlr-org.com> |
| mlr3benchmark | Analysis and Visualization of Benchmark Experiments | <https://mlr3benchmark.mlr-org.com> |
| mlr3db | Database Backend | <https://mlr3db.mlr-org.com> |
| mlr3fairness | Fairness Auditing and Debiasing | <https://mlr3fairness.mlr-org.com> |
| mlr3fda | Functional Data Analysis | <https://mlr3fda.mlr-org.com> |
| mlr3oml | OpenML Integration | <https://mlr3oml.mlr-org.com> |
| mlr3spatial | Spatial Data Analysis | <https://mlr3spatial.mlr-org.com> |
| mlr3proba | Probabilistic Supervised Learning | <https://mlr3proba.mlr-org.com> |
| mlr3spatiotempcv | Spatiotemporal Resampling Methods | <https://mlr3spatiotempcv.mlr-org.com> |
| mlr3summary | Model and Learner Summaries | <https://mlr3summary.mlr-org.com> |
| rush | Decentralized and Distributed Computing | <https://rush.mlr-org.com> |

<a href="https://raw.githubusercontent.com/mlr-org/mlr3website/main/mlr-org/images/mlr3_ecosystem.svg"><img src="https://raw.githubusercontent.com/mlr-org/mlr3website/main/mlr-org/images/mlr3_ecosystem.svg"/></a>
