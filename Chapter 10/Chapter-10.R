# Script for Figure 10-1
par(mfrow = c(2,2))

allocation = c(30,25,28,10,7)  # investment allocations

# sector & sectcol will be reused; we won't have to retype them
sector = c("Stock","For'n'","Bonds",
           "Gold","Cash") # names fit page
sectcol = c("burlywood","turquoise","firebrick",
            "gold3","green4")

# Figure 10-1 top left
pie(allocation, labels = sector, main = "pie, default colors")

# Figure 10-1  top right
pie(allocation, labels = sector, col = sectcol,
  main = "pie, choose colors")

# Figure 10-1 bottom left
install.packages("plotrix", dependencies = TRUE)
library(plotrix) # must have first installed plotrix
pie3D(allocation, labels = sector, col = sectcol, explode = .1,
  labelcex = .95, labelrad = 1.3, main = "pie3D")
# explode separates pieces/labelrad pushes labels away from edge

# Figure 10-1 bottom right
barplot(allocation, names.arg = sector, col = sectcol,
  main = "barplot")

# Figure 10-2
library(plotrix)
allocation = c(30,25,28,10,7)  # investment allocations
# sector & sectcol will be reused; we won't have to retype them
sector = c("Stock","For'n","Bonds","Gold","Cash")
sectcol = c("burlywood","turquoise","firebrick","gold3",
  "green4")

fan.plot(allocation, labels = sector, col = sectcol,
  ticks = 30, main = "Fan Plot")
