#' @section Learn mlr3:
#' * Book on mlr3: \url{https://mlr3book.mlr-org.com}
#' * Use cases and examples gallery: \url{https://mlr3gallery.mlr-org.com}
#' * Cheat Sheets: \url{https://github.com/mlr-org/mlr3cheatsheets}
#'
#' @section Additional Extension Packages:
#' The \CRANpkg{mlr3verse} only installs the subset of packages which are on the
#' one hand frequently required to perform a data analysis, and on the other
#' hand do not pull in too many dependencies or system requirements.
#'
#' Additional extension packages include:
#' * Analysis of benchmark experiments: \CRANpkg{mlr3benchmark}
#' * Task interface for data bases: \CRANpkg{mlr3db}
#' * Connector to [OpenML](https://www.openml.org): \CRANpkg{mlr3oml}
#' * Additional learners: \url{https://github.com/mlr-org/mlr3extralearners}
#' * Hyperband tuning algorithm: \CRANpkg{mlr3hyperband}
#' * Spatio-temporal resampling: \CRANpkg{mlr3spatiotempcv}
#'
#' @import mlr3
"_PACKAGE"

.onLoad = function(libname, pkgname) {
  # mlr3extralearners not on CRAN, only load if installed
  pkg = "mlr3extralearners"
  if (length(find.package(pkg, quiet = TRUE))) {
    requireNamespace(pkg, quietly = TRUE)
  }

  # silence usage checks
  if (FALSE) {
    mlr3data::titanic
    mlr3learners::LearnerClassifLDA
    mlr3hyperband::TunerHyperband
  }
}
