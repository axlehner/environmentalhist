library(raster)

ramankutty <- terra::rast("data-raw/ramankuttyetal2002-land_suit_0-50x0-50.nc")
ramankutty <- terra:::readAll(ramankutty) # three dots to get the internal method
# loads everything, see https://github.com/rspatial/terra/issues/549
usethis::use_data(ramankutty, overwrite = TRUE)
# cannot store a raster as rda
# see the UChicago CSDS pkg: shapes and sf dfs work, however
