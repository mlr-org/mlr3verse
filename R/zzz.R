#' @import mlr3
#' @import mlr3inferr
"_PACKAGE"

.onLoad = function(libname, pkgname) {
  # populate dictionaries
  requireNamespace("mlr3data", quietly = TRUE)
  requireNamespace("mlr3learners", quietly = TRUE)
  requireNamespace("mlr3hyperband", quietly = TRUE)
  requireNamespace("mlr3mbo", quietly = TRUE)

  # mlr3extralearners not on CRAN, only load if installed
  pkg = "mlr3extralearners"
  if (length(find.package(pkg, quiet = TRUE))) {
    requireNamespace(pkg, quietly = TRUE)
  }

  # silence usage checks
  if (FALSE) {
    mlr3data::titanic
    mlr3learners::LearnerClassifLDA
    mlr3mbo::TunerMbo
  }
}
