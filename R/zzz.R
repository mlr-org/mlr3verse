#' @keywords internal
"_PACKAGE"

.onLoad = function(libname, pkgname) {
  # these are not loaded automatically
  requireNamespace("mlr3data", quietly = TRUE)
  requireNamespace("mlr3learners", quietly = TRUE)

  # mlr3extralearners not on CRAN, only load if installed
  pkg = "mlr3extralearners"
  if (length(find.package(pkg, quiet = TRUE))) {
    requireNamespace(pkg, quietly = TRUE)
  }

  # silence usage checks
  if (FALSE) {
    mlr3data::penguins
    mlr3learners::LearnerClassifLDA
  }
}
