#' A HW5Package Function
#'
#' Outputs a correlation matrix for all numerical data in a given year
#' @param year no default
#' @keywords correlation
#' @export
#' @examples
#' cor_matrix()
cor_matrix <- function(year) {
  stats <- read_csv("data/Seasons_Stats_NBA.csv")
  output <- stats %>%
    filter(Year == year) %>%
    keep(is.numeric)
  cor(output)
}
