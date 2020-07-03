# Script for Figure 7-1
library(multcomp)
attach(sbp)
par(mfrow = c(2,2))
hist(sbp, main = "a. Let R decide bin sizes")
hist(sbp, main = "b. Choose 4 particular breakpoints",
  breaks = c(110,135,160,185))
hist(sbp, main = "c. Suggest number of breakpoints",
  breaks = 30)
hist(sbp, main = "d. Set first, last and increment",
  breaks = seq(110,190,15))
detach(sbp)

# Figure 7-2
attach(sbp)
hist(sbp, main = "sbp dataset", las = 1, label = T,
  col = "maroon", xlab = "Systolic blood pressure")
detach(sbp)

# Figure 7-3
library(plotrix)
library(multcomp)
x <- as.data.frame(sbp)
attach(x)
histStack(x$sbp, z = x$gender,
  col=c("navy","skyblue"),
  main = "Systolic blood pressure by gender",
  xlab = "Systolic blood pressure", legend.pos = "topright")
detach(x)

# Figure 7-4
library(RcmdrMisc)
library(multcomp)
x <- as.data.frame(sbp)
attach(x)
Hist(x$sbp, groups = x$gender,
  main = "Systolic blood pressure by gender",
  col = "navy ", xlab = "Systolic blood pressure")
detach(x)

# Figure 7-5
install.packages("lattice") # you probably already have it
install.packages("car")
library(lattice)
library(car)
head(Salaries)

histogram(~ Salaries$salary | Salaries$rank * Salaries$sex,
  type = "count", main = "Faculty Salaries by Rank & Gender")
