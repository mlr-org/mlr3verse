#' @importFrom data.table data.table
#' @importFrom mlr3misc map_chr
#' @importFrom utils packageVersion
#' @importFrom mlr3 Task
#' @importFrom mlr3db DataBackendDplyr
#' @importFrom mlr3filters mlr_filters
#' @importFrom mlr3pipelines mlr_pipeops
#' @importFrom mlr3tuning mlr_tuners
#' @importFrom paradox Param
"_PACKAGE"

dummy_import = function() {
  mlr3learners::LearnerClassifRanger
}
