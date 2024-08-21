#' @title Print mlr3* package versions
#'
#' @description
#' Returns the package versions of imported and suggested mlr3 packages as a [data.table::data.table()].
#' Suggested packages that are not installed are listed with version `NA`.
#'
#' @importFrom mlr3misc map_chr
#' @importFrom data.table data.table
#' @export
#' @examples
#' mlr3verse_info()
mlr3verse_info = function() {
  f = function(x) {
    y = read.dcf(system.file("DESCRIPTION", package = "mlr3verse"), fields = x)[[1L]]
    y = strsplit(y, ",[[:space:]]*")[[1L]]
    sub("^([[:alnum:].]+).*", "\\1", y)
  }

  imports = setdiff(f("Imports"), "data.table")
  suggests = f("Suggests")
  pkgs = c(imports, suggests)

  versions = mlr3misc::map_chr(pkgs, function(pkg) {
    tryCatch(as.character(utils::packageVersion(pkg)), error = function(e) NA_character_)
  })

  data.table(package = pkgs, version = versions, key = "package")
}
