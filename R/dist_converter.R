dist_converter <-
function(dist_value, unit_from, unit_to) {
  if (unit_from == "feet" & unit_to == "meters") {
    return(dist_value * 3.2808)
  } else if (unit_from == "meters" & unit_to == "feet") {
    return(dist_value * 0.3048)
  } else if (unit_from == unit_to) {
    warning("unit_from and unit_to are the same, returning dist_value")
    return(dist_value)
  } else {
    stop("This function only supports conversions between feet and meters.")
  }
}
