# Script for Figure 11-1
library(multcomp)
par(mfrow = c(2,2))
stripchart(mtcars$drat,
  main="a. side = 3", method = "jitter",
  pch = 20, col = "sienna4")
rug(mtcars$drat, side = 3)

boxplot(mtcars$drat, main = "b. side = 2",
  col = "firebrick")
rug(mtcars$drat, col = "darkmagenta", side = 2)

hist(airquality$Ozone, main = "c. side = 1", col = "cyan4")
rug(airquality$Ozone, col = "cyan4")

boxplot(sbp$sbp,
  main = "d. side = 4", col = "darkorange3")
rug(sbp$sbp, side = 4, col = "cornsilk4")
