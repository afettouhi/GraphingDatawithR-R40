# Script for Figure 8-1; there are 4 graphs
library(multcomp)
par(mfrow = c(2,2), cex.main =.9)

# Figure 8-1a
eq = density(sbp$sbp) # estimate density curve of sbp
plot(eq, xlim = c(100,190),
  main = "a. Systolic Blood Pressure Density Plot",
  lwd = 2) # plot estimate

# Figure 8-1b
# use histogram to estimate density
hist(sbp$sbp,
  main = "b. Histogram + Kernel Density", col = "maroon",
  las = 1, cex.axis = .8, freq = F) # freq=F: prob. densities
lines(eq,lwd = 2) # plot density curve on existing histogram

# Figure 8-1c
eq2 = density(sbp$sbp, bw = 5)
hist(sbp$sbp,
  main = "c. Histogram + Kernel Density, bw = 5",
  col = "maroon", las = 1, cex.axis = .8,
  freq = F) # freq=F: prob. densities
lines(eq2,lwd = 2) # plot density curve on existing histogram

# Figure 8-1d
eq3 = density(sbp$sbp, bw = 10)
hist(sbp$sbp,
  main = "d. Histogram + Kernel Density, bw = 10",
  col = "maroon", las = 1,
  cex.axis = .8, freq = F) # freq=F: prob. densities
lines(eq3, lwd = 2) # plot density curve on existing histogram

load("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/emiss.rda") # load emissions data from Chapter 1
emissions  # look at emissions data

# Script for Figure 8-2
# following par() sets white characters on black background
load("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/emiss.rda")
par(bg = "black", col.lab = "white",
  col.axis = "white", bty="l",
  fg = "white", col.main = "white")
euro = density(emissions$Europe) # points on density(Euro)
ea = density(emissions$Eurasia)  # points on density(Eurasia)
# use xlim & ylim so 2nd plot does not go out of range
plot(euro, xlim = c(6.9,9), ylim = c(0,2),
  main = "CO2 Emissions in Europe and Eurasia",
  col = "goldenrod1", lwd = 2)
lines(ea, xlim = c(6.9,9), ylim = c(0,2),
  lty = 2, lwd = 2, col = "cyan")
# lty=2 is dotted line
# lwd = 2 is a wider line than default line

legend("topleft",c("Europe","Eurasia"),
  text.col = c("goldenrod3","cyan"), bty = "n")

# code for Figure 8-3
library(multcomp)
library(Hmisc)
par(mfrow = c(2,2), cex.main = .9, bg = "white")

# get 100,000 numbers sampled from a normal dist
# with mean = 0 and sd = 1
sam <- (rnorm(100000))  #mean = 0 and sd = 1 are default values
plot(density(sam),
  main = "a. Density (sampling from Normal distribution)",
  col = "coral4")  # Figure 8-3a
polygon(density(sam), col = "coral4") # color area under curve

plot(ecdf(sam),
  main = "b. Cumulative distribution function of sample in
  Figure 8-3a", col = "turquoise")

plot(ecdf(sbp$sbp), main = "c. ecdf(sbp$sbp) - base R")

Ecdf(sbp$sbp,
  main="d. Ecdf(sbp$sbp) - Hmisc pack. + grid()",
  xlab = "sys blood pressure", col = "deepskyblue3")
grid(col = "gray70") # adds gray grid to current plot

# code for Figure 8-4
library(ggplot2)
ggplot(sbp, aes(x=sbp)) + stat_ecdf()
