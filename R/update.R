#' Update mlr3verse packages
#'
#' This will check to see if all mlr3verse packages (and optionally, their
#' dependencies) are up-to-date, and will install after an interactive
#' confirmation.
#'
#' @importFrom utils install.packages
#'
#' @section Type:
#'   When parameter `type = "all"`, all packages from the mlr3
#'   ecosystem will be updated using the CRAN versions for the ones which are on
#'   CRAN and the development versions from Github for those which are not yet
#'   released. When `type = "dev"` is set, all packages will be updated using
#'   their Github versions.
#' @inheritParams mlr3verse_deps
#' @export
#' @examples
#' \dontrun{
#' mlr3verse_update()
#' }
mlr3verse_update <- function(recursive = FALSE, repos = getOption("repos"),
                             type  = "all") {

  cran_deps = mlr3verse_deps(recursive, repos, type = "cran")
  gh_deps = mlr3verse_deps(recursive, repos, type = "dev")
  all_pkgs = mlr3verse_deps(recursive, repos, type = "all")
  behind <- dplyr::filter(cran_deps, behind)

  if (type == "all" | type == "cran") {

    if (nrow(behind) == 0) {
      cli::cat_line("All mlr3verse CRAN packages are up-to-date.")
      if (type == "cran") {
        return(invisible())
      }
    } else {

      cli::cat_line("The following packages are out of date:")
      cli::cat_line()
      cli::cat_bullet(format(behind$package), " (", behind$local, " -> ", behind$cran, ")")

      cli::cat_line()
      cli::cat_line("Installing CRAN packages...")

      #pkg_str <- paste0(deparse(behind$package), collapse = "\n")
      do.call(install.packages, list(pkgs = deparse(behind$package)))
    }
    if (type == "all") {
      # always update gh packages
      cli::cat_line()
      cli::cat_line("Installing mlr3 packages from Github...")
      remotes::update_packages(gh_deps)
    }

    return(invisible())

  } else if (type == "dev") {
    cli::cat_line()
    cli::cat_line("Installing all mlr3 packages from Github...")
    remotes::update_packages(all_pkgs)
  }
}

#' List all mlr3verse dependencies
#'
#' @param recursive If \code{TRUE}, will also list all dependencies of mlr3verse
#'   packages.
#' @param repos The repositories to use to check for updates. Defaults to
#'   \code{getOptions("repos")}.
#' @param type Which package type to use. Valid options are "cran", "dev" and
#'   "all".
#'
#' @export
mlr3verse_deps <- function(recursive = FALSE, repos = getOption("repos"),
                           type = "cran") {

  pkgs = c("mlr3", "paradox", "mlr3pipelines", "mlr3learners",
           "mlr3filters", "mlr3fswrap", "mlr3misc", "mlr3tuning", "mlr3db", "mlr3ordinal",
           "mlr3spatiotemporal", "mlr3survival", "mlr3viz"")
  deps_cran = c("mlr3", "mlr3learners", "mlr3misc", "paradox", "mlr3filters")
  deps_gh = setdiff(pkgs, deps_cran)

  if (type == "dev") {
    return(deps_gh)
  } else if (type == "all") {
    return(pkgs)
  } else if (type == "cran") {

    pkgs <- utils::available.packages(repos = repos)
    deps <- tools::package_dependencies("mlr3verse", pkgs, recursive = recursive)

    pkg_deps <- unique(sort(unlist(deps_cran)))

    base_pkgs <- c(
      "base", "compiler", "datasets", "graphics", "grDevices", "grid",
      "methods", "parallel", "splines", "stats", "stats4", "tools", "tcltk",
      "utils"
    )
    pkg_deps <- setdiff(pkg_deps, base_pkgs)

    cran_version <- lapply(pkgs[pkg_deps, "Version"], base::package_version)
    local_version <- lapply(pkg_deps, packageVersion)

    behind <- purrr::map2_lgl(cran_version, local_version, `>`)

    tibble::tibble(
      package = pkg_deps,
      cran = lapply(cran_version, function(x) as.character(x)),
      local = lapply(local_version, function(x) as.character(x)),
      behind = behind
    )
  }
}

packageVersion <- function(pkg) {
  if (rlang::is_installed(pkg)) {
    utils::packageVersion(pkg)
  } else {
    0
  }
}
