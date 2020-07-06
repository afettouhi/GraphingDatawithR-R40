baplot2 <- function(meas1,meas2){
ave = (meas1 + meas2)/2
dif = meas1 - meas2
mdif = mean(dif)
plot(ave,dif,
  pch = 16,
  main = "Bland-Altman Plot",
  xlab = "Average of two methods",
  ylab = "Difference between two methods", las = 1)
abline(h = mdif,
  lty = "solid", col = "grey75", lwd = 2)
}

save("baplot2", file = "/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/baplot2")

library(ResearchMethods)
load("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/baplot2") # if you saved baplot!
data(MFSV)
attach(MFSV)
baplot(MF,SV)
