do_package_checks(error_on = "warning")

if (ci_on_travis()) {
  do_pkgdown()
}
