#' A HW5Package Function
#'
#' Outputs all stats for the oldest player in a given year
#' Returns first result in alphabetical order if there is a tie
#' @param year no default
#' @keywords age
#' @export
#' @examples
#' oldest_player()
oldest_player <- function(year) {
  output <- stats %>%
    filter(Year == year) %>%
    filter(Age == max(Age)) %>%
    arrange(Player)
  head(output,1)
}
