#' Convert between Fahrenheit and Celsius temperatures
#'
#' `temp_converter()` performs the conversion based on the specified `unit_from`
#' and `unit_to` values. If the conversion is not possible due to invalid units or
#' if `unit_from` and `unit_to` are the same, appropriate warnings or errors
#' are raised.
#'
#' @param value A numerical value of the temperature to be converted.
#' @param unit_from A character string of the temperature unit to convert from
#'   (default is "Celsius").
#' @param unit_to A character string of the temperature unit to convert to
#'   (default is "Fahrenheit").
#' @returns A numeric temperature value in the unit specified as `unit_to`.
#' @export
temp_converter <- function(
    value,
    unit_from = "Celsius",
    unit_to = "Fahrenheit") {
  if (unit_from == "Celsius" && unit_to == "Fahrenheit") {
    return(value * 9/5 + 32)
  } else if (unit_from == "Fahrenheit" && unit_to == "Celsius") {
    return((value - 32) * 5/9)
  } else if (unit_from == unit_to) {
    warning("unit_from and unit_to are the same, value returned.")
    return(value)
  } else {
    stop("Invalid unit_from or unit_to. Only 'Celsius' and 'Fahrenheit' are accepted.")
  }
}
