#' Performs the weight conversion based on the specified `unit_from` and `unit_to` values.
#'
#' @param weight_value A numerical weight value to be converted.
#' @param unit_from A character string of the distance unit to convert from. Options are `"gram"`,
#' `"kilogram"`, `"pound"`, and `"ounce"`.
#' @param unit_to A character string of the distance unit to convert to. Options are `"gram"`,
#' `"kilogram"`, `"pound"`, and `"ounce"`.
# Add returning value description and tag
#' @returns A numeric weight value in the unit specified as `unit_to`.
# Export this function
#' @export

# Define the weight_converter function
weight_converter <- function(weight_value, unit_from, unit_to) {
  # Conversion factors for different weight units
  conversion_factors <- c(gram = 1, kilogram = 1000,
                          pound = 453.592, ounce = 28.3495)

  # Convert value from the unit_from to gram
  in_grams <- weight_value * conversion_factors[unit_from]

  # Convert value from gram to the unit_to
  return(unname(in_grams / conversion_factors[unit_to]))
}
