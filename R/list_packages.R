#' List all packages in the mlr3verse
#'
#' @param include_self Include mlr3verse in the list?
#' @param cran_only Only show packages available on CRAN?
#' @export
#' @examples
#' mlr3verse_packages()
mlr3verse_packages <- function(include_self = TRUE, cran_only = FALSE) {
  raw <- utils::packageDescription("mlr3verse")$Imports
  imports <- strsplit(raw, ",")[[1]]
  parsed <- gsub("^\\s+|\\s+$", "", imports)
  names <- vapply(strsplit(parsed, "\\s+"), "[[", 1, FUN.VALUE = character(1))

  if (cran_only) {
    names = names[names %in% deps_cran()]
  }

  if (include_self) {
    names <- c(names, "mlr3verse")
  }

  names
}
