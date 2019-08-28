#' Update mlr3verse packages
#'
#' This will check to see if all mlr3verse packages (and optionally, their
#' dependencies) are up-to-date, and will install after an interactive
#' confirmation.
#'
#' @inheritParams mlr3verse_deps
#' @export
#' @examples
#' \dontrun{
#' mlr3verse_update()
#' }
mlr3verse_update <- function(recursive = FALSE, repos = getOption("repos")) {

  mlr3verse_deps(recursive, repos)
  # deps <- mlr3verse_deps(recursive, repos)
  # behind <- dplyr::filter(deps, behind)
  #
  # if (nrow(behind) == 0) {
  #   cli::cat_line("All mlr3verse packages up-to-date")
  #   return(invisible())
  # }
  #
  # cli::cat_line("The following packages are out of date:")
  # cli::cat_line()
  # cli::cat_bullet(format(behind$package), " (", behind$local, " -> ", behind$cran, ")")
  #
  # cli::cat_line()
  # cli::cat_line("Start a clean R session then run:")
  #
  # pkg_str <- paste0(deparse(behind$package), collapse = "\n")
  # cli::cat_line("install.packages(", pkg_str, ")")
  #
  # invisible()
}

#' List all mlr3verse dependencies
#'
#' @param recursive If \code{TRUE}, will also list all dependencies of
#'   mlr3verse packages.
#' @param repos The repositories to use to check for updates.
#'   Defaults to \code{getOptions("repos")}.
#' @export
mlr3verse_deps <- function(recursive = FALSE, repos = getOption("repos")) {

  # simple method until we are on CRAN

  remotes::update_packages(c("mlr3", "paradox", "mlr3pipelines", "mlr3learners",
    "mlr3filters", "mlr3fswrap", "mlr3misc", "mlr3tuning", "mlr3db", "mlr3ordinal",
    "mlr3spatiotemporal", "mlr3survival", "mlr3viz"))

  # stop(cli::cat_rule("Updating is not supported yet until most packages are on CRAN"))
  #
  # pkgs <- utils::available.packages(repos = repos)
  # deps <- tools::package_dependencies("mlr3verse", pkgs, recursive = recursive)
  #
  # deps = c("mlr3db", "mlr3featsel", "mlr3learners", "mlr3misc", "mlr3ordinal", "mlr3pipelines",
  # "mlr3survival", "mlr3tuning", "mlr3viz", "paradox")
  #
  # pkg_deps <- unique(sort(unlist(deps)))
  #
  # base_pkgs <- c(
  #   "base", "compiler", "datasets", "graphics", "grDevices", "grid",
  #   "methods", "parallel", "splines", "stats", "stats4", "tools", "tcltk",
  #   "utils"
  # )
  # pkg_deps <- setdiff(pkg_deps, base_pkgs)
  #
  # cran_version <- lapply(pkgs[pkg_deps, "Version"], base::package_version)
  # local_version <- lapply(pkg_deps, packageVersion)
  #
  # behind <- purrr::map2_lgl(cran_version, local_version, `>`)
  #
  # tibble::tibble(
  #   package = pkg_deps,
  #   cran = lapply(cran_version, function(x) as.character(x)),
  #   local = lapply(local_version, function(x) as.character(x)),
  #   behind = behind
  # )
}

packageVersion <- function(pkg) {
  if (rlang::is_installed(pkg)) {
    utils::packageVersion(pkg)
  } else {
    0
  }
}
