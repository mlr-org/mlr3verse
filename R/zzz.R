#' @keywords internal
"_PACKAGE"

.onLoad = function(libname, pkgname) {
  # these are not loaded automatically
  requireNamespace("mlr3data", quietly = TRUE)
  requireNamespace("mlr3learners", quietly = TRUE)

  if (FALSE) {
    mlr3data::penguins
    mlr3learners::LearnerClassifLDA
  }
}
