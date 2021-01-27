#' Shared plotly themes for `theme::ggplotly` & `theme::plotly`
#'
#' Set default themes. To modify shared themes, use syntax of {plotly}
#'
#' @param p                       (none)
#' @param theme_vals              (none)
#'
#' @param rangeselector_bg        (none)
#' @param rangeselector_bg_active (none)
#' @param rangeselector_fg        (none)
#'
#' @note Call this as last step (don't know how to assign object back to calling frame)

plotly_shared_themes <- function(

  p, theme_vals,

  # Param ----------------------------------------

  # _ General ------------------------------------

  # See below

  # _ Range selector -----------------------------

  rangeselector_bg        = theme_vals('col_5_2'),
  rangeselector_bg_active = theme_vals('col_5'),
  rangeselector_fg        = theme_vals('col_7')
) {

  # Theme ----------------------------------------

  # _ General ------------------------------------

  # p$dependencies[[4]]$stylesheet = 'plotly-htmlwidgets.css'
  # assign('p$sizingPolicy$padding', 0, inherits = TRUE)
  p$sizingPolicy$padding <- 0
  p %>%
    # Config
    # Use either default plotly arguments or 'modeBarButtonsToRemove' (refer to [modeBar buttons](https://github.com/plotly/plotly.js/blob/master/src/components/modebar/buttons.js)). Argument names are diff?
    plotly::config(displaylogo = FALSE, showTips = FALSE,
                   scrollZoom = TRUE,
                   modeBarButtonsToRemove = list(
                     'toImage'
                   )) %>%
    plotly::layout(
      dragmode = 'pan',

      # _ Range selector -------------------------

      xaxis = list(rangeselector = list(
        bgcolor     = rangeselector_bg,
        activecolor = rangeselector_bg_active,
        font        = list(color = rangeselector_fg)
      ))
    )
}


# TODO
get_rangeselector <- function(label = c('1W', '1M', '3M', '6M', 'YTD',
                                        '1Y', '5Y', '10Y', 'ALL')) {
  # count <- stringi::stri_extract_all_regex(labels, '[0-9]*')
  # TODO Regex multiple `[0-9]`
  count_step <- strsplit(label, "(?<=[0-9])", perl = TRUE)

  get_count <- function(label, count) {
    if (label == 'ALL') NULL else as.numeric(count)
  }
  get_step <- function(label, step) {
    if (is.na(step)) {
      if (label == 'YTD') 'year'
      if (label == 'ALL') 'all' }
    else {
      if (step == 'D') 'day'
      if (step == 'W') 'week'
      if (step == 'M') 'month'
      if (step == 'Y') 'year' }
  }
  l <- Map(label, count_step, f = function(label, count_step)
    list(label = label,
         count = get_count(label, count_step[1]),
         step  = get_step(label, count_step[2])))
  list(buttons = unname(l))
}
# get_rangeselector() %>% str()



#' Suppress plotly messages
#'
#' Most plotly messages and warnings happen at print time, so if you want/need a more general way to suppress this (or other) messages (or warnings), you'll have to wrap a call to plotly_build(). Provide a parameter to suppress the "No trace type specified" warning+message](https://github.com/ropensci/plotly/issues/1202)
#'
#' @param p (none)
#'
#' @note Performance of `plotly_build` is significant?
#'
#' @export
suppress_plotly_msg <- function(p) { suppressMessages(plotly::plotly_build(p)) }

#' `plotly_raw`
#'
#' `plotly_raw`
#'
#' @param ...            (none)
#' @param theme_vals_ls  (none)
#' @param theme_vals     (none)
#' @param theme_         (none)
#'
#' @param hovermode      (none)
#' @param showspikes     (none)
#' @param spikethickness (none)
#' @param font_col       (none)
#' @param plot_bg        (none)
#' @param paper_bg       (none)
#' @param line_color     (none)
#' @param axis_ticks     (none)
#' @param grid_color     (none)
#' @param colorway       (none)
#' @param colors         (none)
#'
# TODO Explore 'template' in `schema`

plotly_raw <- function(

  # Params ---------------------------------------

  ...,
  theme_vals_ls,
  theme_vals = theme_vals_ls$theme_vals, theme_ = theme_vals_ls$theme,

  # _ Layout -------------------------------------

  hovermode = 'x',
  showspikes = TRUE, spikethickness = 1,

  font_col   = theme_vals('col_7'),
  plot_bg    = theme_vals('bg'),
  paper_bg   = theme_vals('bg'),

  line_color = theme_vals('border'),
  axis_ticks = theme_vals('col_5'),
  grid_color = theme_vals('border'),

  # _ Colors -------------------------------------

  colorway = theme_vals('col', 'col_2', 'col_4', 'col_5', 'fg',
                        'col_9', 'col_10', 'col_11', 'col_12'),

  # _ Scales -------------------------------------

  colors = theme_vals('plotly_scales')
  ) {

  # Theme ---------------------------------------

  p <- plotly::plot_ly(

    ...,

    # _ Scales -----------------------------------

    colors = {
      if      (theme_ == 'elegant_dark') pals_elegant_dark()(256)
      else if (theme_ %in% c('elegant_light', 'elegant_light_2'))
           viridisLite::viridis(256)
      else viridisLite::viridis(256)
    }
    # TODO No need this & `theme::renderPlotly` ignore warnings part?
    # colorscale = 'Viridis',
  )

    # _ Layout -----------------------------------

    axis <- list(
      showspikes = showspikes, spikethickness = spikethickness,
      linecolor = line_color, tickcolor = axis_ticks,
      gridcolor = grid_color
    )

    p %<>% plotly::layout(
      hovermode = hovermode,
      font = list(color = font_col),
      # titlefont = list(color = title_font_col),
      plot_bgcolor = plot_bg, paper_bgcolor = paper_bg,
      # ternary = list(bgcolor = 'red'),  # bg of subplot
      scene = list(bgcolor = theme_vals('bg')),  # TODO Add to param, doc, etc
      xaxis = axis, yaxis = axis,

      # _ Colors  ---------------------------------

      colorway = colorway
    )
  plotly_shared_themes(p, theme_vals)
}

#' `plot_ly`
#'
#' theme_vals For internal use
#'
#' @param ... (none)
#' @param theme (none)
#'
#' @export

plot_ly <- function(..., theme) {
  theme_vals_ls <- get_theme_vals_ls(theme = theme)
  p <- plotly_raw(..., theme_vals_ls = theme_vals_ls)
  # Set 'theme' attr for programtically updating theme of
  # `theme::add_lines`
  setattr(p, 'theme', theme_vals_ls$theme)
  p
}


#' View multiple plots in a single view
#'
#' @param ... One of the following
#' \itemize{
#'  \item any number of plotly/ggplot2 objects.
#'  \item a list of plotly/ggplot2 objects.
#'  \item a tibble with one list-column of plotly/ggplot2 objects.
#' }
#' @param nrows number of rows for laying out plots in a grid-like structure. Only used if no domain is already specified.
#' @param widths relative width of each column on a 0-1 scale. By default all columns have an equal relative width.
#' @param heights relative height of each row on a 0-1 scale. By default all rows have an equal relative height.
#' @param margin either a single value or four values (all between 0 and 1). If four values are provided, the first is used as the left margin, the second is used as the right margin, the third is used as the top margin, and the fourth is used as the bottom margin. If a single value is provided, it will be used as all four margins.
#' @param shareX should the x-axis be shared amongst the subplots?
#' @param shareY should the y-axis be shared amongst the subplots?
#' @param titleX should x-axis titles be retained?
#' @param titleY should y-axis titles be retained?
#' @param which_layout adopt the layout of which plot? If the default value of  "merge" is used, layout options found later in the sequence of plots will  override options found earlier in the sequence. This argument also accepts a  numeric vector specifying which plots to consider when merging.
#' @note Most docs are copied from `plotly::subplot`
#' @return A plotly object
#' @examples
#' \dontrun{
#'
#' # pass any number of plotly objects to subplot()
#' p1 <- plot_ly(economics, x = ~date, y = ~uempmed)
#' p2 <- plot_ly(economics, x = ~date, y = ~unemploy)
#' subplot(p1, p2, p1, p2, nrows = 2, margin = 0.05)
#'
#' #'  # anchor multiple traces on the same legend entry
#'  p1 <- add_lines(p1, color = I("black"), name = "1st", legendgroup = "1st")
#'  p2 <- add_lines(p2, color = I("red"), name = "2nd", legendgroup = "2nd")
#'
#'  subplot(
#'    p1, style(p1, showlegend = FALSE),
#'    p2, style(p2, showlegend = FALSE),
#'    nrows = 2, margin = 0.05
#'  )
#'
#' # or pass a list
#' economics_long %>%
#'   split(.$variable) %>%
#'   lapply(function(d) plot_ly(d, x = ~date, y = ~value)) %>%
#'   subplot(nrows = NROW(.), shareX = TRUE)
#'
#' # or pass a tibble with a list-column of plotly objects
#' economics_long %>%
#'   group_by(variable) %>%
#'   do(p = plot_ly(., x = ~date, y = ~value)) %>%
#'   subplot(nrows = NROW(.), shareX = TRUE)
#'
#' # learn more at https://cpsievert.github.io/plotly_book/subplot.html
#' }
#'
#' @export

subplot <- function(..., nrows = 1, widths = NULL, heights = NULL,
                    margin = 0.02, shareX = FALSE, shareY = FALSE,
                    titleX = shareX, titleY = shareY,
                    which_layout = "merge") {
  plots <- plotly::subplot(
    ..., nrows = nrows, widths = widths, heights = heights,
    margin = margin, shareX = shareX, shareY = shareY,
    titleX = titleX, titleY = titleY, which_layout = which_layout
  )
  plots$sizingPolicy$padding <- 0
  plots
}

# # Backup -   -   -   -   -   -   -   -   -   -   -
# https://stackoverflow.com/questions/37923581/grouped-line-plots-in-plotly-r-how-to-control-line-color
# p <- plot_ly()
# walk2(
#   unique(tx5$city),
#   viridisLite::viridis(5),
#   ~ {
#     p <<- p %>%
#       add_trace(tx5[city == .x], x = ~date, y = ~median,
#                 type = 'scatter', mode = 'markers+lines',
#                 marker = list(color = .y),
#                 line   = list(color = .y), evaluate = TRUE)
#   }
# )
# #  -   -   -   -   -   -   -   -   -   -   -   -
