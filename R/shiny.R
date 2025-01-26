#' Shiny theme
#'
#' Shiny theme
#'
#' @param theme_vals                          (none)
#'
#' @param button_height                       (none)
#' @param button_padding                      (none)
#' @param textbox_height                      (none)
#' @param textbox_padding                     (none)
#' @param logo_text_font_family               (none)
#' @param logo_text_font_size                 (none)
#' @param logo_text_font_style                (none)
#' @param transition                          (none)
#' @param app_font_family                     (none)
#' @param app_font                            (none)
#' @param primary_font                        (none)
#' @param info_font                           (none)
#' @param soccess_font                        (none)
#' @param warning_font                        (none)
#' @param danger_font                         (none)
#' @param body_bg                             (none)
#' @param placeholder_fg                      (none)
#' @param selection                           (none)
#' @param search_box_input_fg                 (none)
#' @param header_bg                           (none)
#' @param logo_bg                             (none)
#' @param logo_fg                             (none)
#' @param logo_hover_fg                       (none)
#' @param header_button_bg                    (none)
#' @param header_button_icon_col              (none)
#' @param header_button_hover_bg              (none)
#' @param header_button_icon_hover_fg         (none)
#' @param header_dropdown_fg                  (none)
#' @param header_dropdown_hover_bg            (none)
#' @param header_dropdown_hover_fg            (none)
#' @param header_dropdown_focus_bg            (none)
#' @param header_dropdown_focus_fg            (none)
#' @param header_box_shadow                   (none)
#' @param header_box_shadow_size              (none)
#' @param sidebar_bg                          (none)
#' @param sidebar_padding                     (none)
#' @param sidebar_menu_bg                     (none)
#' @param sidebar_menu_padding                (none)
#' @param sidebar_menu_border_radius          (none)
#' @param sidebar_shadow_radius               (none)
#' @param sidebar_shadow                      (none)
#' @param sidebar_user_fg                     (none)
#' @param sidebar_search_bg                   (none)
#' @param sidebar_search_icon_col             (none)
#' @param sidebar_search_border_col           (none)
#' @param sidebar_tab_fg                      (none)
#' @param sidebar_tab_text_size               (none)
#' @param sidebar_tab_border_style            (none)
#' @param sidebar_tab_border_col              (none)
#' @param sidebar_tab_border_width            (none)
#' @param sidebar_tab_selected_bg             (none)
#' @param sidebar_tab_selected_fg             (none)
#' @param sidebar_tab_selected_radius         (none)
#' @param sidebar_tab_hover_bg                (none)
#' @param sidebar_tab_hover_fg                (none)
#' @param sidebar_tab_border_hover_style      (none)
#' @param sidebar_tab_border_hover_col        (none)
#' @param sidebar_tab_border_hover_width      (none)
#' @param sidebar_tab_hover_radius            (none)
#' @param box_outer_bg                        (none)
#' @param box_bg                              (none)
#' @param box_border_radius                   (none)
#' @param box_shadow_size                     (none)
#' @param box_shadow_col                      (none)
#' @param box_title_size                      (none)
#' @param box_default_col                     (none)
#' @param box_primary_col                     (none)
#' @param box_info_col                        (none)
#' @param box_success_col                     (none)
#' @param box_warning_col                     (none)
#' @param box_danger_col                      (none)
#' @param tab_box_tab_col                     (none)
#' @param tab_box_tab_text_size               (none)
#' @param tab_box_tab_text_col                (none)
#' @param tab_box_tab_text_selected_fg        (none)
#' @param tab_box_bg                          (none)
#' @param tab_box_highlight                   (none)
#' @param tab_box_border_radius               (none)
#' @param input_arrow_display                 (none)
#' @param button_bg                           (none)
#' @param button_fg                           (none)
#' @param button_border_col                   (none)
#' @param button_border_radius                (none)
#' @param button_hover_bg                     (none)
#' @param button_hover_fg                     (none)
#' @param button_border_hover_col             (none)
#' @param material_switch_bg                  (none)
#' @param material_switch_before_bg           (none)
#' @param material_switch_after_bg            (none)
#' @param textbox_bg                          (none)
#' @param textbox_border_col                  (none)
#' @param textbox_border_radius               (none)
#' @param textbox_selected_bg                 (none)
#' @param textbox_border_selected_col         (none)
#' @param table_bg                            (none)
#' @param table_fg                            (none)
#' @param table_border_top_size               (none)
#' @param table_border_row_size               (none)
#' @param selectize_input_bg                  (none)
#' @param selectize_input_fg                  (none)
#' @param selectize_dropdown_hover_bg         (none)
#' @param selectize_dropdown_hover_fg         (none)
#' @param selectize_dropdown_bg               (none)
#' @param selectize_dropdown_fg               (none)
#' @param selectize_dropdown_active_bg        (none)
#' @param selectize_dropdown_active_fg        (none)
#' @param selectize_dropdown_highlight_bg     (none)
#' @param selectize_dropdown_highlight_fg     (none)
#' @param selectize_input_border              (none)
#' @param selectize_dropdown_border           (none)
#' @param selectize_input_others_bg           (none)
#' @param date_range_input_fg                 (none)
#' @param date_range_dropdown_border_col      (none)
#' @param date_range_dropdown_bg              (none)
#' @param date_range_input_active_bg          (none)
#' @param date_range_input_active_fg          (none)
#' @param date_range_input_hover_bg           (none)
#' @param date_range_input_hover_fg           (none)
#' @param date_range_others_active_bg         (none)
#' @param date_range_others_active_fg         (none)
#' @param date_range_others_active_border_col (none)
#' @param date_range_others_hover_bg          (none)
#' @param date_range_others_hover_fg          (none)
#' @param date_range_to_middle_part_bg        (none)
#' @param date_range_to_middle_part_others_fg (none)
#' @param date_range_to_middle_part_others_bg (none)
#' @param date_range_input_middle_button_fg   (none)
#' @param date_range_year_choices_fg          (none)
#' @param date_range_year_choices_hover_bg    (none)
#' @param reactable_bg                        (none)
#' @param reactable_bg_strip                  (none)
#' @param bg                                  (none)
#' @param fg                                  (none)
#' @param fg_2                                (none)
#' @param shadow_bg                           (none)
#' @param shadow_size                         (none)
#' @param hover_bg                            (none)
#' @param hover_fg                            (none)
#' @param hover_bg_table                      (none)
#' @param selected_bg                         (none)
#' @param selected_fg                         (none)
#' @param bg_box                              (none)
#' @param border                              (none)
#' @param border_2                            (none)

# TODO: temporarily disable label-danger
# .alert-danger, .alert-error, .bg-red, .callout.callout-danger, .label-danger, .modal-danger .modal-body

theme_shiny <- function(

  theme_vals,

  # Fixed param ---------------------------------

  # TODO: Repeated params as below. Remove these?
  # primary_font = "auto",
  # soccess_font = "auto",
  # warning_font = "auto",
  # danger_font = "auto",
  # info_font = "auto",
  # box_info_col = "auto",

  button_height = 34,
  button_padding = "6px 12px",
  textbox_height = 34,
  textbox_padding = "6px 12px",

  logo_text_font_family = 'Consolas',
  logo_text_font_size = '25px !important',
  logo_text_font_style = 'italic',

  transition = '.1s',

  # Variable param ------------------------------

  # __ General ----------------------------------

  app_font_family = 'Arial',
  app_font = theme_vals('fg'),

  primary_font = 'rgb(0,0,0)',
  info_font = 'rgb(0,0,0)',
  soccess_font = 'rgb(0,0,0)',
  warning_font = 'rgb(0,0,0)',
  danger_font = 'rgb(0,0,0)',

  body_bg = theme_vals('bg_2'),
  placeholder_fg = theme_vals('col_5'),
  selection = theme_vals('selection'),

  search_box_input_fg = theme_vals('col_2'),

  # __ Header ---------------------------------

  header_bg = theme_vals('bg_3'),

  logo_bg = theme_vals('bg_3'),
  logo_fg = theme_vals('col_5_3'),
  logo_hover_fg = theme_vals('hover_fg'),

  header_button_bg = theme_vals('bg_3'),
  header_button_icon_col = theme_vals('col_5_3'),
  header_button_hover_bg = theme_vals('bg_3'),
  header_button_icon_hover_fg = theme_vals('hover_fg'),

  header_dropdown_fg = theme_vals('col_5_3'),
  header_dropdown_hover_bg = theme_vals('bg_3'),
  header_dropdown_hover_fg = theme_vals('hover_fg'),

  header_dropdown_focus_bg = theme_vals('bg_3'),
  header_dropdown_focus_fg = theme_vals('hover_fg'),

  header_box_shadow = theme_vals('bg'),
  header_box_shadow_size = '2px 2px 2px',

  # __ Sidebar ---------------------------------

  sidebar_bg = theme_vals('bg_3'),

  sidebar_padding = 0,
  sidebar_menu_bg = 'transparent',
  sidebar_menu_padding = 0,
  sidebar_menu_border_radius = 0,
  sidebar_shadow_radius = '3px 5px 5px',
  sidebar_shadow = theme_vals('bg_3'),
  sidebar_user_fg = theme_vals('fg_2'),

  sidebar_search_bg = theme_vals('bg_3'),
  sidebar_search_icon_col = theme_vals('col_5'),
  sidebar_search_border_col = theme_vals('bg_3'),

  sidebar_tab_fg = theme_vals('fg'),
  sidebar_tab_text_size = 13,
  sidebar_tab_border_style = 'none none solid none',
  sidebar_tab_border_col = theme_vals('shiny_sidebar_border'),
  sidebar_tab_border_width = 1,

  sidebar_tab_selected_bg = theme_vals('hover_bg'),
  sidebar_tab_selected_fg = theme_vals('selected_fg'),
  sidebar_tab_selected_radius = '0px 0px 0px 0px',

  sidebar_tab_hover_bg = theme_vals('hover_bg'),
  sidebar_tab_hover_fg = theme_vals('hover_fg'),

  sidebar_tab_border_hover_style = 'none none solid none',
  sidebar_tab_border_hover_col = theme_vals('border'),
  sidebar_tab_border_hover_width = 1,
  sidebar_tab_hover_radius = '0px 0px 0px 0px',

  # __ Boxes ---------------------------------

  box_outer_bg = theme_vals('bg_box'),
  box_bg = theme_vals('bg_box'),
  box_border_radius = 1,
  box_shadow_size = theme_vals('shadow_size'),
  box_shadow_col = theme_vals('shadow_bg'),
  box_title_size = 18,
  box_default_col = theme_vals('bg_box'),
  box_primary_col = 'rgb(15,124,191)',
  box_info_col = 'rgb(225,225,225)',
  box_success_col = 'rgb(59,133,95)',
  box_warning_col = 'rgb(178,83,149)',
  box_danger_col = 'rgb(207,57,92)',
  tab_box_tab_col = theme_vals('bg_box'),
  tab_box_tab_text_size = 14,
  tab_box_tab_text_col = 'rgb(42,102,98)',
  tab_box_tab_text_selected_fg = 'rgb(207,57,92)',
  tab_box_bg = theme_vals('bg'),
  tab_box_highlight = 'rgb(207,57,92)',
  tab_box_border_radius = 0,

  # __ Inputs ---------------------------------

  input_arrow_display = 'none',

  button_bg = theme_vals('bg_box'),
  button_fg = theme_vals('shiny_box_content_fg'),
  button_border_col = theme_vals('bg_box'),
  button_border_radius = 0,
  button_hover_bg = theme_vals('hover_bg'),
  button_hover_fg = theme_vals('hover_fg'),
  button_border_hover_col = theme_vals('bg_box'),

  # NOTE 'before' & 'after' are upside down?
  material_switch_bg        = theme_vals('col_5'),
  material_switch_before_bg = theme_vals('col_13_3'),
  material_switch_after_bg  = theme_vals('col_4_2'),

  textbox_bg = theme_vals('bg_box'),
  textbox_border_col = theme_vals('bg_box'),
  textbox_border_radius = 0,
  textbox_selected_bg = theme_vals('selected_bg'),
  textbox_border_selected_col = theme_vals('bg_box'),

  # __ Tables ---------------------------------

  table_bg = theme_vals('bg'),
  table_fg = theme_vals('border'),
  table_border_top_size = 1,
  table_border_row_size = 1,

  # __ Selectize input --------------------------

  selectize_input_bg = theme_vals('bg'),
  selectize_input_fg = theme_vals('shiny_box_content_fg'),
  # TODO: repeated
  # selectize_input_bg = theme_vals('hover_bg'),
  # selectize_input_fg = theme_vals('fg'),

  selectize_dropdown_header_fg =
    theme_vals('shiny_selectize_dropdown_header_fg'),

  selectize_dropdown_bg = theme_vals('bg'),
  selectize_dropdown_fg = theme_vals('fg'),

  selectize_dropdown_hover_bg = theme_vals('hover_bg'),
  selectize_dropdown_hover_fg = theme_vals('hover_fg'),

  selectize_dropdown_active_bg = theme_vals('hover_bg'),
  selectize_dropdown_active_fg = theme_vals('hover_fg'),

  selectize_dropdown_highlight_bg = theme_vals('bg'),
  selectize_dropdown_highlight_fg = theme_vals('col_2'),

  selectize_input_border = theme_vals('border'),
  selectize_dropdown_border = theme_vals('border'),

  selectize_input_others_bg = theme_vals('bg'),

  # __ Date range input -------------------------

  date_range_input_fg = theme_vals('shiny_box_content_fg'),

  date_range_dropdown_border_col = theme_vals('border'),
  date_range_dropdown_bg = theme_vals('bg'),

  date_range_input_active_bg = theme_vals('bg'),
  date_range_input_active_fg = theme_vals('shiny_box_content_fg'),

  # TODO: date_range_input_hover_fg affects
  # 'monthly' hover fg colors
  # temporarily using lighter color for date_range_input_hover_bg
  # date_range_input_hover_bg = theme_vals('col_5'),
  date_range_input_hover_bg = theme_vals('bg'),
  date_range_input_hover_fg = theme_vals('shiny_box_content_fg'),

  date_range_others_active_bg = theme_vals('bg'),
  date_range_others_active_fg = theme_vals('shiny_box_content_fg'),
  date_range_others_active_border_col = 'none',

  date_range_others_hover_bg = theme_vals('bg'),
  date_range_others_hover_fg = theme_vals('shiny_box_content_fg'),

  date_range_to_middle_part_bg = theme_vals('bg'),
  date_range_to_middle_part_others_fg = theme_vals('shiny_box_content_fg'),
  date_range_to_middle_part_others_bg = theme_vals('bg'),

  date_range_input_middle_button_fg = theme_vals('col_5'),

  date_range_year_choices_fg = theme_vals('fg'),
  date_range_year_choices_hover_bg = theme_vals('bg'),

  # __ reactable ---------------------------------

  reactable_bg = theme_vals('bg'),
  reactable_bg_strip = theme_vals('hover_bg'),
  reactable_filter_border = theme_vals('col_5'),

  # __ My param ---------------------------------

  bg = theme_vals('bg'),
  fg = theme_vals('fg'),

  # bg_2 = theme_vals('bg_2'),  # TODO: replaced by bg_3...redundant?
  fg_2 = theme_vals('fg_2'),

  shadow_bg = theme_vals('shadow_bg'),
  shadow_size = theme_vals('shadow_size'),

  hover_bg = theme_vals('hover_bg'),
  hover_fg = theme_vals('hover_fg'),
  hover_bg_table = theme_vals('hover_bg_table'),

  selected_bg = theme_vals('selected_bg'),
  selected_fg = theme_vals('selected_fg'),

  bg_box = theme_vals('bg_box'),

  border   = theme_vals('border'),
  border_2 = theme_vals('border_2')
) {
  htmltools::tags$head(
    htmltools::tags$style(
      htmltools::HTML( paste0(

    # CSS ---------------------------------

    # __ Main ---------------------------------

    '
      /* font: google import [OPTIONAL] */
      /* @import url("//fonts.googleapis.com/css?family=',"Roboto",'"); */

      /* font */
      body, label, input, button, select, box,
      .h1, .h2, .h3, .h4, .h5, h1, h2, h3, h4, h5 {
        font-family: "',app_font_family,'";
        color: ', app_font, ';
      }

      /* font: fix for h6 */
      /* messes up sidebar user section if included above */
      .h6, h6 {
        font-family: "',app_font_family,'";
      }

      /* sidebar: logo */
      .skin-blue .main-header .logo {

        background: ', logo_bg, ';
        color: ', logo_fg, ';
        transition:', transition, ';

        font-family:', logo_text_font_family, ';
        font-size:', logo_text_font_size, ';
        font-style:', logo_text_font_style, ';
      }

      /* sidebar: logo hover */
      .skin-blue .main-header .logo:hover {
        background: ', logo_bg, ';
        color: ', logo_hover_fg, ';
      }

      /* sidebar: collapse button  */
      .skin-blue .main-header .navbar .sidebar-toggle {
        background: ', header_button_bg, ';
        color:', header_button_icon_col, ';
        transition:', transition, ';
      }

      /* sidebar: collapse button hover */
      .skin-blue .main-header .navbar .sidebar-toggle:hover {
        background: ', header_button_hover_bg, ';
        color:', header_button_icon_hover_fg, ';
      }

      /* header */
      .skin-blue .main-header .navbar {
        background: ', header_bg, ';
        box-shadow: ', header_box_shadow_size, ' ', header_box_shadow ,';
      }

      /* header_dropdown */
      .skin-blue .main-header .navbar .nav>li>a {
        color:', header_dropdown_fg, ';
        transition:', transition, ';
      }

      /* header_dropdown_hover */
            .skin-blue .main-header .navbar .nav>li>a:hover {
        background:', header_dropdown_hover_bg, ';
        color:', header_dropdown_hover_fg, ';
            }

      /* header_dropdown_focus */
      .skin-blue .main-header .navbar .nav .open>a, .skin-blue .main-header .navbar .nav .open>a:focus, .skin-blue .main-header .navbar .nav .open>a:hover, .skin-blue .main-header .navbar .nav>.active>a, .skin-blue .main-header .navbar .nav>li>a:active, .skin-blue .main-header .navbar .nav>li>a:focus, .skin-blue .main-header .navbar .nav>li>a:hover {
        background:', header_dropdown_focus_bg, ';
        color:', header_dropdown_focus_fg, ';
      }

      /* sidebar*/
      .skin-blue .main-sidebar {
        background: ', sidebar_bg, ';
        box-shadow: ', sidebar_shadow_radius, " ", sidebar_shadow, ';
        padding-left: ', sidebar_padding, 'px;
        padding-right: ', sidebar_padding, 'px;
        /* padding-top: 60px; */
      }

      /* sidebar menu */
      .main-sidebar .user-panel, .sidebar-menu, .sidebar-menu>li.header {
        white-space: nowrap;
        background: ', sidebar_menu_bg, ';
        padding: ', sidebar_menu_padding, 'px;
        border-radius: ', sidebar_menu_border_radius, 'px;
      }

      /* fix for user panel */
      .user-panel>.info>p, .skin-blue .user-panel>.info {
        color: ', sidebar_user_fg, ';
        font-size: 12px;
        font-weight: normal;
      }
      section.sidebar .user-panel {
        padding: 10px;
      }

      /* sidebar: tabs */
      .skin-blue .main-sidebar .sidebar .sidebar-menu a {
        color: ', sidebar_tab_fg, ';
        font-size: ', sidebar_tab_text_size ,'px;
        border-style: ', sidebar_tab_border_style, ';
        border-color: ', sidebar_tab_border_col, ';
        border-width: ', sidebar_tab_border_width, 'px;
        transition:', transition, ';
      }

      /* sidebar: tab selected */
      .skin-blue .main-sidebar .sidebar .sidebar-menu .active a {
        color: ', sidebar_tab_selected_fg, ';
        background: ', sidebar_tab_selected_bg, ';
        font-size: ', sidebar_tab_text_size, 'px;
        font-weight: bold;
        border-radius: ', sidebar_tab_selected_radius, ';
        border-style: ', sidebar_tab_border_hover_style, ';
        border-color: ', sidebar_tab_border_hover_col, ';
        border-width: ', sidebar_tab_border_hover_width, 'px;
      }
      .skin-blue .sidebar-menu > li:hover > a,
      .skin-blue .sidebar-menu > li.active > a {
        color: ', sidebar_tab_selected_fg, ';
        background: ', sidebar_tab_selected_bg, ';
        border-radius: ', sidebar_tab_hover_radius, ';
      }

      /* sidebar: tab hovered */
      .skin-blue .main-sidebar .sidebar .sidebar-menu a:hover {
        background: ', sidebar_tab_hover_bg, ';
        color: ', sidebar_tab_hover_fg, ';
        font-size: ', sidebar_tab_text_size ,'px;
        font-weight: bold;
        border-style: ', sidebar_tab_border_hover_style, ';
        border-color: ', sidebar_tab_border_hover_col, ';
        border-width: ', sidebar_tab_border_hover_width, 'px;
        border-radius: ', sidebar_tab_hover_radius, ';
      }

      /* sidebar: subtab */
      .skin-blue .sidebar-menu > li > .treeview-menu {
      	margin: 0px;
        background: ', sidebar_menu_bg, ';
      }
      .skin-blue .treeview-menu > li > a {
        background: ', sidebar_menu_bg, ';
      }
      /* sidebar: subtab selected */
      .skin-blue .treeview-menu > li.active > a,
      .skin-blue .treeview-menu > li > a:hover {
        background: ', sidebar_tab_selected_bg, ';
      }

      /* sidebar: search text area */
      .skin-blue .sidebar-form input[type=text] {
        background: ', sidebar_search_bg, ';
        color: ', app_font, ';
        border-radius: ', textbox_border_radius, 'px 0px 0px ', textbox_border_radius, 'px;
        border-color: ', sidebar_search_border_col, ';
        border-style: solid none solid solid;
      }

      /* sidebar: search button */
        .skin-blue .input-group-btn > .btn {
        background: ', sidebar_search_bg, ';
        color: ', sidebar_search_icon_col, ';
        border-radius: 0px ', textbox_border_radius, 'px ', textbox_border_radius, 'px 0px;
        border-style: solid solid solid none;
        border-color: ', sidebar_search_border_col, ';
        }

      /* search_button */
      /* fix color when hover/active */
      button#search_button {
        color: ', sidebar_search_icon_col, ';
      }

      /* sidebar form */
      .skin-blue .sidebar-form {
        border-radius: 0px;
        border: 0px none rgb(255,255,255);
        margin: 10px;
      }

      /* body */
          .content-wrapper, .right-side {
        background: ', body_bg, ';
      }

      /* box */
        .box {
        background: ', box_bg, ';
        border-radius: ', box_border_radius, 'px;
        box-shadow: ', box_shadow_size, ' ', box_shadow_col, ';
      }

      /* box: title */
      .box-header .box-title {
        font-size: ', box_title_size, 'px;
      }

      /* tabbox: title */
      .nav-tabs-custom>.nav-tabs>li.header {
        color: ', app_font, ';
        font-size: ', box_title_size, 'px;
      }

      /* tabbox: tab color */
      .nav-tabs-custom, .nav-tabs-custom .nav-tabs li.active:hover a, .nav-tabs-custom .nav-tabs li.active a {
        background: ', tab_box_tab_col, ';
        color: ', app_font, ';
        border-radius: ', box_border_radius, 'px;
      }

      .nav-tabs-custom {
        box-shadow: ', box_shadow_size, ' ', box_shadow_col, ';
      }

      /* tabbox: active tab bg */
      .nav-tabs-custom>.nav-tabs>li.active {
        border-radius: ', tab_box_border_radius, 'px;
        border-top-color: ', tab_box_highlight, ';
        # box-shadow: ', box_shadow_size, ' ', box_shadow_col, ';
      }

      /* tabbox: font color */
      .nav-tabs-custom>.nav-tabs>li.active:hover>a, .nav-tabs-custom>.nav-tabs>li.active>a {
        border-bottom-color: ', tab_box_tab_col, ';
        border-top-color: ', tab_box_highlight, ';
        border-right-color: ', tab_box_highlight, ';
        border-left-color: ', tab_box_highlight, ';
        color: ', tab_box_tab_text_selected_fg, ';
        font-size: ', tab_box_tab_text_size, 'px;
        border-radius: ', tab_box_border_radius, 'px;
      }

      /* tabbox: inactive tabs background */
      .nav-tabs-custom>.nav-tabs>li>a {
        color: ', tab_box_tab_text_col, ';
        font-size: ', tab_box_tab_text_size, 'px;
      }

      /* tabbox: top area back color */
      .nav-tabs-custom, .nav-tabs-custom>.tab-content, .nav-tabs-custom>.nav-tabs {
        border-bottom-color: ', tab_box_highlight, ';
        background: ', tab_box_bg, ';
      }

      /* tabbox: top area rounded corners */
      .nav-tabs-custom>.nav-tabs {
        margin: 0;
        border-radius: ', tab_box_border_radius, 'px;
      }

      /* infobox */
      .info-box {
        background: ', box_bg, ';
        border-radius: ', box_border_radius, 'px;
        box-shadow: ', box_shadow_size, ' ', box_shadow_col, ';
      }

      /* valuebox */
      .small-box {
        border-radius: ', box_border_radius, 'px;
        box-shadow: ', box_shadow_size, ' ', box_shadow_col, ';
      }

      /* valuebox: main font color */
      .small-box h3, .small-box p {
        color: rgb(255,255,255)
      }

      /* box: default color */
      .box.box-solid>.box-header, .box>.box-header {
        color: ', app_font, ';
      }
      .box.box-solid>.box-header {
        border-radius: ', box_border_radius, 'px;
      }
      .box.box-solid, .box {
        border-radius: ', box_border_radius, 'px;
        border-top-color: ', box_default_col, ';
      }

      /* box: info color */
      .box.box-solid.box-info>.box-header h3, .box.box-info>.box-header h3 {
        color: ', info_font, ';
      }
      .box.box-solid.box-info>.box-header {
        background: ', box_info_col, ';
        border-radius: ', box_border_radius, 'px;
      }
      .box.box-solid.box-info, .box.box-info {
        border-color: ', box_info_col, ';
        border-left-color: ', box_info_col, ';
        border-right-color: ', box_info_col, ';
        border-top-color: ', box_info_col, ';
        border-radius: ', box_border_radius, 'px;
      }

      /* box: primary color */
      .box.box-solid.box-primary>.box-header h3, .box.box-primary>.box-header h3 {
        color: ', primary_font, ';
      }
      .box.box-solid.box-primary>.box-header {
        background: ', box_primary_col, ';
        border-radius: ', box_border_radius, 'px;
      }
      .box.box-solid.box-primary, .box.box-primary {
        border-color: ', box_primary_col, ';
        border-left-color: ', box_primary_col, ';
        border-right-color: ', box_primary_col, ';
        border-top-color: ', box_primary_col, ';
        border-radius: ', box_border_radius, 'px;
      }

      /* box: success color */
      .box.box-solid.box-success>.box-header h3, .box.box-success>.box-header h3 {
        color: ', soccess_font, ';
      }
      .box.box-solid.box-success>.box-header {
        background: ', box_success_col, ';
        border-radius: ', box_border_radius, 'px;
      }
      .box.box-solid.box-success, .box.box-success {
        border-color: ', box_success_col, ';
        border-left-color: ', box_success_col, ';
        border-right-color: ', box_success_col, ';
        border-top-color: ', box_success_col, ';
        border-radius: ', box_border_radius, 'px;
      }

      /* box: warning color */
      .box.box-solid.box-warning>.box-header h3, .box.box-warning>.box-header h3 {
        color: ', warning_font, ';
      }
      .box.box-solid.box-warning>.box-header {
        background: ', box_warning_col, ';
        border-radius: ', box_border_radius, 'px;
      }
      .box.box-solid.box-warning, .box.box-warning {
        border-color: ', box_warning_col, ';
        border-left-color: ', box_warning_col, ';
        border-right-color: ', box_warning_col, ';
        border-top-color: ', box_warning_col, ';
        border-radius: ', box_border_radius, 'px;
      }

      /* box: danger color */
      .box.box-solid.box-danger>.box-header h3, .box.box-danger>.box-header h3 {
        color: ', danger_font, ';
      }
      .box.box-solid.box-danger>.box-header {
        background: ', box_danger_col, ';
        border-radius: ', box_border_radius, 'px;
      }
      .box.box-solid.box-danger, .box.box-danger {
        border-color: ', box_danger_col, ';
        border-left-color: ', box_danger_col, ';
        border-right-color: ', box_danger_col, ';
        border-top-color: ', box_danger_col, ';
        border-radius: ', box_border_radius, 'px;
      }

      /* button */
      .btn-default {
        background: ', button_bg, ';
        color: ', button_fg, ';
        border-color: ', button_border_col, ';
        border-radius: ', button_border_radius, 'px;
        height: ', button_height, 'px;
        padding: ', button_padding, ';
      }

      /* button: hover */
      .btn-default:hover {
        background: ', button_hover_bg, ';
        color: ', button_hover_fg, ';
        border-color: ', button_border_hover_col, ';
      }

      /* button: focus */
      .btn-default:focus, .action-button:focus {
        background: ', button_bg, '!important;
        color: ', button_fg, '!important;
        border-color: ', button_border_col, ';
      }

      /* button: active */
      .btn-default:active, .action-button:active {
        background: ', button_bg, ';
        color: ', button_fg, ';
        border-color: ', button_border_col, ';
      }

      /* button: visited */
      .btn-default:visited {
        background: ', button_bg, ';
        color: ', button_fg, ';
        border-color: ', button_border_col, ';
      }

      /* textbox */
      .form-control, .selectize-input, .selectize-control.single .selectize-input {
        background: ', textbox_bg, ';
        color: ', app_font, ';
        border-color: ', textbox_border_col, ';
        border-radius: ', textbox_border_radius, 'px;
        height: ', textbox_height, 'px;
        min-height: ', textbox_height, 'px;
        padding: ', textbox_padding, ';
      }

      /* textbox: selected */
      .form-control:focus, .selectize-input.focus {
        color: ', app_font, ';
        background: ', textbox_selected_bg, ';
        border-color: ', textbox_border_selected_col, ';
        -webkit-box-shadow: inset 0px 0px 0px, 0px 0px 0px;
        box-shadow: inset 0px 0px 0px, 0px 0px 0px;
      }

      /* multi-row selectize input */
      .selectize-control.multi .selectize-input.has-items {
        height: auto;
      }

      /* verbatim text output */
      .qt pre, .qt code {
        font-family: ', app_font_family, ' !important;
      }
      pre {
        color: ', app_font, ';
        background-color: ', textbox_bg, ';
        border: 1px solid ', textbox_border_col, ';
        border-radius: ', textbox_border_radius, 'px;
      }

      /* drop-down menu */
      .selectize-dropdown, .selectize-dropdown.form-control {
        background: ', textbox_bg, ';
        border-radius: 4px;
      }

      /* table */
      .table {
        background: ', table_bg, ';
        border-radius: ', textbox_border_radius, 'px;
      }

      /* table: row border color*/
      .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
        border-top: ', table_border_row_size, 'px solid ', table_fg, ';
      }

      /* table: top border color*/
      .table>thead>tr>th {
        border-bottom: ', table_border_top_size, 'px solid ', table_fg, ';
      }

      /* table: hover row */
      .table-hover>tbody>tr:hover {
      background-color: ', table_fg, ';
      }

      /* table: stripe row */
      .table-striped>tbody>tr:nth-of-type(odd) {
        background-color: ', table_fg, ';
      }

      /* table: body colour */
      table.dataTable tbody tr {
        background-color: ', table_bg, ' !important;
      }

      /* table: footer border colour */
      table.dataTable {
        border: 0px !important;
      }

      /* datatable: selected row */
      table.dataTable tr.selected td, table.dataTable td.selected {
        background-color: ', box_success_col, ' !important;
                color: rgb(0,0,0) !important;
      }

      /* datatable: hover row */
      table.dataTable tr.hover td, table.dataTable td.hover {
        background-color: ', table_fg, ' !important;
      }
      table.dataTable.hover tbody tr:hover, table.dataTable.display tbody tr:hover {
        background-color: ', table_fg, ' !important;
      }
      table.dataTable.row-border tbody th, table.dataTable.row-border tbody td,
      table.dataTable.display tbody th, table.dataTable.display tbody td {
        border-top: 1px solid ', table_fg, ' !important;
      }

      /* datatable: stripe row */
      table.dataTable.stripe tbody tr.odd, table.dataTable.display tbody tr.odd {
        background-color: ', table_fg, ' !important;
      }

      /* datatable: page control */
      .dataTables_wrapper .dataTables_paginate .paginate_button {
        color: ', app_font, ' !important;
      }

      /* datatable: table info */
      .dataTables_wrapper .dataTables_paginate .paginate_button.disabled,
      .dataTables_wrapper .dataTables_paginate .paginate_button.disabled:hover,
      .dataTables_wrapper .dataTables_paginate .paginate_button.disabled:active {
        color: ', app_font, ' !important;
      }
      .dataTables_wrapper .dataTables_length, .dataTables_wrapper .dataTables_filter,
      .dataTables_wrapper .dataTables_info, .dataTables_wrapper .dataTables_processing,
      .dataTables_wrapper .dataTables_paginate {
        color: ', app_font, ' !important;
      }
      .dataTables_wrapper .dataTables_length, .dataTables_wrapper .dataTables_filter,
      .dataTables_wrapper .dataTables_info, .dataTables_wrapper .dataTables_processing,
      .dataTables_wrapper .dataTables_paginate {
        color: ', app_font, ' !important;
      }

      /* datatable search box */
      .dataTables_wrapper .dataTables_filter input {
        background-color: ', textbox_bg, ';
        border: 1px solid ', textbox_border_col, ';
        border-radius: ', textbox_border_radius, 'px;
      }

      /* notification and progress bar */
      .progress-bar {
        background-color: ', box_success_col, ';
      }
      .shiny-notification {
        height: 80px;
        font-family: ', app_font_family, ';
        font-size: 15px;
        color: rgb(0,0,0);
        background-color: rgb(225,225,225);
        border-color: rgb(205,205,205);
        border-radius: 10px;
        margin-left: -450px !important;
      }

      /* horizontal divider line */
      hr {
        border-top: 1px solid rgb(215,215,215);
      }

      /* modal */
      .modal-body {
        background-color: ', box_bg, ';
      }

      .modal-footer {
        background-color: ', box_bg, ';
      }

      .modal-header {
        background-color: ', box_bg, ';
      }
    ',

      # __ my CSS ---------------------------------

    '
     /* selection */
     ::selection {
        background: ', selection, ';
     }

     /* box_outer_placeholder_bg */
      .row, .content, .content-wrapper {
          background: ', bg_box, ';
      }

      /* input_arrow *.
      .selectize-control.single .selectize-input:after {
        display: ', input_arrow_display, ';
      }

      /* selectize-dropdown ------------------------------------ */

      .selectize-dropdown, .selectize-dropdown.form-control {
        background: ', selectize_dropdown_bg, ' !important;
        color: ', selectize_dropdown_fg, ';
      }
      .selectize-input {
        border: solid 1px ', selectize_input_border, ' !important;
      }
      .selectize-input {
        background: ', selectize_input_bg, ' !important;
        color: ', selectize_input_fg, ' !important;
      }
      /* not sure why `.selectize-input` not working */
        .selectize-input > * {
          background: ', selectize_input_bg, ' !important;
          color: ', selectize_input_fg, ' !important;
        }
      .selectize-dropdown {
        border: solid 1px ', selectize_dropdown_border, ';
      }
      .selectize-dropdown .active {
        background: ', selectize_dropdown_active_bg, ';
        color: ', selectize_dropdown_active_fg, ';
      }
      /* selectize_dropdown_highlight */
      span.highlight {
          background: ', selectize_dropdown_highlight_bg, '!important;
          color: ', selectize_dropdown_highlight_fg, ';
      }
      .selectize-dropdown .optgroup-header {
        background: ', selectize_input_bg, ';
        color: ', selectize_dropdown_header_fg, ';
        font-size: 110%;
        border-bottom: solid 1px ', border, ';
      }
      .selectize-dropdown [data-selectable]:hover, .selectize-dropdown .optgroup-header:hover {
        background: ', selectize_dropdown_hover_bg, ';
        color: ', selectize_dropdown_hover_fg, ';
      }
      /* selectize-input bg */
        .form-control, .selectize-input, .selectize-control.single .selectize-input {
          background: ', selectize_input_others_bg, ' !important;
        }

        /* selectize_dropdown_transition */
        .selectize-dropdown [data-selectable] {
          transition: ', transition, ';
        }

      /* Search bar ------------------------------------ */
        .skin-blue .sidebar-form input[type=text] {
          background: ', bg, ' !important;
        }
      section.sidebar .shiny-bound-input.action-button, section.sidebar .shiny-bound-input.action-link {
        background: ', bg, ';
      }

      /* Right side bar ------------------------------------ */
        /* active tab panel */
        .control-sidebar-dark .nav-tabs.control-sidebar-tabs>li.active>a, .control-sidebar-dark .nav-tabs.control-sidebar-tabs>li.active>a:active, .control-sidebar-dark .nav-tabs.control-sidebar-tabs>li.active>a:focus, .control-sidebar-dark .nav-tabs.control-sidebar-tabs>li.active>a:hover {
          background: ', bg, ';
            color: ', selected_fg, ';
        }
      /* inactive side bar */
        .control-sidebar-dark .nav-tabs.control-sidebar-tabs>li>a {
          background: ', bg, ';
            color: ', fg, ';
        }
      /* tab panel border */
        .control-sidebar-dark .nav-tabs.control-sidebar-tabs>li>a, .control-sidebar-dark .nav-tabs.control-sidebar-tabs>li>a:focus, .control-sidebar-dark .nav-tabs.control-sidebar-tabs>li>a:hover {
          border-left-color: ', border, ';
            border-bottom-color: ', border, ';
            transition: ', transition, ';
        }
      /* hover */
        .control-sidebar-dark .nav-tabs.control-sidebar-tabs>li>a:hover {
          background: ', hover_bg, ';
            color: ', hover_fg, ';
        }
      /* body */
        .control-sidebar-dark, .control-sidebar-dark+.control-sidebar-bg {
          background: ', bg, ';
            border: solid 1px ', border, ';
        }
      /* Date range input ------------------------------- */

        /* date_range_input_fg */
        .input-daterange input {
            color: ', date_range_input_fg, ';
        }

        /* or this ? .datepicker-dropdown */
        .dropdown-menu {
          /* box-shadow: none; */
            border-color: ', date_range_dropdown_border_col, ' !important;
            background: ', date_range_dropdown_bg, ' !important;
        }
      /* active */
          .datepicker table tr td.active.active, .datepicker table tr td.active.highlighted.active, .datepicker table tr td.active.highlighted:active, .datepicker table tr td.active:active {
            background-color: ', date_range_input_active_bg, ';
          color: ', date_range_input_active_fg, ';
        }
      /* hover */
            .datepicker table tr td:hover, .datepicker table tr th:hover {
          background: ', date_range_input_hover_bg, ' !important;
            color: ', date_range_input_hover_fg, ';
        }
      /* active: others */
          .datepicker table tr td span.active.active, .datepicker table tr td span.active.disabled.active, .datepicker table tr td span.active.disabled:active, .datepicker table tr td span.active.disabled:hover.active, .datepicker table tr td span.active.disabled:hover:active, .datepicker table tr td span.active:active, .datepicker table tr td span.active:hover.active, .datepicker table tr td span.active:hover:active {
          background-color: ', date_range_others_active_bg, ';
            color: ', date_range_others_active_fg, ';
            border-color: ', date_range_others_active_border_col, ';
        }
      /* hover: others */
        /* element overrule by above...hence using same `color` */
          .datepicker table tr td span.focused, .datepicker table tr td span:hover {
          background: ', date_range_others_hover_bg, ';
          color: ', date_range_others_hover_fg, ';
        }
      /* unavailable date */
        .datepicker table tr td.new, .datepicker table tr td.old {
          color: ', date_range_input_middle_button_fg, ';
        }
      /* Date input: to middle part */
        .input-group .input-group-addon {
          background-color: ', date_range_to_middle_part_bg, ';
          color: ', date_range_input_middle_button_fg, ';
            text-shadow: none !important;
          border: none;
        }
      .skin-blue .sidebar-form input[type=text] {
        color: ', date_range_to_middle_part_others_fg, ' !important;
      }
      section.sidebar .shiny-bound-input.action-button, section.sidebar .shiny-bound-input.action-link {
        background: ', date_range_to_middle_part_others_bg, ' !important;
          margin: 5px;
      }

      /* date_range_year_choices_fg */
      /* hacky way to fix weird styles */
      .datepicker table tr td span {
        color: ', date_range_year_choices_fg, ';
      }
      /* date_range_year_choices_hover_bg */
      /* hacky way to fix weird styles */
      .datepicker table tr td span:hover {
        background: ', date_range_year_choices_hover_bg, ' !important;
      }

      /* material_switch */
      .material-switch > label::before {
        background: ', material_switch_bg, '!important;
      }
      .material-switch > label::after {
          background: ', material_switch_before_bg, ';
      }
      .label-default {
          background: ', material_switch_after_bg, '!important;
      }

      /* Borders of search_bar and search_bar_icon ------------------------------------
        are two diff elements, hence specifying the borders separately to omit the middle border. Doing this together with date_input_border  */
        /* date_input_border */
        .input-daterange input {
          border: solid 1px ', border, ';
        }
      /* search_bar and date_input_border */
        .input-group .form-control {
          border-top: solid 1px ', border, ' !important;
          border-bottom: solid 1px ', border, ' !important;
          border-left: solid 1px ', border, ' !important;
        }
      /* search_bar_icon_border */
        section.sidebar .shiny-bound-input.action-button, section.sidebar .shiny-bound-input.action-link {
          border-top: solid 1px ', border, ';
          border-bottom: solid 1px ', border, ';
          border-right: solid 1px ', border, ';
        }
      /* datatable ------------------------------------ */
        /* table footer input bar */
        table tfoot input {
          background: ', hover_bg, ';
            border: solid 1px ', border, ' !important;
        }
      /* previous/next buttons */
        .pagination>li>a {
          background: ', hover_bg, ' !important;
            border: none !important;
          color: ', fg, ' !important;
        }
      /* placeholder */
        ::placeholder {
          color: ', placeholder_fg, ' !important
        }

        /* datatable_show_entries_border */
        .form-inline .form-control {
          border: solid 1px ', border, ' !important;
        }

        /* datatable_search_border */
        .dataTables_wrapper .dataTables_filter input {
          border: solid 1px ', border, ' !important;
        }
      /* Scrollbar ------------------------------------ */

        /* total width */

        ::-webkit-scrollbar {
          background-color: ', bg, ';
            width: 16px;
        }

      /* background of the scrollbar except button or resizer */

        ::-webkit-scrollbar-track {
          background-color: ', bg, ';
        }

      /* scrollbar itself */

        ::-webkit-scrollbar-thumb {
          background-color: ', hover_bg, ';
            border-radius: 16px;
          border: 4px solid ', bg, ';
        }

      /* set button(top and bottom of the scrollbar) */

        ::-webkit-scrollbar-button {
          display: none;
        }
      /* label_danger */
      .alert-danger, .alert-error, .bg-red, .callout.callout-danger,
      .label-danger, .modal-danger .modal-body {
        display: none;
      }

      /* reactable ------------------------------------ */

      /* reactable */
      .ReactTable, .rt-table {
          background: ', reactable_bg, ';
          border-color: ', border, ';
      }

      .rt-tr-striped-sticky {
          background: ', reactable_bg, ';
      }

      .rt-tr-highlight-sticky:hover {
          background: ', hover_bg_table, ';
      }

      /* reactable_header_border_btm */
      .rt-td {
        border-top: 1px solid ', border, ';
      }

      /* reactable_body_border */
      .rt-align-left.-cursor-pointer.rt-th, .rt-th {
        border: none !important;
      }

      /* reactable_bg_strip */
      .ReactTable.-striped .rt-tr.-odd {
          background: ', reactable_bg_strip, ';
      }

      /* reactable_search */
      input.rt-search {
          background: ', hover_bg, ';
          border-color: ', border, ';
          color: ', search_box_input_fg, ';
      }

      /* reactable_search_focus */
      input.rt-search:focus {
          border-color: ', border, ';
      }

      /* reactable_highlight */
      .rt-tr-group:hover {
          background: ', hover_bg_table, ';
      }

      /* reactable_pagination_select */
      .ReactTable .rt-pagination select, .ReactTable .rt-pagination input {
          background: ', hover_bg, ';
      }

      /* reactable_pagination_info */
      .ReactTable .rt-pagination-info :not(:last-child) {
          color: ', placeholder_fg, ';
      }

      /* reactable_page_button */
      .ReactTable .rt-page-button-content {
          color: ', placeholder_fg, ';
      }

      /* reactable_body */
      /* hacky way? */
      .ReactTable .rt-tbody .rt-td {
        border-left: solid 1px ', border, ';
      }

      /* reactable_filter */
      .rt-filter {
        background-color: ', reactable_bg, ';
        color: ', button_fg, ';
        border-color: ', reactable_filter_border, ';
      }

      .rt-filter:focus {
        border-color: ', reactable_filter_border, ';
      }

    '
  ))))
}
