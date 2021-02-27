#' On package attach, set ggplot theme and scales, for convenience
#'
#'  Set themes and scales for interactive sessions, projects, Shiny runtime, etc. For settings scales, see [theme::theme_ggplot_raw] for details. NOTE cannot use `.onDetach <- function(...) { detach('env_theme_ggplot') }` as it prevents checking/installing for {theme} in the same session, though it works in a `--vanilla` session. TODO So should I use it?
#'
#' @param ... (none)
#'
#' @note Results in NAMESPACE `export()`. Doesn't need to be exported? link: https://community.rstudio.com/t/adding-ggplot-themes-and-color-palettes-to-a-package/2418/2

.onAttach <- function(...) {
  # Workaround for `R CMD CHECK` for assignments to global env and `attach` e.g. `pos = 1` and `attach(NULL, name = 'my_env')` don't work.
  # Similar techniques e.g. `get('as.environment')(...)` works too.
  get('attach')(NULL, 2, name = 'env_theme_ggplot')
  theme_ggplot_elegant_dark()  # TODO `options` this for .Rprofile

  # old_options <- options()
  # TODO Shiny

  # # assign('theme_ggplot_scales', new.env(), pos = '.GlobalEnv')
  # # attach to search path after '.GlobalEnv', 'tools:rstudio'
  # # and '.conflicts', and remove it from '.GlobalEnv' to avoid congestion
  # if (! 'theme_ggplot_scales' %in% search())
  #   attach(theme_ggplot_scales, 4)  # TODO fix position due to other pkg
  # rm(theme_ggplot_scales, pos = '.GlobalEnv')
}


#' Custom ggplot theme for geom & layout
#'
#' Available themes are 'elegant_dark', 'elegant_light' and 'elegant_light_2'. `theme_switcher_val` For theme ggplot in shiny. See `shinyr::theme_switcher` for details. This argument is used for resolving specific behaviour (ie env of shiny?) in Shiny.
#'
#' @param ... (none)
#' @param theme For internal use
#'
#' @details Attach custom environment named 'env_theme_ggplot' to search path for
#' - for getting name of theme in `theme::geom_line`, etc by calling `theme_ggplot_name`
#' - due to complexities of environments and Shiny runtime, new environment named 'env_theme_ggplot' is set for overriding and storing ggplot scales objects upon `.onAttach` and `.onDetach`.
#'
#' Also see [theme::viridis_scales_from_ggplot2]
#'
#' @param theme_vals_ls (none)
#' @param theme_vals (none)
#' @param theme_ (none)
#'
#' @param strip_text_face         (none)
#' @param geom_bar_fill           (none)
#' @param geom_col_col            (none)
#' @param geom_col_fill           (none)
#' @param geom_point_col          (none)
#' @param geom_line_col           (none)
#' @param geom_smooth_col         (none)
#' @param geom_smooth_fill        (none)
#' @param geom_area_col           (none)
#' @param geom_area_fill          (none)
#' @param geom_density_col        (none)
#' @param geom_ribbon_fill        (none)
#' @param geom_ribbon_alpha       (none)
#' @param geom_text_col           (none)
#' @param geom_slabinterval_fill  (none)
#' @param geom_slabinterval_interval_colour (none)
#' @param geom_slabinterval_point_colour    (none)
#' @param geom_lineribbon_colour            (none)
#' @param geom_dagedgepath_edge_colour      (none)
#' @param geom_dagpoint_colour              (none)
#' @param geom_hline_col                    (none)
#' @param geom_hline_linetype               (none)
#' @param geom_vline_col                    (none)
#' @param geom_vline_linetype               (none)
#' @param geom_segment_col        (none)
#' @param plot_background         (none)
#' @param plot_background_border  (none)
#' @param panel_background        (none)
#' @param panel_background_border (none)
#' @param panel_grid              (none)
#' @param title                   (none)
#' @param plot_subtitle           (none)
#' @param plot_caption            (none)
#' @param plot_tag                (none)
#' @param axis_line               (none)
#' @param axis_title              (none)
#' @param axis_text               (none)
#' @param axis_ticks              (none)
#' @param legend_title            (none)
#' @param legend_text             (none)
#' @param strip_background        (none)
#' @param strip_background_border (none)
#' @param strip_text              (none)
#'
#' @name theme_ggplot
NULL

#' @rdname theme_ggplot
#' @export
theme_ggplot <- function(..., theme) {
  theme_ggplot_raw(
    theme_vals_ls = get_theme_vals_ls(theme = theme),
    ...
  )
}

#' @rdname theme_ggplot
#' @export
theme_ggplot_elegant_dark <- function(...) {
  theme_ggplot_raw(
    theme_vals_ls = get_theme_vals_ls(theme = 'elegant_dark'),
    ...
  )
}

#' @rdname theme_ggplot
#' @export
theme_ggplot_elegant_light <- function(...) {
  theme_ggplot_raw(
    theme_vals_ls = get_theme_vals_ls(theme = 'elegant_light'),
    ...
  )
}

#' @rdname theme_ggplot
#' @export
theme_ggplot_elegant_light_2 <- function(...) {
  theme_ggplot_raw(
    theme_vals_ls = get_theme_vals_ls(theme = 'elegant_light_2'),
    ...
  )
}


#' @rdname theme_ggplot
#' @export
theme_ggplot_raw <- function(

  theme_vals_ls,
  theme_vals = theme_vals_ls$theme_vals, theme_ = theme_vals_ls$theme,

  # Fixed params --------------------------------

  strip_text_face = 'bold',

  # Variable params -----------------------------

  # __ Scales  -------------------------------------

  # NA. See below.

  # __ Geom ----------------------------------------

  # Low lvl `Geom*`
  geom_bar_fill       = theme_vals('col_5_3'),
  geom_col_col        = theme_vals('col_5_3'),
  geom_col_fill       = theme_vals('col_5_3'),

  geom_point_col      = theme_vals('col'),
  geom_line_col       = theme_vals('col'),
  geom_smooth_col     = theme_vals('col'),
  geom_smooth_fill    = theme_vals('col_5'),
  geom_area_col       = theme_vals('col_5_3'),
  geom_area_fill      = theme_vals('col_5_3'),
  geom_density_col    = theme_vals('col'),
  geom_ribbon_fill    = theme_vals('col_5'),
  geom_ribbon_alpha   = .3,

  geom_hline_col      = theme_vals('col_5'),
  geom_hline_linetype = 'dashed',
  geom_vline_col      = theme_vals('col_5'),
  geom_vline_linetype = 'dashed',
  geom_segment_col    = theme_vals('col_2'),
  geom_text_col       = theme_vals('col_13'),

  # {ggdist}
  geom_slabinterval_fill            = theme_vals('col_5_3'),
  geom_slabinterval_interval_colour = theme_vals('col_13'),
  geom_slabinterval_point_colour    = theme_vals('col_13'),
  geom_lineribbon_colour            = theme_('selection_2'),

  # {ggdag}
  geom_dagedgepath_edge_colour = theme_('col_5_3'),
  geom_dagpoint_colour         = theme_('col_5_2'),

  # __ Background -------------------------------

  plot_background         = theme_vals('bg'),
  plot_background_border  = theme_vals('bg'),

  panel_background        = theme_vals('bg'),
  panel_background_border = theme_vals('border'),
  panel_grid              = theme_vals('border'),

  # polar TODO
  # 'panel_background' = '#ECEFF4',
  # 'panel_background_border' = theme_vals('border'),
  # 'panel_grid' = '#DFE4ED',

  # __ Title, caption, etc ----------------------

  title         = theme_vals('col_7'),
  plot_subtitle = theme_vals('col_7'),
  plot_caption  = theme_vals('col_5'),
  plot_tag      = theme_vals('col_5'),

  # __ Axis -------------------------------------

  # axis_line  = theme_vals('col_5'),
  axis_line  = theme_vals('border'),
  axis_title = theme_vals('col_7'),
  axis_text  = theme_vals('col_7'),
  axis_ticks = theme_vals('col_5'),

  # __ Legend -----------------------------------

  legend_title = theme_vals('col_7'),
  legend_text  = theme_vals('col_7'),

  # __ Strip ------------------------------------

  strip_background        = theme_vals('selection'),
  strip_background_border = theme_vals('selection'),
  strip_text              = theme_vals('col_7')
) {

  # Theme ------------------------------------------

  # options(theme_ggplot_raw = as.character( substitute(theme_vals) ))

  # __ Custom theme name -------------------------

  # Set 'theme_name'. See @details.
  assign('theme_ggplot_name', theme_, 'env_theme_ggplot')

  # __ Scales   ------------------------------------

  # TODO use `assign`? (see below): pass this to `values` arg
  # `theme_vals_elegant_dark()[7:13] %>% {paste0( . , 'FF')}`.
  # Why the 'FF'? temporarily use this for now

  # Set scales. See @details.

  # TODO
  # Many things will break? Change `scale_color_*` to `scale_color_*`
  theme2 <- {
    if (theme_ == 'elegant_dark') 'elegant_dark'
    # More?
    else                          'viridis'
  }
  # For arg `envir`, see @details
  scale      <- c('scale_colour_discrete', 'scale_colour_continuous',
                  'scale_fill_discrete',   'scale_fill_continuous')
  scale_func <- c(paste0('scale_color_', theme2, '_d'),
                  paste0('scale_color_', theme2, '_c'),
                  paste0('scale_fill_',  theme2, '_d'),
                  paste0('scale_fill_',  theme2, '_d'))

  mapply(scale, scale_func, FUN = function(scale, scale_func) {
    assign(scale, get(scale_func, envir = environment(ggplot)), pos = {
      # TODO is assigning to `.GlobalEnv` necessary? Try others
      if (isNamespaceLoaded('shiny')) {
        if (shiny::isRunning()) .GlobalEnv
        else 'env_theme_ggplot' }
      else   'env_theme_ggplot'
    })
    invisible()
  })

  # __ Geom ---------------------------------------

  update_geom_defaults("bar",    list(fill    = geom_bar_fill))
  update_geom_defaults("col",    list(colour  = geom_col_col,
                                      fill    = geom_col_fill))
  update_geom_defaults("point",  list(colour  = geom_point_col))
  update_geom_defaults("line",   list(colour  = geom_line_col))
  update_geom_defaults("smooth", list(colour  = geom_smooth_col,
                                      fill    = geom_smooth_fill))
  update_geom_defaults("area",   list(colour  = geom_area_col,
                                      fill    = geom_area_fill))
  update_geom_defaults("density", list(colour = geom_density_col))
  update_geom_defaults("ribbon", list(fill = geom_ribbon_fill,
                                      alpha = geom_ribbon_alpha))

  update_geom_defaults('hline',   list(colour   = geom_hline_col,
                                       linetype = geom_hline_linetype))
  update_geom_defaults('vline',   list(colour   = geom_vline_col,
                                       linetype = geom_vline_linetype))
  update_geom_defaults('segment', list(colour   = geom_vline_col))
  update_geom_defaults('text',    list(colour   = geom_text_col))

  # {ggdist} -------------------------------------

  if (requireNamespace('ggdist')) {
    update_geom_defaults('slabinterval', list(
      fill            = geom_slabinterval_fill,
      interval_colour = geom_slabinterval_interval_colour,
      point_colour    = geom_slabinterval_point_colour)
    )
    update_geom_defaults('lineribbon', list(colour = geom_lineribbon_colour))
  }

  # p$layers[[1]]$geom$default_aes$fill <- theme_('col_5_3')
  # p$layers[[1]]$geom$default_aes$interval_colour <- theme_('col_13_3')
  # p$layers[[1]]$geom$default_aes$point_colour <- theme_('col_13_3')
  # p

  # {ggdag} --------------------------------------

  if (requireNamespace('ggdag')) {
    update_geom_defaults(ggdag:::GeomDAGEdgePath,
      list(edge_colour = geom_dagedgepath_edge_colour))
    update_geom_defaults(ggdag:::GeomDagPoint,
      list(colour = geom_dagpoint_colour))
  }

  #    -   -   -   -   -   -   -   -   -   -   -   -

  theme_set( theme_minimal() + theme(

    # __ Background -------------------------

    plot.background = element_rect(
      fill  = plot_background,
      color = plot_background_border
    ),
    panel.background = element_rect(
      fill  = panel_background,
      color = panel_background_border
    ),
    panel.grid = element_line(color = panel_grid),

    # __ Title, caption, etc ----------------

    title         = element_text(color = title),
    plot.subtitle = element_text(color = plot_subtitle),
    plot.caption  = element_text(color = plot_caption),
    plot.tag      = element_text(color = plot_tag),

    # __ Axis -------------------------------

    axis.line  = element_line(color = axis_line),
    axis.title = element_text(color = axis_title),
    axis.text  = element_text(color = axis_text),
    axis.ticks = element_line(color = axis_ticks),

    # __ Legend -----------------------------

    legend.title = element_text(color = legend_title),
    legend.text  = element_text(color = legend_text),

    # __ Strip ------------------------------

    strip.background = element_rect(
      fill  = strip_background,
      color = strip_background_border
    ),
    strip.text = element_text(
      color = strip_text,
      face  = strip_text_face
    )
  ))
}

#' Viridis scales e.g. scale_color_viridis_c from ggplot2
#'
#' Export these functions for `theme::theme_ggplot_2` so namespaces can be found by `match.fun`
#'
#' @param ... (none)
#' @name viridis_scales_from_ggplot2
NULL

#' @rdname viridis_scales_from_ggplot2
#' @export
scale_color_viridis_c <- function(...) { ggplot2::scale_color_viridis_c(...) }

#' @rdname viridis_scales_from_ggplot2
#' @export
scale_color_viridis_d <- function(...) { ggplot2::scale_color_viridis_d(...) }

#' @rdname viridis_scales_from_ggplot2
#' @export
scale_fill_viridis_c <- function(...)  { ggplot2::scale_fill_viridis_c(...) }

#' @rdname viridis_scales_from_ggplot2
#' @export
scale_fill_viridis_d <- function(...)  { ggplot2::scale_fill_viridis_d(...) }
