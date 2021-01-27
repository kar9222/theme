#' Plot image scales
#' 
#' (none)
#' 
#' @param obj (none)
#' @param name (none)
#'
#' @references [What is a “good” palette for divergent colors in R? (or: can viridis and magma be combined together?)](https://stackoverflow.com/questions/37482977/what-is-a-good-palette-for-divergent-colors-in-r-or-can-viridis-and-magma-b/44553670)
#'
#' @examples
#' \dontrun{
#'   rwb <- colorRampPalette(colors = c("red", "white", "blue"))
#'   img(pals_elegant_dark()(100), 'my_theme')
#' }
#'
#' @export

image_ <- function(obj, name = deparse(substitute(obj))) {
  image(1:length(obj), 1, as.matrix(1:length(obj)), col=obj,
        main = name, ylab = '', xaxt = 'n', yaxt = 'n',  bty = 'n')
}
