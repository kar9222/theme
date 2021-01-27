# TODO Pkg this?

options(shiny.port = workflow::port_shiny())
options(shiny.launch.browser = workflow::run_app)
options(shiny.autoreload = TRUE)
# shiny::runApp('tests/manual/test_plotly_shiny.R')
shiny::runApp('R')
