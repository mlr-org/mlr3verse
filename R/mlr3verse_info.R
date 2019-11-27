#' @title Print package versions
#'
#' @description
#' Returns the package versions of loaded mlr3 packages as [data.table()].
#'
#' @export
#' @examples
#' mlr3verse_info()
mlr3verse_info = function() {
  pkgs = c("mlr3", "mlr3tuning", "mlr3pipelines")
  data.table(pkg = pkgs, version = mlr3misc::map_chr(pkgs, function(x) as.character(packageVersion(x))))
}
