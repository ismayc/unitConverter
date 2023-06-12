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
