# Setup  -----------------------------------------

library(ggplot2)
library(workflow)
library(theme)

# General ------------------------------------------

p2 <- ggplot(diamonds) +
  geom_point(aes(carat, price, color = cut)) +
  scale_y_continuous(label = scales::dollar) +
  guides(color = guide_legend(reverse = TRUE)) +
  labs(title = "Prices of 50,000 round cut diamonds by carat and cut",
       x = "Weight (carats)",
       y = "Price in US dollars",
       color = "Quality of the cut")

p2 + scale_color_elegant_dark_d()
p2 + scale_color_elegant_dark_d('art_red_green')
p2

# Color ------------------------------------------

p <- ggplot(mpg, aes(displ, hwy, colour = class)) +  geom_point()

p2 <- ggplot(diamonds) +
  geom_point(aes(carat, price, color = cut)) +
  scale_y_continuous(label = scales::dollar) +
  guides(color = guide_legend(reverse = TRUE)) +
  labs(title = 'Prices of 50,000 round cut diamonds by carat and cut',
       x     = 'Weight (carats)',
       y     = 'Price in US dollars',
       color = 'Quality of the cut')

# Iterate:

# Change colors at theme_vals.R
# - add/edit/remove colors at 'Theme vals' section
# - add/edit/remove colors at 'pals_elegant_*' section

load_all()

# Preferred choice
p + scale_color_elegant_dark_d('material_indigo_pink')
p2 + scale_color_elegant_dark_d('material_indigo_pink_dark')

# Secondary choice
p  + scale_color_elegant_dark_d('art_red_green')
p2 + scale_color_elegant_dark_d('art_red_green')

# Scales -----------------------------------------

# Col, discrete
p1 <- ggplot(mpg, aes(displ, hwy, colour = class)) +  geom_point()
# Col, cont
p2 <- ggplot(mpg, aes(displ, hwy, color = cyl)) + geom_point()
# Fill, discrete
p3 <- ggplot(mtcars, aes(factor(cyl), fill = factor(vs))) + geom_bar()
# Fill, cont
p4 <- ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
  geom_raster()

library(patchwork) ; (p1 + p2) / (p3 + p4) ; p()

# `theme::geom_line` -----------------------------

# _ ggplot ---------------------------------------

n_lvl <- c(1, 2, 4, 6, 7)
# Test scale_color_*
Reduce(`+`, lapply(n_lvl, function(x) {
  dt <- data.table(txhousing)[city %in% unique(city)[1 : x ]]
  ggplot(dt, aes(date, median, color = city)) + geom_line()
})) %>% p()
# Test scale_fill_*
Reduce(`+`, lapply(n_lvl, function(x) {
  dt <- data.table(mtcars)[carb %in% unique(carb)[1 : x ]]
  ggplot(mtcars, aes(factor(vs), fill = factor(carb, 1 : x ))) +
    geom_bar()
})) %>% p()

# _ plotly ---------------------------------------

# Test scale_color_*
subplot(nrows = 2, lapply(n_lvl, function(x) {
  dt <- data.table(txhousing)[city %in% unique(city)[1 : x ]]
  p <- ggplot(dt, aes(date, median, color = city)) + geom_line()
  ggplotly()
}))

# _ Geom -----------------------------------------

library(ggplot2) ; library(theme) ; library(patchwork)
theme::theme_ggplot_elegant_dark()

p0 <- ggplot(mtcars, aes(mpg, wt))                                    

p1 <- ggplot(diamonds, aes(carat)) + geom_histogram()
p2 <- ggplot(mtcars, aes(mpg, factor(disp))) + geom_col() 
p3 <- p0 + geom_point() + geom_smooth()
p4 <- p0 + geom_line()
(p1 + p2) / (p3 + p4)


# _ TODO  ----------------
# Col, discrete: character works
p <- ggplot(diamonds, aes(carat, price, color = cut)) + geom_point()
# TODO Col, discrete: factor not working: `scale_*` issues?
p <- ggplot(diamonds, aes(carat, price, color = as.character(cut))) + geom_point()
# but this works
p2 + scale_color_elegant_dark_d()

# Col, cont
p <- ggplot(diamonds, aes(carat, price, color = depth)) + geom_point()

# Execute
theme_ggplot_elegant_dark()  ; p
theme_ggplot_elegant_light() ; p

# TODO Test `theme_ggplot_raw()`
library(shiny)
shinyApp(

  tagList( plotOutput('a'), plotOutput('b') ),

  function(input, output) {
    theme_ggplot_elegant_dark()
    output$a <- renderPlot(
      ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species)) +
        geom_point()
    )
    output$b <- renderPlot(
      ggplot(mtcars, aes(factor(cyl), fill = factor(vs))) +
        geom_bar()
    )
  }
)
