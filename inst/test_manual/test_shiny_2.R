# TODO Template this?

# Setup ------------------------------------------

suppressMessages({ suppressWarnings({
  library(shiny)
  library(plotly)
  library(glue)  # for what?
  library(ggplot2)
  library(data.table)
  library(theme)
  library(shinydashboard)
  library(shinydashboardPlus)
  library(shinyr)
  library(tidyverse)
  library(magrittr)
  # library(interactive)
}) })

suppressMessages({
  conflicted::conflict_prefer('box'         , 'shinydashboard')
  conflicted::conflict_prefer('layout'      , 'plotly') # crayon
  conflicted::conflict_prefer('style'       , 'plotly') # graphics
  conflicted::conflict_prefer('ggplotly'    , 'theme')  # plotly
  conflicted::conflict_prefer('plot_ly'     , 'theme')  # plotly
  conflicted::conflict_prefer('add_lines'   , 'theme') # plotly
  conflicted::conflict_prefer('renderPlot'  , 'theme') # plotly
  conflicted::conflict_prefer('renderPlotly', 'theme') # plotly
  conflicted::conflict_prefer('subplot'     , 'theme') # plotly
  conflicted::conflict_prefer('geom_line'   , 'theme') # ggplot
})

# shiny_source_r() # DEBUG

# Shiny ------------------------------------------

ui <- function() {

  dashboardPage(
    dashboardHeader(title = "Basic dashboard"),
    dashboardSidebar( theme_switcher_in() ),
    dashboardBody(
      theme_switcher_out(),
      # Theme
      uiOutput('ggplot_theme'), uiOutput('ggplot_scales'),

      # General ---------------------------------

      fluidRow( box(title = 'haha', width = 12,
                    plotOutput('ggplot_')) ),
      fluidRow( box(title = 'ggplotly_', width = 12,
                    plotlyOutput('ggplotly_')) ),
      fluidRow( box(title = 'plotly_', width = 12,
                    plotlyOutput('plotly_')) ),

      fluidRow( box(title = 'plotly_colorway', width = 12,
                    plotlyOutput('plotly_colorway')) ),

      # add_func ---------------------------------

      fluidRow(
        box(width = 4, selectInput(
          'n_trace0', 'Num of trace 0',
          c(1, 2, 4, 6, 10, 20), selected = 4
        )),
        box(title = 'ggplotly_geom_line', width = 12,
            plotlyOutput('ggplotly_geom_line'))
      ),
      fluidRow(
        box(width = 4, selectInput(
          'n_trace', 'Num of trace',
          c(1, 2, 4, 6, 10, 20), selected = 4
        )),
        box(title = 'plotly_add_lines', width = 12,
            plotlyOutput('plotly_add_lines'))
      )
    )
  )
}

se <- function(input, output, session) {

  theme_switcher()

  # General --------------------------------------

  output$ggplot_ <- renderPlot({
    ggplot(mtcars, aes(factor(cyl), fill = factor(vs))) + geom_bar()
  })
  output$ggplotly_ <- renderPlotly( ggplotly({
    ggplot(mpg, aes(displ, hwy, colour = class)) + geom_point()
  }))
  output$plotly_ <- renderPlotly({
    plot_ly(mpg, x = ~cty, y = ~hwy, color = ~cyl) %>% add_markers()
  })

  output$plotly_colorway <- renderPlotly({
    p1 <- plot_ly(diamonds, x = ~price) %>%
      add_histogram(name = "plotly.js")

    price_hist <- function(method = "FD") {
      h <- hist(diamonds$price, breaks = method, plot = FALSE)
      plot_ly(x = h$mids, y = h$counts) %>% add_bars(name = method)
    }
    subplot(
      p1, price_hist(), price_hist("Sturges"),  price_hist("Scott"),
      nrows = 4, shareX = T, shareY = T
    )
  })

  # add_func -------------------------------------

  output$ggplotly_geom_line <- renderPlotly({ ggplotly({
    dt <- data.table(txhousing)[city %in% unique(city)[1:input$n_trace0]]
    ggplot(dt, aes(date, median, color = city)) + geom_line()
  })})

  output$plotly_add_lines <- renderPlotly({
    dt <- data.table(txhousing)[city %in% unique(city)[1:input$n_trace]]
    plot_ly(dt, x = ~date, y = ~median, color = ~city) %>%
      add_lines() %>% rangeslider() %>% layout(title = 'abc')
  })
}

shinyApp(ui, se)
