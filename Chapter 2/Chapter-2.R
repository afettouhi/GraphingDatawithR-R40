year <- c(1,2,3,4)
rate <- c(94,92,90,80)

jpeg("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/test.jpeg") # opens a device
plot(year,rate)
dev.off()   # closes the graphic device - you must do this

dpi=600
png("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/filename.png", width = 6*dpi, height = 6*dpi,
  res = dpi)
# graphic commands
dev.off()

plot(mtcars$wt, mtcars$mpg, pch=16)

# Script producing Figure 2-2
library(car)
attach(mtcars)
par(bg="snow",fg="snow",col.axis="black",bty="l")
mtcars$wt2 = 1000*wt
attach(mtcars)
scatterplot(mpg~wt2|cyl,
  smoother=FALSE,
  reg.line=FALSE,
  col=c("indianred4","blue","purple"),
  pch=c(15,16,17),
  main="Fuel Consumption in Selected Cars",
  ylab="Miles per Gallon",
  xlab="Weight of Car in Pounds",las=1,
  legend.plot=FALSE,bty="l")
axis(2,col="black",at=c(10,15,20,25,30,35),las=2)
axis(1,col="black",at=c(1000,2000,3000,4000,5000,6000))
legend("topright",
  title="No. of Cylinders",
  c("4","6","8"),
  inset=-.005,
  text.col=c("indianred4",
  "blue","purple"),
  title.col="black",
  cex =.65,
  pch=c(15,16,17),
  col=c("indianred4","blue","purple"),
  bty="n")
detach(mtcars)

# Figure 2-3
library(lattice)
library(epiDisplay)
data(BP)
attach(BP)
xyplot(sbp~dbp|saltadd*sex,pch=16)
detach(BP)

# Figure 2-4
library(ggplot2)
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point()
