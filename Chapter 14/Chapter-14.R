Flow <- read.csv("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/BlandAltmanPeakFlow.csv", header=TRUE)

head(Flow)

# result in Figure 14-1; shorter version at end of chapter
baplot <- function(meas1, meas2){

# calculate averages and differences
 ave = (meas1 + meas2)/2
    dif = meas1 - meas2

# calculate parameters for reference lines
    std = sd(dif)
    mdif = mean(dif)
    mdrnd = round(mdif,3)
    mxav = max(ave) - (max(ave) - min(ave))/12
    upperci = round((mdif + std*1.96), 3)
    lowerci = round((mdif - std*1.96), 3)
    maxx = 1.05*(max(ave))
    minx = 1.05*(min(ave))
    maxy = max(upperci,max(dif))
    miny = (min(lowerci,min(dif)))

# plot points
plot(ave,dif,
 pch = 16, col = "deepskyblue3",
 xlim = c(minx,maxx), ylim = c(1.1*miny, 1.1*maxy),
 main = "Bland-Altman Plot",
 col.main ="deepskyblue4",
 xlab ="Average of two methods",
 ylab ="Difference between two methods", las=1)

# draw reference lines
abline(h = mdif,
  lty = "solid", col = "grey75", lwd = 2)
abline(h = mdif + std*1.96,
  lty ="dotted", col = "grey75", lwd = 2)
abline(h = mdif - std*1.96,
  lty = "dotted", col = "grey75", lwd = 2)

# put text around reference lines
text(mxav, mdif,
  labels = "mean difference",
  pos = 3,
  cex = .7)
text(mxav, mdif,
  labels = mdrnd,
  pos = 1,
  cex = .7)
text(mxav, upperci,
  labels = "upper 95% limit of agreement",
  pos = 3,
  cex = .7)
text(mxav, upperci,
  labels = upperci,
  pos = 1,
  cex = .7)
text(mxav, lowerci,
  labels = "lower 95% limit of agreement",
  pos = 3,
  cex = .7)
text(mxav, lowerci,
  labels = lowerci,
  pos = 1,
  cex = .7)
}

save("baplot", file = "/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/baplot")

# Figure 14-1
Flow <- read.csv("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/BlandAltmanPeakFlow.csv", header = TRUE)
load("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/baplot")
baplot(Flow$Wright1, Flow$Mini1)

# Figure 14-2
baplot(Flow$Wright1, Flow$Wright2)

# Figure 14-3
install.packages("epade") # if not already installed
library(epade)
Flow <- read.csv("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/BlandAltmanPeakFlow.csv", header = TRUE)
bland.altman.ade(Flow$Wright1, Flow$Mini1, fitline = 0)

library(help = epade)

bland.altman.ade  # displays code for this function
