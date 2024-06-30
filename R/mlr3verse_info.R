#' @title Print mlr3* package versions
#'
#' @description
#' Returns the package versions of imported mlr3 packages as a [data.table::data.table()].
#'
#' @importFrom mlr3misc map_chr
#' @importFrom data.table data.table
#' @export
#' @examples
#' mlr3verse_info()
mlr3verse_info = function() {
  imports = read.dcf(system.file("DESCRIPTION", package = "mlr3verse"), fields = "Imports")[[1L]]
  imports = strsplit(imports, ",[[:space:]]*")[[1L]]
  imports = sub("^([[:alnum:].]+).*", "\\1", imports)
  imports = setdiff(imports, "data.table")

  data.table(package = imports, version = map_chr(imports, function(x) {
    as.character(utils::packageVersion(x))
  }), key = "package")
}
