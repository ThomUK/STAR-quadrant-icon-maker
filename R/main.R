rm(list = ls())
library(tidyverse)
library(grid)
library(gtools)

source("R/source_all.R")

# make 81 RAG icons (all permutations of 3 colours in the 4 quadrants)
walk(icon_names(), make_icon_png)

# add an all white icon to the set
make_icon_png("WWWW")

# add white icons with a single green quadrant for documentation
make_icon_png("GWWW")
make_icon_png("WGWW")
make_icon_png("WWGW")
make_icon_png("WWWG")