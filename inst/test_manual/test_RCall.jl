#' MANUALLY Start `jl`

using Pkg
cd("/home/kar/project/notebook/reports/02__stats/stats_rethinking/StatsRethinking")
Pkg.activate(".")

using RCall
@rlibrary ggplot2
@rlibrary ggdist
@rlibrary theme
reval("suppressMessages(library(theme))");

R"packageVersion('theme')"
@rlibrary utils
packageVersion("theme")

ggplot() + stat_halfeye(aes(randn(100)))
