% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_func.R
\name{custom_line_geometry}
\alias{custom_line_geometry}
\alias{geom_line}
\alias{add_lines}
\title{Custom line geometry}
\usage{
geom_line(..., max_n_colors = 6)

add_lines(p, ..., colors, max_n_colors = 6)
}
\arguments{
\item{...}{Arguments passed to \code{ggplot::geom_line} or \code{plotly::add_lines}}

\item{max_n_colors}{Defaults to 'n' argument of \verb{theme::scale_line_*}. Increase it for using default scales for higher number of traces, at the cost of lower perception.}

\item{p}{(none)}

\item{colors}{Generally, it's hard to perceive >= 8 different colors/linetypes/etc.#'
\itemize{
\item When argument is missing and number of traces <= (max_n_colors default of 6), it defaults to predefined scales.#'
\item When argument is missing and number of traces > (max_n_colors defaults of 6), it inherits scales from previous plotly objects.#'
\item Otherwise, it can be specified (see {theme} & plotly docs).
}}
}
\description{
Wrapper for theming \code{ggplot::geom_line} and \code{plotly::add_lines}
}
\note{
Use \code{conflicted::conflict_prefer}
}
\references{
\href{https://stackoverflow.com/questions/34680792/ggplot2-2-0-new-stat-function-setting-default-scale-for-given-aesthetics}{ggplot2 2.0 new stat_ function: setting default scale for given aesthetics}
}
