# Theme vals elegant dark -----------------------

#' Theme values for font colors, background colors, font styles, etc
#'
#' (none)
#'
#' @param ... Names of theme_vals
#'
#' #' @references For 'elegant_light', see [polar](https://github.com/mtyn/polar)
#'
#' @name theme_vals
NULL

#' @rdname theme_vals
#' @export
theme_ <- function(...) {
  theme_ggplot_name <- get('theme_ggplot_name', 'env_theme_ggplot')
  theme_vals <- match.fun(paste0('theme_vals_', theme_ggplot_name))
  theme_vals(...)
}

#' @rdname theme_vals
#' @export
# TODO Remove
elegant_dark <- function(...) { theme_vals_elegant_dark(...) }

# TODO: Some colors (ie hover_bg used in RStudio and VSCode
# themes are not recorded here. Fix it.)
# TODO Standardize plot colors for ggplot & plotly?
# - 'button_hover' not specified (ie for  temporarily using 'selection'
# for RStudio theme)

#' @rdname theme_vals
#' @export
theme_vals_elegant_dark <- function(...) {

  # Theme vals ----------------------------

  theme_vals <- c(

    # _ General ---------------------------------

    # TODO: 'TODO' tag means chg colors for bookdown, shiny, etc
    # ratio of RG/GB of 'bg_1' is ~ 2.0
    # ratio of RG/GB of others is ~ 3.0

    # Core

    'bg'              = '#282C34',    # prev #282a36 TODO
    'bg_2'            = '#262A30',    # L - 3,
    # 'bg_2'            = '#262A32',    # L - 2, blue-er
    'bg_3'            = '#262A30',

    'fg'              = '#f8f8f2',
    'fg_2'            = '#f8f8f2',
    'fg_3'            = '#D8DEE9',
    'fg_4'            = '#E5E9F0',

    'col'             = '#DCE5EC',
    'col_1_2'         = '#DBE0FC',  # prev #D9DEFF
    'col_2'           = '#E6DB7F',
    'col_2_2'         = '#EDE6A1',
    'col_2_3'         = '#F3EEC3',
    'col_3'           = '#E6DB7F',
    'col_4'           = '#B8DDE6',
    'col_4_try_rmd'   = '#BADBE6',
    # 'col_4'           = '#B5E0E6', # prev  '#FFA1AA',
    'col_4_2'         = '#34A0A8',
    'col_4_3'         = '#40BBC4',

    'col_5'           = '#6E7C98',
    'col_5_2'         = '#434C5F', # L - 20
    'col_5_3'         = '#8299B6',
    'col_5_4'         = '#CBCDEE',
    'col_6'           = '#909BB0',

    'col_7'           = '#bec5d3',

    'col_8'           = '#2C313A',

    'col_9'           = '#FFA1AA',
    'col_10'          = '#E4CAAF',
    'col_11'          = '#303F9F',
    'col_12'          = '#BBC895',

    # VSCode
    'col_13'          = '#dadad4',
    'col_13_2'        = '#bebeb4',
    'col_13_3'        = '#c7c7bf',
    'col_13_3'        = '#999989',
    'col_13_3'        = '#8b8b79',

    # Misc

    # TODO rename `selection` param?
    'selection'       = '#444958', #prev #44475a TODO
    'selection_2'     = '#1F454F',

    'selected_bg'     = '#31343E', # prev #44475a TODO
    'selected_fg'     = '#c7c7bf',

    'hover_bg'        = '#2d3039', # prev #313341 TODO
    'hover_bg_2'      = '#31343F',
    'hover_bg_3'      = '#323642',
    'hover_fg'        = '#c7c7bf',
    'hover_bg_table'  = '#333841',

    'border'          = '#31343E', # prev #313341 TODO
    'border_2'        = '#393E4D', # prev #393C4D TODO

    'scrollbar'       = '#393E4D',
    'scrollbar_hover' = '#424758',  # L + 10

    # 'shadow_bg'         = '#3F4453', # prev #3F4255 TODO
    'shadow_bg'       = '#1e2026', # prev #3F4255 TODO
    'shadow_size'     = '2px 2px 2px',
    # Backup. TODO: Shiny doesn't use shadow, bookdown uses shadow
    # Parameterize bookdown shadow using diff names? If so, change
    # other themes' names too
    # 'shadow_bg'       = '#3F4453', # prev #3F4255 TODO
    # 'shadow_size'     = '3px 3px 3px',

    # ??              = '#515F8D'  # `comment - 20`

    # Nord theme
    # 'comment'       = '#6E7C98'
    # 'comment_2'     = '#5C6982'    # L - 20
    # 'comment_2_b'   = '#434C5F'  # L - 50
    # 'operator'      = '#909BB0'

    # RStudio

    'border_opague'   = '#ffa1aa33',

    'button'          = '#8299B6',
    'button_2'        = '#3E8853',
    'button_3'        = '#E51947',
    'button_4'        = '#B2E3E7',

    'button_5'        = '#009987',
    'button_6'        = '#C8324D',

    # ___ Contrast  -------------------------------

    'contrast_1' = '#E6DB7F',
    'contrast_2' = '#B8DDE6',
    'contrast_3' = '#6E7C98',
    'contrast_4' = '#DCE5EC',
    'contrast_5' = '#FFA1AA',
    'contrast_6' = '#E4CAAF',
    'contrast_7' = '#303F9F',
    'contrast_8' = '#BBC895',

    # ___ Shiny ---------------------------------

    'bg_box' = '#282C34',

    # 'shiny_title_text' = '#8299B6',

    'shiny_sidebar_border' = '#2F323B',

    'shiny_box_content_fg' = '#E6DB7F',

    'shiny_box_shadow_bg' = '#262A30',

    'shiny_selectize_dropdown_header_fg' = '#8299B6',

    # ___ Bookdown ------------------------------

    # Nord: https://www.nordtheme.com/docs/colors-and-palettes
    'bg'                   = '#2E343F',
    'fg'                   = '#f9f5e8',
    'wild_blue'            = '#AAB9CD',
    'light_wild_blue'      = '#D8DEE9',

    # _ Others --------------------------

    # ___ Alethio   -----------------------------

    'alethio_yellow'       = '#F5D560',
    'alethio_red'          = '#F26D6F',
    'alethio_blue'         = '#2072F7',
    'alethio_wild_blue'    = '#8299B6',

    # ___ Dash ----------------------------------

    'dash_bg'              = '#161A27',      # 22 26 39 | 29
    'dash_bg_2'            = '#1E212F',    # 30 33 47 | 37
    'dash_fg'              = '#F3F5F4',      # 243 245 244 wrong?
    'dash_yellow'          = '#F5D560',
    'dash_red'             = '#F85263',
    'dash_green'           = '#8EE0D3',

    # ___ Material ------------------------------

    'material_bg'          = '#121212',   # 18 18 18 | 18
    'material_bg_2'        = '#1E1E1E', # 30 30 30 | 30

    'material_green'       = '#00DAC6',
    'material_purple'      = '#C58EFA',
    'material_purple_blue' = '#3800AD',
    # this red is bad?
    'material_red'         = '#D2677A',

    # ___ material_indigo_pink ------------------

    # [Material Design towards the Dark Side on Wear 2.0](https://blog.prototypr.io/https-medium-com-luiginotaro-material-design-going-dark-2ae81aa44aa5)

    # My color choices are diff than Material system
    # due to diff purposes (see palettes for my choices)

    'indigo_500'           = '#3F51B5',  # Primary
    'pink_a200'            = '#F48FB1',  # Accent
    'indigo_100'           = '#C5CAE9',  #
    'indigo_700'           = '#303F9F',  #

    # ___ art_red_green -------------------------

    'art_red'              = '#A61320',
    'art_green_medium'     = '#BBC895',
    'art_green_light'      = '#EBF2D1',

    # ___ gold_dark_purple ----------------------

    # from {fst} README.Rmd
    # scale_fill_manual(values = colorRampPalette(c("#FBE3A5", "#433B54"))(10)[10:3])

    # ___ Me ------------------------------

    # search material design by #8299b6
    'my_wild_blue'         = '#b3c5db',
    'my_wild_gold'         = '#d8c4ab',
    'my_wild_green'        = '#82b3b6',
    'my_wild_red'          = '#b68299',
    # 'my_wild_purple'     = '#8582b6',

    'elegant_yellow'       = '#E6DB7F',
    'elegant_green'        = '#B2E3E7',
    'elegant_wild_blue'    = '#8299B6',
    'elegant_dark_yellow'      = '#cead00',

    # use 'wild_blue' #8299b6 as primary color
    # link: https://material.io/design/color/the-color-system.html#tools-for-picking-colors
    'wild_blue' = '#8299b6',
    'wild_gold' = '#b69f82',
    'wild_green' = '#82b3b6',
    'wild_purple' = '#8582b6',
    'wild_red' = '#b68299',

    'monokai_yellow'       = '#ffd04d',
    'elegant_light_green'  = '#009998',
    'elegant_dark_green_more_intense' = '#A6EEF4',
    'owl_pink'             = '#ff0266'
  )

  # Extract vals ------------------------------

  val_names <- c(...)
  if (is.null(val_names)) return(theme_vals)
  theme_vals[val_names] %>% unname()  # TODO
}

#' Return function to interpolate a color palette
#'
#' @param palette Character name of palette in palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param n (none)
#' @param ... Additional arguments to pass to colorRampPalette()
#'
#' @references [Creating corporate colour palettes for ggplot2](https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2)
#'
#' @name pals
NULL

#' @rdname pals
#' @export
pals_elegant_dark <- function(palette = 'main_light',
                              reverse = FALSE, n, # TODO
                              ...) {

  pal_vals <- list(

    'main' = theme_vals_elegant_dark(

      'col_2_2',
      'col_4_2',
      'col_5'
    ),
    'contrast' = theme_vals_elegant_dark(

      'contrast_1',
      'contrast_2',
      'contrast_3',
      'contrast_4',
      'contrast_5',
      'contrast_6',
      'contrast_7',
      'contrast_8'
    ),
    'main_dark' = theme_vals_elegant_dark(

      'col_2_2',
      'col_4_2',
      'col_5_2'
    ),
    'main_light' = theme_vals_elegant_dark(

      'col_2_3',
      'col_4_3',
      'col_5'
    ),
    'green_grey_red' = theme_vals_elegant_dark(
      'dash_red',
      'col_5_2',
      'dash_green'
    ),
    'material_indigo_pink'       = theme_vals_elegant_dark(

      'pink_a200',
      'indigo_100',
      'indigo_500'
    ),
    'material_indigo_pink_dark'  = theme_vals_elegant_dark(

      'pink_a200',
      'indigo_100',
      'indigo_700'
    ),
    'art_red_green'              = theme_vals_elegant_dark(

      'art_red',
      # 'art_green_medium',
      'art_green_light'
    ),
    'material_green_purple'      = theme_vals_elegant_dark(

      'material_green',
      'material_purple',
      'material_purple_blue'
    ),
    'alethio'                    = theme_vals_elegant_dark(

      'alethio_yellow',
      'alethio_wild_blue',
      'alethio_blue',
      'alethio_red'
    ),
    'dash'                       = theme_vals_elegant_dark(

      'dash_yellow',
      'dash_red',
      'dash_green'
    ),
    'elegant_green_yellow_wild_blue' = theme_vals_elegant_dark(

      'elegant_green',
      'elegant_yellow',
      'col_5_2'
    ),
    'elegant_green_wild_blue' = theme_vals_elegant_dark(

      'elegant_green',
      'alethio_wild_blue',
      'col_5_2'
    ),
    'elegant_wild' = theme_vals_elegant_dark(

      'wild_blue',
      'wild_gold',
      'wild_green',
      'wild_purple',
      'wild_red'
    ),
    'line' = scale_line_elegant_dark()
  )

  pal <- pal_vals[[palette]]
  if ( ! missing(n)) pal <- pal[1:n]
  if (reverse) pal <- rev(pal)
  colorRampPalette(pal, ...)
}

#' Color and fill scale constructor for colors
#'
#' @param palette Character name of palette in drsimonj_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param n (none)
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#'
#' @name scales
NULL

#' @rdname scales
#' @export
scale_color_elegant_dark_d <- function(palette = 'main_light',
                                       reverse = FALSE, n,
                                       ...) {
  pal <- pals_elegant_dark(palette = palette, reverse = reverse, n = n)
  discrete_scale('colour', paste0('elegant_dark_', palette),
                 palette = pal, ...)
}

#' @rdname scales
#' @export
scale_color_elegant_dark_c <- function(palette = 'main_light',
                                       reverse = FALSE, n,
                                       ...) {
  pal <- pals_elegant_dark(palette = palette, reverse = reverse, n = n)
  scale_color_gradientn(colours = pal(256), ...)
}

#' @rdname scales
#' @export
scale_fill_elegant_dark_d <- function(palette = 'main_light',
                                      reverse = FALSE, n,
                                      ...) {
  pal <- pals_elegant_dark(palette = palette, reverse = reverse, n = n)
  discrete_scale('fill', paste0('elegant_dark_', palette),
                 palette = pal, ...)
}

#' @rdname scales
#' @export
scale_fill_elegant_dark_c <- function(palette = 'main_light',
                                      reverse = FALSE, n,
                                      ...) {
  pal <- pals_elegant_dark(palette = palette, reverse = reverse, n = n)
  scale_fill_gradientn(colours = pal(256), ...)
}

#' @rdname scales
#' @export
scale_line_elegant_dark <- function(n = 6) {
  cols <- c(theme_vals_elegant_dark('col_2'),
            theme_vals_elegant_dark('col_4'),
            theme_vals_elegant_dark('col_5'),
            theme_vals_elegant_dark('col'),
            theme_vals_elegant_dark('col_9'),
            theme_vals_elegant_dark('col_10'))
            # theme_vals_elegant_dark('col_11'),
            # theme_vals_elegant_dark('col_12'),
            # theme_vals_elegant_dark('fg'))
  cols[1:n]
}

# Theme vals elegant light -----------------------

#' @rdname theme_vals
#' @export
theme_vals_elegant_light <- function(...) {

  # Theme vals ----------------------------

  theme_vals <- c(

    # _ General ---------------------------------

    # Core

    'bg'              = '#f9f5e8',
    'bg_2'            = '#FFFFFF',
    'bg_3'            = '#f9f5e8',

    'fg'              = '#333333',
    'fg_2'            = '#000000',
    'fg_3'            = '#333333',

    'col'             = '#03224B',
    # 'col'             = '#051F9B',
    # TODO Tmp swap 'col_2' & 'col_3' for {kar_capital}
    'col_2'           = '#009998',
    'col_3'           = '#E51947',
    # 'col_2'           = '#E51947',
    # 'col_3'           = '#009998',
    'col_4'           = '#03224B',

    'col_5'           = '#999989',
    'col_5_2'         = '#C7C7BF',
    'col_5_3'         = '#81816F',
    'col_5_4'         = '#6C6C5C',
    'col_6'           = '#999989',

    'col_7'           = '#515145',
    'col_8'           = '#E6EAF0',

    'col_9'           = '#440154',
    'col_10'          = '#FDE725',
    'col_11'          = '#6E7C98',
    'col_12'          = '#D0A274',

    # Misc

    'selection'       = '#D9E8F8',
    'selection_2'     = '#F7EEDD',

    # 'selected_bg'     = '#E8F0F2',   # TODO
    'selected_fg'     = '#009998',

    'hover_bg'        = '#E6EAF0',
    'hover_bg_2'      = '#DFE4ED',
    'hover_fg'        = '#009998',
    'hover_bg_table'  = '#EBEEF3',

    'border'          = '#DFE4ED',
    'border_2'        = '#D3DAE5',

    'scrollbar'       = '#D3DAE5',
    'scrollbar_hover' = '#C6CFDE',

    'shadow_bg'       = '#CAD2E0',
    'shadow_size'     = '3px 3px 3px',

    # RStudio

    'border_opague'   = '#00999833',

    'button'          = '#E3E3DF',
    'button_2'        = '#3E8853',
    'button_3'        = '#E51947',
    # 'button_4'        = '#B2E3E7',     # TODO

    # ___ Shiny ---------------------------------

    'bg_box' = '#f9f5e8',

    # 'shiny_title_text' = '#999989',

    'shiny_sidebar_border' = '#E8F0F2',

    'shiny_box_content_fg' = '#009998',

    'shiny_box_shadow_bg' = '#262A30'
  )

  # Extract vals ------------------------------

  val_names <- c(...)
  if (is.null(val_names)) return(theme_vals)
  theme_vals[val_names] %>% unname()  # TODO
}


#' @rdname pals
#' @export
pals_elegant_light <- function(palette = 'main',
                               reverse = FALSE, n,
                               ...) {
  pal_vals <- list(

    'main'       = theme_vals_elegant_light('col',
                                            'col_2',
                                            'col_4'),
    'line' = scale_line_elegant_light()
  )

  pal <- pal_vals[[palette]]
  if ( ! missing(n)) pal <- pal[1:n]
  if (reverse) pal <- rev(pal)
  colorRampPalette(pal, ...)
}

#' @rdname scales
#' @export
scale_color_elegant_light_d <- function(palette = 'main',
                                      reverse = FALSE, n,
                                      ...) {
  pal <- pals_elegant_light(palette = palette, reverse = reverse, n = n)
  discrete_scale('colour', paste0('elegant_light_', palette),
                 palette = pal, ...)
}

#' @rdname scales
#' @export
scale_color_elegant_light_c <- function(palette = 'main',
                                      reverse = FALSE, n,
                                      ...) {
  pal <- pals_elegant_light(palette = palette, reverse = reverse, n = n)
  scale_color_gradientn(colours = pal(256), ...)
}

#' @rdname scales
#' @export
scale_fill_elegant_light_d <- function(palette = 'main',
                                       reverse = FALSE, n,
                                       ...) {
  pal <- pals_elegant_light(palette = palette, reverse = reverse, n = n)
  discrete_scale('fill', paste0('elegant_light_', palette),
                 palette = pal, ...)
}

#' @rdname scales
#' @export
scale_fill_elegant_light_c <- function(palette = 'main',
                                       reverse = FALSE, n,
                                       ...) {
  pal <- pals_elegant_light(palette = palette, reverse = reverse, n = n)
  scale_fill_gradientn(colours = pal(256), ...)
}

#' @rdname scales
#' @export
scale_line_elegant_light <- function(n = 6) {
  cols <- c(theme_vals_elegant_light('col_2'),
            theme_vals_elegant_light('col_3'),
            theme_vals_elegant_light('col_5'),
            theme_vals_elegant_light('col'),
            theme_vals_elegant_light('col_9'),
            theme_vals_elegant_light('col_10'))
            # theme_vals_elegant_light('col_11'),
            # theme_vals_elegant_light('col_12'),
            # theme_vals_elegant_light('fg'))
  cols[1:n]
}

# Theme vals elegant light 2 -----------------------

#' @rdname theme_vals
#' @export
theme_vals_elegant_light_2 <- function(...) {

  # Theme vals ----------------------------

  theme_vals <- c(

    # _ General ---------------------------------

    # Core

    'bg'              = '#F4F8F9',
    'bg_2'            = '#FFFFFF',
    'bg_3'            = '#F4F8F9',

    'fg'              = '#333333',
    'fg_2'            = '#000000',
    'fg_3'            = '#333333',

    'col'             = '#051F9B',
    # TODO Tmp swap 'col_2' & 'col_3' for {kar_capital}
    'col_2'           = '#009998',
    'col_3'           = '#E51947',
    # 'col_2'           = '#E51947',
    # 'col_3'           = '#009998',
    'col_4'           = '#03224B',

    'col_5'           = '#999989',
    'col_5_2'         = '#C7C7BF',
    'col_5_3'         = '#81816F',
    'col_5_4'         = '#6C6C5C',
    'col_6'           = '#7D7D6B',

    'col_7'           = '#515145',
    'col_8'           = '#EEF4F6',

    'col_9'           = '#440154',
    'col_10'          = '#FDE725',
    'col_11'          = '#6E7C98',
    'col_12'          = '#D0A274',

    # Misc

    'selection'       = '#D9E8F8',
    'selection_2'     = '#F7EEDD',

    'selected_bg'     = '#E8F0F2',
    'selected_fg'     = '#009998',

    'hover_bg'        = '#EEF4F6',
    'hover_bg_2'      = '#E7F0F3',
    'hover_fg'        = '#009998',
    'hover_bg_table'  = '#F3F8F9',

    'border'          = '#E8F0F2',
    'border_2'        = '#DBE8EB',

    'scrollbar'       = '#DBE8EB',
    'scrollbar_hover' = '#CEE0E4',

    'shadow_bg'       = '#D2E2E6',
    'shadow_size'     = '3px 3px 3px',

    # RStudio

    'border_opague'   = '#00999833',

    'button'          = '#E3E3DF',
    'button_2'        = '#3E8853',
    'button_3'        = '#E51947',
    # 'button_4'        = '#B2E3E7',     # TODO

    # ___ Shiny ---------------------------------

    'bg_box' = '#F4F8F9',

    # 'shiny_title_text' = '#999989',

    'shiny_sidebar_border' = '#E8F0F2',

    'shiny_box_content_fg' = '#009998',

    'shiny_box_shadow_bg' = '#262A30'
  )

  # Extract vals ------------------------------

  val_names <- c(...)
  if (is.null(val_names)) return(theme_vals)
  theme_vals[val_names] %>% unname()  # TODO
}

#' @rdname pals
#' @export
pals_elegant_light_2 <- function(palette = 'main',
                                 reverse = FALSE, n,
                                 ...) {

  pal_vals <- list(

    'main'       = theme_vals_elegant_light_2('col',
                                              'col_2',
                                              'col_4'),
    'line' = scale_line_elegant_light_2()
  )

  pal <- pal_vals[[palette]]
  if ( ! missing(n)) pal <- pal[1:n]
  if (reverse) pal <- rev(pal)
  colorRampPalette(pal, ...)
}

#' @rdname scales
#' @export
scale_color_elegant_light_2_d <- function(palette = 'main',
                                        reverse = FALSE, n,
                                        ...) {
  pal <- pals_elegant_light_2(palette = palette, reverse = reverse,
                              n = n)
  discrete_scale('colour', paste0('elegant_light_2_', palette),
                 palette = pal, ...)
}

#' @rdname scales
#' @export
scale_color_elegant_light_2_c <- function(palette = 'main',
                                        reverse = FALSE, n,
                                        ...) {
  pal <- pals_elegant_light_2(palette = palette, reverse = reverse,
                              n = n)
  scale_color_gradientn(colours = pal(256), ...)
}

#' @rdname scales
#' @export
scale_fill_elegant_light_2_d <- function(palette = 'main',
                                         reverse = FALSE, n,
                                         ...) {
  pal <- pals_elegant_light_2(palette = palette, reverse = reverse,
                              n = n)
  discrete_scale('fill', paste0('elegant_light_2_', palette), palette = pal, ...)
}

#' @rdname scales
#' @export
scale_fill_elegant_light_2_c <- function(palette = 'main',
                                         reverse = FALSE, n,
                                         ...) {
  pal <- pals_elegant_light_2(palette = palette, reverse = reverse,
                              n = n)
  scale_fill_gradientn(colours = pal(256), ...)
}

#' @rdname scales
#' @export
scale_line_elegant_light_2 <- function(n = 9) {
  scale_line_elegant_light(n = n)
}
