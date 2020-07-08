# script for Figure 17-1
library(scatterplot3d)
attach(trees)
par(mfrow = c(2,2),
  cex.main = .9,
  las = 1)

scatterplot3d(Height, Girth, Volume,
  main="a. 3D scatter plot of trees data")
# you could substitute: scatterplot3d(trees)
# to see what happens...

scatterplot3d(Height,Girth,Volume,
  pch = 16,
  highlight.3d = T,
  main = "b. 3D scatter plot with highlighting",
  cex.axis = .5)

scatterplot3d(Height,Girth,Volume,
  pch = 16,
  highlight.3d = T,
  type = "h",
  main = "c. 3D scatter plot with lines and highlighting",
  cex.axis = .5)

scatterplot3d(Height, Girth, Volume,
  pch = 15, type = "h",
  lwd = 5,
  color = "cyan4",
  main = "d. 3D bar plot without box",
  box = F,
  cex.axis = .5)

# Figure 17-2
library(scatterplot3d)
attach(trees)
par(mfrow=c(1,1), las = 1)
# put plot results in an object, sp3
sp3 = scatterplot3d(Height, Girth, Volume, pch = 16,
  highlight.3d = T,
  type = "h",
  main = "3D scatter plot with prediction plane",
  cex.axis = .7,
  box= F)
model = lm(Volume ~ Height  +Girth) # fit linear model, named "model"
sp3$plane(model)  # draw the plane created by the
                  # model

# Figure 17-3
library(car)
library(rgl)
attach(trees)
scatter3d(Height, Volume, -1*Girth)
rgl.snapshot("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/ch17.3.png", fmt = "png") # save to working dir

# Figure 17-4
library(car)
library(rgl)
attach(trees)

scatter3d(Girth, Volume, Height, revolutions = 2)
rgl.snapshot("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/ch17.4.png", fmt = "png") # save to working dir

# Figure 17-5
library(lattice)
library(sm)
data(coalash)
attach(coalash)
levelplot(Percent ~ East*North)

# Figure 17-6
library(DescTools)
attach(trees)
PlotBubble(x = Height, y = Girth, area = Volume,
  col="steelblue", border = "burlywood",
  inches = .25,
  xlab = "Height", ylab = "Girth",
  main = "Tree volume, proportional to circle area",
  family = "HersheySerif", font.main = 4,
  col.main = "maroon")

# Figure 17-7
library(DescTools)
library(Sleuth3)
attach(ex0923)
PlotBubble( x= Educ, y = AFQT, area = Income2005/1000,
  col = SetAlpha(as.numeric(Gender)), border = "burlywood",
  inches = .5, xlab = "Education", ylab = "AFQT test score")
title(main = "Income, proportional to circle area")
legend("left", c("Female","Male"),
  text.col = c(1:2), cex =.9, bty = "n")

# Figure 17-8
library(DescTools)
library(Sleuth3)
attach(ex0923)

# take random sample from ex0923
set.seed(3)              # get the same random sample each time
s = sample(nrow(ex0923), 100) # random sample of 100 row IDs
samp = ex0923[s,]        # all rows in s; all columns in ex0923

detach(ex0923)        # R will not use the full dataset, ex0923
attach(samp)               # R will use the subset data
PlotBubble( x= Educ, y = AFQT, area = Income2005/1000,
  col = SetAlpha(as.numeric(Gender) +3), border = "burlywood",
  inches = .25, xlab = "Education", ylab = "AFQT test score")
title(main = "Income, proportional to circle area")
legend("left", c("Female","Male"),
  text.col = c(1:2)+3, cex =.9, bty = "n")

library(DescTools)
PlotPar()
