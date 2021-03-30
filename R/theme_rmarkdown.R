#' Add CSS file for RMarkdown to project directory
#'
#' @param path Default to 'reports/rmarkdown/www/rmd.css'.
#'
#' @export
add_css_for_rmd <- function(path = 'reports/rmarkdown/www/rmd.css') {
  dir <- dirname(path)
  if (! dir.exists(dir)) dir.create(dir, recursive = TRUE)

  rmd_css <- system.file(package = 'theme', 'css/rmd.css')
  file.copy(rmd_css, path)

  message('Added CSS file for RMarkdown to ', path)
}





# From {bookdown} --------------------------------

# Try adapting codes from {bookdown}
# - see if links can be replaced from '*.html' to '*.Rmd'
# - Hard to rewrite that render multi-Rmd with properly formatted TOC.
# - adapt functions that split chapters, format TOC, etc

# Focus
# - html.R: `html_chapters`, `build_chapters`, `split_chapters`, `add_toc`, `parse_a_targets`
# - gitbook.R: `gitbook`, `gitbook_toc`
# - keywords: `<a href=` after 'data-path'
