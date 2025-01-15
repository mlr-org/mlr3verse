# mlr3verse 0.3.1

* feat: add `mlr3inferr` package.

# mlr3verse 0.3.0

* BREAKING CHANGE: Various classes are removed and replaced with their sugar.
* Compatibility: Work with new mlr3tuning and mlr3fselect 1.0.0.
* Update package versions to latest CRAN versions.
* Added not yet included mlr3 packages to suggests and include them in `mlr3verse_info()`

# mlr3verse 0.2.8

* Updated reexports.

# mlr3verse 0.2.7

* Updated reexports.

# mlr3verse 0.2.6

* Updated reexports.

# mlr3verse 0.2.5

* Removed mlr3proba (currently not maintained on CRAN).

# mlr3verse 0.2.4

* Updated reexports.

# mlr3verse 0.2.3

* Updated reexports.

# mlr3verse 0.2.2

* Updated reexports.

# mlr3verse 0.2.1

* Updated reexports.

# mlr3verse 0.2.0

* Instead of depending on mlr3 packages, all packages are now imported.
  All functions and objects required to do data analysis are re-exported, while
  functions and objects required to **extend** the packages are not exported.
  This change aims to provide a thin view on the most important functions of the
  mlr3 ecosystem and thereby aid beginners to get started.
* If the `mlr3extralearners` (<https://github.com/mlr-org/mlr3extralearners>)
  package is installed, it will automatically be loaded and learner dictionary
  will automatically get populated.


# mlr3verse 0.1.3

* Maintenance release.


# mlr3verse 0.1.2

* Add mlr3data (#3)


# mlr3verse 0.1.1

* add mlr3viz to core package stack


# mlr3verse 0.1.0

Initial CRAN release.
