# colors -----------------------------------------

# Scatter
plot_ly(data = iris, x = ~Sepal.Length, y = ~Petal.Length,
       color = ~Species) %>%
  add_markers()
# Line
dt <- data.table(txhousing)[city %in% unique(city)[1:4]]
plot_ly(dt, x = ~date, y = ~median, color = ~city) %>% add_lines()

# 'p$x$attrs[[1]]$marker$colorscale' -------------

# Bar
plot_ly(airquality %>% group_by(Month) %>% summarise(total = sum(Wind)),
       x = ~Month, y = ~total,
       type = 'bar',
       marker = list(color = ~total))

# `theme::add_lines` -----------------------------

lapply(c(2, 4, 6, 10), function(n_trace) {  # `~` not working
  dt <- data.table(txhousing)[city %in% unique(city)[1:n_trace]]
  plot_ly(dt, x = ~date, y = ~median, color = ~city) %>% add_lines()
}) %>%
  subplot(nrows = 2)

# 'colorway' argument ----------------------------

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

# Others -----------------------------------------

plot_ly(diamonds, x = ~cut)
# TODO histogram of plotly not working in shiny?
plot_ly(diamonds, x = ~cut, y = ~clarity)
plot_ly(diamonds, x = ~cut, y = ~clarity, color = ~clarity)
