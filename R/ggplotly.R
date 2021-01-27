#' Convert ggplot2 to plotly (Custom docs: Theming `ggplotly`)
#'
#' This function converts a [ggplot2::ggplot()] object to a
#' plotly object.
#'
#' @details Conversion of relative sizes depends on the size of the current graphics device (if no device is open, width/height of a new (off-screen) device defaults to 640/480). In other words, `height` and `width` must be specified at runtime to ensure sizing is correct.
#' For examples on how to specify the output container's `height`/`width` in a shiny app, see `plotly_example("shiny", "ggplotly_sizing")`.
#'
#' @param p a ggplot object. (Custom docs: Accepts either `ggplot` or `ggplotly`. For `ggplot`, it's converted to `ggplotly` internally.)
#' @param width Width of the plot in pixels (optional, defaults to automatic sizing).
#' @param height Height of the plot in pixels (optional, defaults to automatic sizing).
#' @param tooltip a character vector specifying which aesthetic mappings to show in the tooltip. The default, "all", means show all the aesthetic mappings (including the unofficial "text" aesthetic). The order of variables here will also control the order they appear. For example, use `tooltip = c("y", "x", "colour")` if you want y first, x second, and colour last.
#' @param dynamicTicks should plotly.js dynamically generate axis tick labels? Dynamic ticks are useful for updating ticks in response to zoom/pan interactions; however, they can not always reproduce labels as they would appear in the static ggplot2 image.
#' @param layerData data from which layer should be returned?
#' @param originalData should the "original" or "scaled" data be returned?
#' @param source a character string of length 1. Match the value of this string with the source argument in [plotly::event_data] to retrieve the event data corresponding to a specific plot (shiny apps can have multiple plots).
#' @param ... arguments passed onto methods.
#'
#' @param theme_vals_ls (none)
#' @param theme_Vals    (none)
#' @param marker_size   (none)
#'
#' @note For shiny, use `theme::renderPlotly( theme::ggplotly({...}))`
#' @note Most docs are copied from `plotly::ggplotly`
#'
#' @references \url{https://plot.ly/ggplot2}
#' @seealso [plot_ly()]
#' @examples \dontrun{
#' # simple example
#' ggiris <- qplot(Petal.Width, Sepal.Length, data = iris, color = Species)
#' ggplotly(ggiris)
#'
#' data(canada.cities, package = "maps")
#' viz <- ggplot(canada.cities, aes(long, lat)) +
#'   borders(regions = "canada") +
#'   coord_equal() +
#'   geom_point(aes(text = name, size = pop), colour = "red", alpha = 1/2)
#' ggplotly(viz, tooltip = c("text", "size"))
#'
#' # linked scatterplot brushing
#' d <- highlight_key(mtcars)
#' qplot(data = d, x = mpg, y = wt) %>%
#'   subplot(qplot(data = d, x = mpg, y = vs)) %>%
#'   layout(title = "Click and drag to select points") %>%
#'   highlight("plotly_selected")
#'
#'
#' # more brushing (i.e. highlighting) examples
#' demo("crosstalk-highlight-ggplotly", package = "plotly")
#'
#' # client-side linked brushing in a scatterplot matrix
#' highlight_key(iris) %>%
#'   GGally::ggpairs(aes(colour = Species), columns = 1:4) %>%
#'   ggplotly(tooltip = c("x", "y", "colour")) %>%
#'   highlight("plotly_selected")
#' }
#'
#' @export

# TODO Use `toWebGL` ?
ggplotly <- function(

  # Default params -------------------------------

  p = ggplot2::last_plot(), width = NULL, height = NULL,
  tooltip = 'all', dynamicTicks = FALSE, layerData = 1,
  originalData = TRUE, source = 'A', ...,

  # Theme params ---------------------------------

  theme_vals_ls = get_theme_vals_ls(),
  theme_vals = theme_vals_ls$theme_vals,
  marker_size = 3
) {
  if ( ! any(class(p) == 'plotly') ) # TODO Why this?
    p <- plotly::ggplotly(
      p = p, width = width, height = height, tooltip = tooltip,
      dynamicTicks = dynamicTicks, layerData = 1,
      originalData = originalData, source = source, ...
    )
  try(silent = TRUE, { if (p$x$data[[1]]$mode %like% 'markers')
      p <- plotly::style(p, marker.size = marker_size)
  })
  plotly_shared_themes(p, theme_vals)
}
