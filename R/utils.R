msg = function(..., startup = FALSE) {
  if (startup) {
    if (!isTRUE(getOption("mlr3verse.quiet"))) {
      packageStartupMessage(text_col(...))
    }
  } else {
    message(text_col(...))
  }
}

text_col = function(x) {
  # If RStudio not available, messages already printed in black
  if (!rstudioapi::isAvailable()) {
    return(x)
  }

  if (!rstudioapi::hasFun("getThemeInfo")) {
    return(x)
  }

  theme = rstudioapi::getThemeInfo()

  if (isTRUE(theme$dark)) crayon::white(x) else crayon::black(x)

}

invert = function(x) {
  if (length(x) == 0) {
    return()
  }
  stacked = utils::stack(x)
  tapply(as.character(stacked$ind), stacked$values, list)
}


style_grey = function(level, ...) {
  crayon::style(
    paste0(...),
    crayon::make_style(grDevices::grey(level), grey = TRUE)
  )
}

.onAttach = function(...) {
  needed = core[!is_attached(core)]
  if (length(needed) == 0) {
    return()
  }

  crayon::num_colors(TRUE)
  mlr3verse_attach()

  if (!"package:conflicted" %in% search()) {
    x = mlr3verse_conflicts()
    msg(mlr3verse_conflict_message(x), startup = TRUE)
  }

}

is_attached = function(x) {
  paste0("package:", x) %in% search()
}
