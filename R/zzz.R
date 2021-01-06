#' @keywords internal
"_PACKAGE"

.onLoad = function(libname, pkgname) {
  # these are not loaded automatically
  requireNamespace("mlr3data")
  requireNamespace("mlr3learners")

  if (FALSE) {
    mlr3data::penguins
    mlr3learners::LearnerClassifLDA
  }
}
