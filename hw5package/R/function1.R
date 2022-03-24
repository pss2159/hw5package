#' A HW5Package Function
#'
#' Outputs all stats for the player with the highest free throw number in a given year
#' @param year no default
#' @keywords free throws
#' @export
#' @examples
#' highest_ft()
highest_ft <- function(year) {
  output <- stats %>%
    filter(Year == year) %>%
    filter(FT == max(FT))
  output
}
