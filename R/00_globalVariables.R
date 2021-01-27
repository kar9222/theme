# Suppress NSE notes in R CMD check e.g. no visible binding for global variable 'x'
if (getRversion() >= '2.15.1') utils::globalVariables(c(

  'theme_ggplot_name', 'theme_switcher_val',
  'theme_vals_elegant_dark', 'theme_vals_elegant_light',
  'theme_vals_elegant_light',

  'theme_ggplot_scales'
))
