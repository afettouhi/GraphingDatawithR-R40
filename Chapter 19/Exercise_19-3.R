install.packages("Amelia", dependencies = T)
library(Amelia)
missmap(airquality)

library(epade)
missiogram.ade(airquality)
