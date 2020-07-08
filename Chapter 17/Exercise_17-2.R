library(lattice)
library(epiDisplay)
data(SO2)
levelplot(SO2$deaths ~ SO2$smoke + SO2$SO2)
