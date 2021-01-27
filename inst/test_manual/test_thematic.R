
# {thematic} ----

library(thematic) ; library(ggplot2)

thematic_on(
  bg = "#222222", fg = "white", accent = "#0CE3AC",
  font = font_spec("Oxanium", scale = 1.25)
)

ggplot(mtcars, aes(wt, mpg)) +
  geom_point(aes(color = factor(cyl))) +
  geom_smooth(color = "white")

ggplot(diamonds, aes(price, colour = cut)) +
  geom_freqpoly(binwidth = 500)