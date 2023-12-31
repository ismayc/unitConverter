#' Convert between distances
#'
#' Performs the conversion based on the specified `unit_from` and `unit_to` values.
#'
#' @param dist_value A numerical distance value to be converted.
#' @param unit_from A character string of the distance unit to convert from
#' @param unit_to A character string of the distance unit to convert to
#' @returns A numeric distance value in the unit specified as `unit_to`.
#' @export
dist_converter <- function(dist_value, unit_from, unit_to) {
  if (unit_from == "feet" && unit_to == "meters") {
    return(dist_value * 3.2808)
  } else if (unit_from == "meters" && unit_to == "feet") {
    return(dist_value * 0.3048)
  } else if (unit_from == unit_to) {
    warning("unit_from and unit_to are the same, returning dist_value")
    return(dist_value)
  } else {
    stop("This function only supports conversions between feet and meters.")
  }
}
