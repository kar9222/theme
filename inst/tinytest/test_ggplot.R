using(ttdo)

# Env --------------------------------------------

expect_equal_xl(environmentName(environment(scale_colour_continuous)), 'theme')
expect_equal_xl(environmentName(environment(scale_fill_continuous)),   'theme')
expect_equal_xl(environmentName(environment(scale_colour_discrete)),   'theme')
expect_equal_xl(environmentName(environment(scale_fill_discrete)),     'theme')

# Theme ------------------------------------------

expect_equal_xl(theme_ggplot_name, 'elegant_dark')  # Test default theme
theme_ggplot_elegant_light()
expect_equal_xl(theme_ggplot_name, 'elegant_light')
theme_ggplot_elegant_dark()
expect_equal_xl(theme_ggplot_name, 'elegant_dark')


# Scales -----------------------------------------
expect_equal_xl(ls('env_theme_ggplot'), c(
  'scale_colour_continuous', 'scale_colour_discrete',
  'scale_fill_continuous', 'scale_fill_discrete',
  'theme_ggplot_name'
))

# Geom -------------------------------------------

theme::theme_ggplot_elegant_dark()

def_aes <- function(geom, aes)
  # or p1$layers[[1]]$geom$default_aes
  ggplot2:::check_subclass(geom, 'Geom')$default_aes[[aes]]
col <- function(col) theme_vals_elegant_dark(col)

expect_equal_xl(def_aes('bar',    'fill'),   col('col_5_3'))
expect_equal_xl(def_aes('col',    'colour'), col('col_5_3'))
expect_equal_xl(def_aes('col',    'fill'),   col('col_5_3'))

expect_equal_xl(def_aes('point',   'colour'), col('col'))
expect_equal_xl(def_aes('line',    'colour'), col('col'))
expect_equal_xl(def_aes('smooth',  'colour'), col('col'))
expect_equal_xl(def_aes('smooth',  'fill'),   col('col_5'))
expect_equal_xl(def_aes('area',    'colour'), col('col_5_3'))
expect_equal_xl(def_aes('area',    'fill'),   col('col_5_3'))
expect_equal_xl(def_aes('density', 'colour'), col('col'))
expect_equal_xl(def_aes('ribbon',  'fill'),   col('col_5'))
expect_equal_xl(def_aes('ribbon',  'alpha'),  .3)

expect_equal_xl(def_aes('hline', 'colour'),   col('col_2'))
expect_equal_xl(def_aes('vline', 'colour'),   col('col_2'))
expect_equal_xl(def_aes('segment', 'colour'), col('col_2'))
expect_equal_xl(def_aes('text', 'colour'),    col('col_13'))

# library(ggdist) ; devtools::load_all()  # TODO
expect_equal_xl(def_aes('slabinterval', 'fill'),            col('col_5_3'))
expect_equal_xl(def_aes('slabinterval', 'interval_colour'), col('col_13'))
expect_equal_xl(def_aes('slabinterval', 'point_colour'),    col('col_13'))
expect_equal_xl(def_aes('lineribbon',   'colour'),          col('selection_2'))

# TODO Geom missing?
# expect_equal_xl(def_aes('dagedgepath', 'colour'), col('col_5_3'))
# expect_equal_xl(def_aes('lineribbon', 'colour'), col('col_5_2'))

# TODO  ------------------------------------------

# ggplot(diamonds, aes(price, colour = cut)) +
#   geom_freqpoly(binwidth = 500)
