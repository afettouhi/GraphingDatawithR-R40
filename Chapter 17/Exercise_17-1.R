library(scatterplot3d)
library(epiDisplay)
data(SO2)
scatterplot3d(SO2$smoke, SO2$SO2, SO2$deaths,
  highlight.3d = T,
  type = "h")
