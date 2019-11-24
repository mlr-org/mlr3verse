do_package_checks(error_on = "warning")

# for README
get_stage("install") %>%
  add_step(step_install_cran(c("flextable", "magrittr"))) %>%
  add_step(step_install_github("mlr-org/mlr3fselect"))
  add_step(step_install_github("mlr-org/mlr3proba"))
  add_step(step_install_github("mlr-org/mlr3hyperband"))
  add_step(step_install_github("mlr-org/mlr3mbo"))
  add_step(step_install_github("mlr-org/mlr3spatiotempcv"))
  add_step(step_install_github("mlr-org/mlr3ordinal"))
  add_step(step_install_github("mlr-org/mlr3viz"))

if (ci_has_env("BUILD_PKGDOWN")) {
  get_stage("install") %>%
    add_step(step_install_github("mlr-org/mlr3pkgdowntemplate"))
  do_pkgdown(orphan = TRUE)
}
