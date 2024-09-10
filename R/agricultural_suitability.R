#' Ramankutty et al. (2002) Index for Global Agricultural Suitability
#'
#' Agricultural suitability index scaled between 0 and 1.
#' The dataset describes the fraction of each 0.5-degree grid cell occupied by cultivated land at a global level.
#'
#'
#' @name ramankuttyetal2002
#' @format ##
#' A raster formatted as a stars object, unprojected EPSG:4326 (WGS84).
#' \describe{
#'   \item{cellvalue}{Agricultural suitability between 0 and 1.}
#' }
#' @source Ramankutty, Navin, Jonathan A. Foley, John Norman, and Kevin McSweeney. "The Global Distribution of Cultivable Lands: Current Patterns and Sensitivity to Possible Climate Change." Global Ecology and Biogeography 11, no. 5 (2002): 377-392. https://doi.org/10.1046/j.1466-822x.2002.00294.x.
#'
#' @examples
#' if (requireNamespace("stars", quietly = TRUE)) {
#'   library(stars)
#'   data("ramankuttyetal2002")
#'
#'   plot(ramankutty)
#'  }
"ramankutty"

#' Lehner, Philippe (2024) Suitability Index for Europe from 1500 to 2000
#'
#' A gridded index at a 0.5-degree resolution at a yearly level.
#' It relies on a simple surface energy and water balance model, focusing only on so-called exogenous geographic and climatic features.
#' Consists of four main building blocks: a measure for cumulative temperature exposure (growing degree days), a measure for soil moisture (aridity index), the carbon content of the soil, and its potential hydrogen value. Land suitability is then defined as the predicted value of the propensity of a given piece of land to be suitable for cultivation.
#'
#' @name agrisuit_1500_2000
#' @format ##
#' A GeoTIFF file formatted as a stars object, unprojected EPSG:4326 (WGS84). Each band represents one year.
#' \describe{
#'   \item{cellvalue}{Agricultural suitability between 0 and 1.}
#'   \item{bands}{501 bands, each representing one year. Band 1 refers to year 1500, band 501 to year 2000.}
#' }
#' @source Lehner, Alexander, and Dylan Philippe. "A time-varying index for agricultural suitability across Europe from 1500 - 2000." (2024)
#'
#' @examples
#' if (requireNamespace("stars", quietly = TRUE)) {
#'   library(stars)
#'   data("agrisuit_1500_2000")
#'
#'   # stack has 501 bands (one band for every year):
#'   dim(suit1500200)
#'   # plot year 1500:
#'   plot(suit1500200[ , , ,1], main = "Agricultural Suitability in 1500")
#'  }
#'
"suit1500200"
