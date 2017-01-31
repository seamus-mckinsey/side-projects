#' Women's March Script
#' 

library(tidyverse)
library(leaflet)
library(maps)

# download women's march domestic crowd size from data.world: 
# https://data.world/carlvlewis/womens-marches-crowd-sizes/query/3ed57833-eb27-4984-b7a4-1567a8acf670
womens_march <-
    read.table(
        "https://query.data.world/s/9xr0e3kdeytsqluoqgzkjfpq6",
        header = T,
        sep = ","
    )

# data not complete - Denver largest city in dataset with 200k, but DC ~ 500k
leaflet(womens_march) %>% addCircles(radius = ~mean.high.low) %>% addTiles()
