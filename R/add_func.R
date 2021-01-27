#' Custom line geometry
#'
#' Wrapper for theming `ggplot::geom_line` and `plotly::add_lines`
#'
#' @param ... Arguments passed to `ggplot::geom_line` or `plotly::add_lines`
#' @param max_n_colors (none)
#'
#' @param p (none)
#' @param colors Generally, it's hard to perceive >= 8 different colors/linetypes/etc.#'
#' - When argument is missing and number of traces <= (max_n_colors default of 6), it defaults to predefined scales.#'
#' - When argument is missing and number of traces > (max_n_colors defaults of 6), it inherits scales from previous plotly objects.#'
#' - Otherwise, it can be specified (see {theme} & plotly docs).
#'
#' @param max_n_colors Defaults to 'n' argument of `theme::scale_line_*`. Increase it for using default scales for higher number of traces, at the cost of lower perception.
#'
#' @note Use `conflicted::conflict_prefer`
#' @references [ggplot2 2.0 new stat_ function: setting default scale for given aesthetics](https://stackoverflow.com/questions/34680792/ggplot2-2-0-new-stat-function-setting-default-scale-for-given-aesthetics)
#'
#' @name custom_line_geometry
NULL

#' @rdname custom_line_geometry
#' @export

geom_line <- function(..., max_n_colors = 6) {

  # use `ggplot2::last_plot`, not `plotly::last_plot`

  color_label <- ggplot2::last_plot()$labels$colour
  color_val <-
    if ( ! is.null(color_label)) ggplot2::last_plot()$data[[color_label]]

  # fill_label <- ggplot2::last_plot()$labels$fill
  # fill_val <-
  #   if ( ! is.null(fill_label)) ggplot2::last_plot()$data[[fill_label]]

  n_trace_color <- uniqueN(color_val)
  # n_trace_fill  <- uniqueN(fill_val)

  # Switch theme, discrete/continuous scale and 'max_n_colors'

  theme <- {
    if (isNamespaceLoaded('shiny')) {
      if (shiny::isRunning()) get_theme_vals_ls()$theme
      # 'names' attr set by `theme::theme_ggplot_*`
      else theme_ggplot_name  }
    else   theme_ggplot_name
  }

  # scale type 'c' for numeric, 'd' for factor, chr
  scale_type <- ifelse(is.numeric(color_val), 'c', 'd')

  scale <- {  # See vignettes
    if (n_trace_color > max_n_colors) NULL
    else {
      max_n_colors_available <- 6  # from `theme::scale_line_*`
      if (max_n_colors_available < max_n_colors)
        # Peg to 'max_n_colors_available' to avoid 'NA' val
        n_trace_color <- max_n_colors_available
      list(
        {
          if ( ! is.null(color_label))
            match.fun(
              paste0('scale_color_', theme, '_', 'scale_type')
            )(palette = 'line', n = n_trace_color)
          else NULL
        }
        # {  # TODO Doesn't make sense, ignore this?
        #   if ( ! is.null(fill_label))
        #     match.fun(
        #       paste0('scale_fill_', theme, '_', 'scale_type')
        #     )(palette = 'line', n = n_trace_fill)
        #   else NULL
        # }
      )
    }
  }
  c(ggplot2::geom_line(...), scale)
}

#' @rdname custom_line_geometry
#' @export

add_lines <- function(p, ..., colors, max_n_colors = 6) {
  # TODO Performance of `plotly_build` ?
  # n_traces <- length( suppress_plotly_msg(p) $x$data )
  color_col <- as.character( p$x$attrs[[1]]$color )[2]
  n_traces <- length(unique( p$x$visdat[[1]] () [[color_col]] ))

  theme <- {
    if (isNamespaceLoaded('shiny')) {
      if (shiny::isRunning()) get_theme_vals_ls()$theme
      else attr(p, 'theme')  }  # attr set by `theme::plot_ly`
    else   attr(p, 'theme')
  }
  if ( ! missing(colors)) plotly::add_lines(p = p, ..., colors = colors)
  else {  # See vignettes
    if (n_traces > max_n_colors) plotly::add_lines(p = p, ...)
    else {
      max_n_colors_available <- 6  # from `theme::scale_line_*`
      if (max_n_colors_available < max_n_colors)
        # Peg to 'max_n_colors_available' to avoid 'NA' val
        n_traces <- max_n_colors_available
      # TODO FP this?
      colors <- {  # TODO `colors <- get_scale_line()`
        if      (theme == 'elegant_dark')
             scale_line_elegant_dark(n_traces)
        else if (theme == 'elegant_light')
             scale_line_elegant_light(n_traces)
        else if (theme == 'elegant_light_2')
             scale_line_elegant_light_2(n_traces)
        else viridisLite::viridis(256)
      }
      plotly::add_lines(p = p, ..., colors = colors)
    }
  }
}
