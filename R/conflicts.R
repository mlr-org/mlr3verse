#' Conflicts between the mlr3verse and other packages
#'
#' This function lists all the conflicts between packages in the mlr3verse
#' and other packages that you have loaded.
#'
#' @export
#' @examples
#' mlr3verse_conflicts()
mlr3verse_conflicts = function() {

  envs = grep("^package:", search(), value = TRUE)
  envs = stats::setNames(envs, nm = envs)

  objs = invert(lapply(envs, ls_env))

  conflicts2 = mlr3misc::keep(objs, function(x) length(x) > 1)

  tidy_names = paste0("package:", mlr3verse_packages())

  conflicts3 = mlr3misc::keep(conflicts2, function(x) any(x %in% tidy_names))
  conflict_funs2 = mlr3misc::imap(conflicts3, confirm_conflict)

  conflict_funs3 = mlr3misc::discard(conflict_funs2, function(x) is.null(x))

  structure(conflict_funs3, class = "mlr3verse_conflicts")
}

mlr3verse_conflict_message = function(x) {

  if (length(x) == 0) {
    return("")
  }

  header = cli::rule(
    left = crayon::bold("Conflicts"),
    right = "mlr3verse_conflicts()"
  )

  pkgs = mlr3misc::map(x, function(x) gsub("^package:", "", x))
  others = mlr3misc::map(pkgs, `[`, -1)
  other_calls = mlr3misc::pmap_chr(
    list(others, names(others)),
    function(x, y) paste0(crayon::blue(x), "::", y, "()", collapse = ", ")
  )

  winner = mlr3misc::map_chr(pkgs, 1)
  funs = format(paste0(crayon::blue(winner), "::", crayon::green(paste0(names(x), "()"))))
  bullets = paste0(
    crayon::red(cli::symbol$cross), " ", funs,
    " masks ", other_calls,
    collapse = "\n"
  )

  paste0(header, "\n", bullets)
}

#' @export
print.mlr3verse_conflicts = function(x, ..., startup = FALSE) {
  cli::cat_line(mlr3verse_conflict_message(x))
}

confirm_conflict = function(packages, name) {

  # Only look at functions
  tmp = mlr3misc::map(packages, function(x) get(name, pos = x))
  objs = mlr3misc::keep(tmp, is.function)

  if (length(objs) <= 1) {
    return()
  }

  # Remove identical functions
  objs = objs[!duplicated(objs)]
  packages = packages[!duplicated(packages)]
  if (length(objs) == 1) {
    return()
  }

  packages
}

ls_env = function(env) {
  x = ls(pos = env)
  if (identical(env, "package:dplyr")) {
    x = setdiff(x, c("intersect", "setdiff", "setequal", "union"))
  }
  x
}
