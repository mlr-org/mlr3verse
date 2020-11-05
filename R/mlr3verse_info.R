#' @title Print mlr3* package versions
#'
#' @description
#' Returns the package versions of loaded mlr3 packages as a [data.frame].
#'
#' @importFrom mlr3misc map_chr
#' @export
#' @examples
#' mlr3verse_info()
mlr3verse_info <- function() {
  pkgs <- sort(c(
    "mlr3", "bbotk", "mlr3tuning", "mlr3pipelines", "paradox",
    "mlr3filters", "mlr3fselect",
    "mlr3data", "mlr3learners", "mlr3viz"
  ))
  data.frame(Package = pkgs, Version = map_chr(pkgs, function(x) {
    as.character(utils::packageVersion(x))
  }))
}
