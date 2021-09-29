rm(list = ls())
library(tidyverse)
library(grid)
library(gtools)

source("R/source_all.R")

# make all 81 icons
walk(icon_names(), make_icon_png)

# add an all white icon
make_icon_png("WWWW")
