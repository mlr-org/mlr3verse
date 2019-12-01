do_package_checks(error_on = "warning")

if (ci_has_env("BUILD_PKGDOWN")) {
  get_stage("install") %>%
    add_step(step_install_github("mlr-org/mlr3pkgdowntemplate"))
  do_pkgdown()
}
