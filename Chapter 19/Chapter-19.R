head(mtcars)

# script for Figure 19-1
par(mfrow = c(2,2))
x = c(2,5)
y = c(3,6)
yp = c(0,6)
xp = c(0,8)

plot(x,y, pch = 16, xlim = xp, ylim = yp,
  xaxt ="n", yaxt = "n", bty ="l",
  main="Variables x and y, Observations 1 and 2",
  cex.main = .9,
  ylab = "")
text(x = 3.2, y = 3,
  labels = expression(group("(", list(x[1], y[1]), ")")))
text(x = 6.2, y = 6,
  labels = expression(group("(", list(x[2], y[2]), ")")))
mtext(text = "y",
  side = 2, las = 1,
  cex = .8, line = 3)
plot(x, y, pch = 16, type = "o", xlim = xp, ylim = yp,
  main = "Euclidean distance",
  xaxt = "n", yaxt = "n", bty = "l", ylab = "")
text(3.6, 1.5, labels =
  expression(sqrt((x[2] - x[1])^2 + (y[2] - y[1])^2)))
lines(x, y, type = "s", lty = "dotted")
mtext(text = "y", side = 2, las = 1, cex = .8, line = 3)

plot(x,y,
  pch = 16, xlim = xp, ylim = yp,
  main = "Manhattan distance",
  xaxt = "n", yaxt = "n", bty = "l", ylab = "")
lines(x,y,type="s" )
text(3.6, 1.5,
  labels = expression(group("|", x[2] - x[1],"|") +
  group("|",y[2] - y [1],"|")))
mtext(text = "y", side = 2, las = 1,cex = .8, line = 3)

attach(mtcars)
mean(mpg)
sd(mpg)

mpg2 = (mpg - 20.09)/6.026948
mean(mpg2)
sd(mpg2)

mpg3 = scale(mpg)
mean(mpg3)
sd(mpg3)

# Figure 19-2
attach(mtcars)
cars = as.matrix(mtcars)  # convert to matrix- dist requires it
h = dist(scale(cars))     # scale cars matrix & compute dist matrix
h2 = hclust(h)            # compute clusters
plot(h2)                  # plot dendrogram

newcars = t(cars)  # newcars is the transpose of cars
h = dist(scale(newcars))
h2 = hclust(h)
plot(h2)

# Figure 19-3
attach(mtcars)
cars = as.matrix(mtcars)
image(scale(cars))    # simple heat map

# Figure 19-4
image(scale(cars), col = rainbow(256, start = .5, end = .6))
# heat map with range of blues

heatmap(scale(cars))  # Figure 19-5

# Figure 19-6
library(gplots)
heatmap.2(scale(cars))