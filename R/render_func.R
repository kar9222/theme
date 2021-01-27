#' Custom shiny rendering functions
#' 
#' Wrapper for theming `shiny::renderPlot` & `plotly::renderPlotly`
#'
#' @param expr *theme_switcher_val* from {shinyr} is called for updating plot after switching theme on input.
#' @param ... (none)
#'
#' @note Wrapper for `plotly::renderPlotly` doesn't work, hence `theme::renderPlotly` is used.
#' @note How does `theme::renderPlotly` updates ggplot theme from `theme::renderGGplot`
#' @note Use `conflict_prefer`
#'
#' @name renderFunc
NULL

#' @rdname renderFunc
#' @export
renderPlot <- function(expr, ...) {
  shiny::renderPlot(
    quoted = TRUE, env = parent.frame(), ..., expr = {
      rlang::expr({
        theme_switcher_val() ; theme_ggplot() ; !!rlang::enexpr(expr)
      })
    }
  )
}

#' @rdname renderFunc
#' @export
renderPlotly <- function(expr, ...) {
  plotly::renderPlotly(
    quoted = TRUE, env = parent.frame(), ..., expr = {
      rlang::expr({
        theme_switcher_val() ; theme_ggplot() ; !!rlang::enexpr(expr)
      })
    }
  )
}

# # Backup  -   -   -   -   -   -   -   -   -
# renderPlotly <- function (expr, env = parent.frame(), quoted = FALSE) {
#
#   # TODO `theme::suppress_plotly_msg`
#   # options(warn = - 1) ; on.exit( options(warn = 0) )
#
#   # Copy from source -   -   -   -   -   -   -   -
#   # except `expr <- substitute(...)`
#
#   if (!quoted) {
#     quoted <- TRUE
#     expr <- substitute({ theme_switcher_val() ; theme_ggplot() ; expr })
#   }
#   shiny::installExprFunction(expr, "func", env, quoted)
#   expr <- quote(getFromNamespace("prepareWidget", "plotly")(func()))
#   local_env <- environment()
#   renderFunc <- htmlwidgets::shinyRenderWidget(expr, plotlyOutput,
#                                                local_env, quoted)
#   shiny::snapshotPreprocessOutput(renderFunc, function(value) {
#     json <- from_JSON(value)
#     json$x <- json$x[setdiff(names(json$x), c("visdat",
#       "cur_data", "attrs"))]
#     to_JSON(json)
#   })
# }
# #   -   -   -   -   -   -   -   -   -   -   -   -

# # Backup -   -   -   -   -   -   -   -   -   -   -
# render_ggplotly <- function(expr, ...) {
#   # 'theme_switcher_val' is updated by `theme::renderPlotly`
#   theme::renderPlotly( expr = { theme_ggplot() ; theme::ggplotly(expr) }, ... )
# }
# #   -   -   -   -   -   -   -   -   -   -   -   -
