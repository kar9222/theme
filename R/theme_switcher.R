# Helper -----------------------------------------

#' Get 'theme_vals' list
#' 
#' Return both name of theme and 'theme_vals' for `plotly_raw`, `theme_ggplot_raw`, etc
#'
#' @param theme Default to 'elegant_dark' or, when shiny is running, 'theme_switcher_val' for modifying themes of ggplot/plotly/etc based on shiny theme. See `shinyr::theme_switcher` for details
#' 
#' @export

get_theme_vals_ls <- function(theme) {

  if (missing(theme)) {
    theme <- { if (isNamespaceLoaded('shiny')) {
                 if (shiny::isRunning()) theme_switcher_val()
                 else 'elegant_dark'  }
               else   'elegant_dark' } }
  theme_vals <- switch(
    theme,
    'elegant_light'   = theme_vals_elegant_light,
    'elegant_light_2' = theme_vals_elegant_light_2,
    'elegant_dark'    = theme_vals_elegant_dark
  )
  list(theme = theme, theme_vals = theme_vals)
}

# theme_switcher_* -------------------------------

#' Theme switcher
#' 
#' Theme switcher for plotly and shiny.
#' 
#' @param theme (none)
#' @param ... (none)
#' 
#' @note `theme_func` argument of internal function `theme::theme_switcher`: choose one of 'shiny', 'plotly'
#' 
#' @name theme_switcher
NULL

theme_switcher <- function(theme_func, theme, ...) {
  theme_func_ <- {
    if      (theme_func == 'shiny')  theme_shiny
    # else if (theme_func == 'plotly') theme_plotly
    else                             NULL
  }
  theme_func_(theme_vals = get_theme_vals_ls(theme = theme)$theme_vals, ...)
}

# #' @rdname theme_switcher
# #' @export
# theme_switcher_plotly <- function(theme, ...) {
#   theme_switcher('plotly', theme = theme, ...)
# }

#' @rdname theme_switcher
#' @export
theme_switcher_shiny <- function(theme, ...) {
  theme_switcher('shiny', theme = theme, ...)
}
