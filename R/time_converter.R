#' Convert between hours, minutes, and seconds
#'
#' `time_converter()` performs the conversion based on the specified `unit_from`
#' and `unit_to` values.
#'
#' @param time A numerical value of the time unit to be converted.
#' @param unit_from A character string of the time unit to convert from
#' @param unit_to A character string of the time unit to convert to
#' @returns A numeric time value in the unit specified as `unit_to`.
#' @export
time_converter <-
function(time, unit_from, unit_to) {
  if ( (unit_from == "hours" && unit_to == "minutes") ||
       (unit_from == "minutes" && unit_to == "seconds") ) {
    return(time * 60)
  } else if ( (unit_from == "minutes" && unit_to == "hours") ||
              (unit_from == "seconds" && unit_to == "minutes") ) {
    return(time / 60)
  } else if (unit_from == "hours" && unit_to == "seconds") {
    return(time * 3600)
  } else if (unit_from == "seconds" && unit_to == "hours") {
    return(time / 3600)
  } else {
    return(time)  # No conversion needed
  }
}
