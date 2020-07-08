library(Sleuth2)
attach(ex1713)
head(ex1713)

?ex1713

# Figure 16-1: produce scatter plot matrix of denomination data
library(Sleuth2)
attach(ex1713)
pairs(~ Distinct + Attend + NonChurch + StrongPct + AnnInc,
  pch = 16,
  col = "deepskyblue")

#Fig 16-2: scatter plot matrix w/ smoother & diagonal density
library(car)
library(Sleuth2)
attach(ex1713)
scatterplotMatrix(~Distinct + Attend + NonChurch + StrongPct +
  AnnInc)

# Figure 16-3: scatter plot matrix w/out smoother & with histograms
scatterplotMatrix(~Distinct + Attend + NonChurch + StrongPct
  + AnnInc, diagonal = "histogram",
  smoother = NULL)

library(Sleuth2)
attach(ex1713)
y = cor(ex1713[, 2:6]) # use all rows and columns 2-6
y

# Figure 16-5: various corrgrams
library(corrplot)
library(Sleuth2)
attach(ex1713)
y = cor(ex1713[, 2:6])
par(mfrow = c(2,2))
corrplot(y)  # default method is "circle"
corrplot(y, method = "color")
corrplot(y, method = "number")
corrplot(y, method = "ellipse", type = "lower")

# Figure 16-6
library(GGally)
library(Sleuth2)
ggscatmat(ex1713, columns = 2:6)

# Figure 16-7: fix a bug in Figure 16-6
library(GGally)
library(Sleuth2)
ex1713$Inc = ex1713$AnnInc/1000
ggscatmat(ex1713, columns = c(2:5,7))

load("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/Nimrod.rda")

# Figure 16-8
library(GGally)
ggpairs(Nimrod[,2:4])

# Figure 16-9
install.packages("gpairs") # if not already installed
library(gpairs)
gpairs(Nimrod[,2:4])
