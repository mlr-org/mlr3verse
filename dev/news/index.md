# Changelog

## mlr3verse (development version)

## mlr3verse 0.3.1

CRAN release: 2025-01-14

- feat: add `mlr3inferr` package.

## mlr3verse 0.3.0

CRAN release: 2024-06-30

- BREAKING CHANGE: Various classes are removed and replaced with their
  sugar.
- Compatibility: Work with new mlr3tuning and mlr3fselect 1.0.0.
- Update package versions to latest CRAN versions.
- Added not yet included mlr3 packages to suggests and include them in
  [`mlr3verse_info()`](https://mlr3verse.mlr-org.com/dev/reference/mlr3verse_info.md)

## mlr3verse 0.2.8

CRAN release: 2023-04-26

- Updated reexports.

## mlr3verse 0.2.7

CRAN release: 2022-11-19

- Updated reexports.

## mlr3verse 0.2.6

CRAN release: 2022-11-03

- Updated reexports.

## mlr3verse 0.2.5

CRAN release: 2022-05-18

- Removed mlr3proba (currently not maintained on CRAN).

## mlr3verse 0.2.4

CRAN release: 2022-02-21

- Updated reexports.

## mlr3verse 0.2.3

- Updated reexports.

## mlr3verse 0.2.2

CRAN release: 2021-08-11

- Updated reexports.

## mlr3verse 0.2.1

CRAN release: 2021-03-07

- Updated reexports.

## mlr3verse 0.2.0

CRAN release: 2021-01-27

- Instead of depending on mlr3 packages, all packages are now imported.
  All functions and objects required to do data analysis are
  re-exported, while functions and objects required to **extend** the
  packages are not exported. This change aims to provide a thin view on
  the most important functions of the mlr3 ecosystem and thereby aid
  beginners to get started.
- If the `mlr3extralearners`
  (<https://github.com/mlr-org/mlr3extralearners>) package is installed,
  it will automatically be loaded and learner dictionary will
  automatically get populated.

## mlr3verse 0.1.3

CRAN release: 2020-07-06

- Maintenance release.

## mlr3verse 0.1.2

- Add mlr3data ([\#3](https://github.com/mlr-org/mlr3verse/issues/3))

## mlr3verse 0.1.1

CRAN release: 2020-01-19

- add mlr3viz to core package stack

## mlr3verse 0.1.0

CRAN release: 2019-12-15

Initial CRAN release.
