head(trees)

# 4 short scripts to produce the 4 graphs in Fig. 12-1
attach(trees)
par(mfrow = c(2,2), cex = .7)

# Fig. 12-1a: show just 2 points on the graph
trees2 = trees[1:2,] # trees2 a subset, only 1st 2 trees
                     # see sidebar
plot(trees2$Height, trees2$Girth,
  xlim = c(63,80),
  ylim = c(7.8,10),
  xlab = "Height",
  ylab = "Girth",
  main = "a. First two trees")

# text() allows annotation on the graph
text(72,8.1,labels = "(Height = 70, Girth = 8.3)",
  xlim = c(61,80),
  ylim = c(8,22))
text(65,8.8, labels = "(65, 8.6)",
  xlim = c(62,89),
  ylim = c(8,22))

# Fig. 12-1b: note that a basic plot requires very little coding!
plot(Height, Girth, main = "b. All trees")

# Fig. 12-1c /  see Table 3-1 for plot characters
plot(Height, Girth,
  main = "c. Change plot character, add grid",
  pch = 20,
  col = "deepskyblue")
grid(col = "gray70")

# Fig. 12-1d # abline puts linear regression line on plot
plot(Height, Girth,
  main = "d. Add regression line", pch = 20,
  col = "deepskyblue")
abline(lm(Girth ~ Height),
  col = "dodgerblue4",
  lty = 1,
  lwd = 2) # writes over last plot
grid(col = "gray70")
detach(trees)

attach(trees)
lm(Girth ~ Height)
summary(lm(Girth ~ Height))

trees[3,2]

newrow = trees[3,2]
newrow

trees[3,]   # trees[-3,] for everything *but* the 3rd row

trees[4:6, 2:3]

trees[,c("Girth","Volume")] #trees[,c(1,3)] does same thing

mysubset = na.omit(airquality)

subset(trees, Height > 70) # only trees with Height > 70

detach(trees)

# if not already done, must install HistData or the
# following won't work
# install.packages("HistData", dep = T)
library(HistData)
attach(Nightingale)
head(Nightingale) # head() prints out the 1st 6 rows

# Figure 12-2 - 4 graphs
par(mfrow = c(2,2)) # put 4 graphs on one page
library(HistData)
attach(Nightingale)

# Figure 12-2a
plot(Date, Disease,
  type = "b",
  pch = 20,
  lty = "solid",
  main = "a. Line chart of Disease")

# Figure 12-2b
plot(Date,Disease,
  type = "l",
  lty = "solid",
  main = "b. Line chart, Disease, Wounds, Other")
lines(Date,Wounds,
  lty = "dashed",
  col = "red",
  lwd = 2)
lines(Date, Other,
  lty = "dotted",
  col = "navyblue",
  lwd = 2)

# Figure 12-2c
plot(Date, Disease,
  type = "h",
  lty = "solid",
  lwd = 20,
  main = "c. Change Disease to histogram",col="gray67",
    lend="butt")
lines(Date,Wounds,
  lty = "solid",
  col = "red",
  lwd = 2)
lines(Date, Other,
  lty = "dotted",
  col = "navyblue",
  lwd = 2)

# Figure 12-2d
plot(Date, Disease,
  type = "h",
  lty = "solid",
  lwd = 20,
  main = "d. Add legend, remove box",col="gray67",
  lend ="butt",bty="l")
lines(Date, Wounds,
  lty = "solid",
  col = "red",
  lwd = 2)
lines(Date, Other,
  lty = "dotted",
  col = "navyblue",
  lwd = 2)
legend("topleft",
  c("Death from Disease","Death from Wounds","Other Deaths"),
  text.col = c("gray40", "red", "navyblue"),
  bty = "n",
  cex = .5)
detach(Nightingale)

# Script for Figure 12-3
# if not already done, must:
# install.packages("HistData", dep = T)
library(HistData)
attach(Nightingale)
par(mar = c(6,6,5,5), cex = .8) # control size of plot window

Army2 = (Army)/20   # reduce size of Army so it fits on plot
t = "British Army Deaths, Crimean War" # make plot stmt shorter
x = "Date, by Month, from April, 1854 to March, 1856"
y = "Number of Deaths per Month"
mon = 1:24   # create new var, easier to work with than Date

plot(mon, Disease,
  type = "h",
  lwd = 22,
  col = "gray67",
  lend = "butt",
  main = t,
  col.main = "maroon",
  ylab = y,
  xlab = x,
  cex.lab = .8,
  las = 1,
  cex.axis = .9,
  bty = "l",
  xaxt = "n")

#xaxt = "n" suppresses x-axis labels; use axis() for custom axis

lines(mon,Wounds,
  pch = 18,
  col = "red",
  lty = "solid",
  lwd = 2)
lines(mon, Other,
  lty = "dotted",
  col = "navyblue",
  lwd = 3)
lines(mon, Army2,
  lty = "dashed",
  col = "seagreen4",
  lwd = 2)

# horizontal axis
axis(1, at = c(2,6,10,14,18,22),
  labels = c("May 54","Sep 54","Jan 55","May 55","Sep 55",
    "Jan 56"))
# right axis
axis(4, at = c(0,500,1000,1500,2000,2500),
  labels = c("0", "10K","20K","30K","40K","50K"),
  las = 1,
  tick = T,
  cex.lab = .6,
  col = "seagreen4",
  col.axis = "seagreen4",
  ylab = "Troop Strength")

legend("topleft", c("Death from Disease","Death from Wounds",
  "Other Deaths","Troop Strength"),
  text.col = c("gray40","red","navyblue","seagreen4"),
  bty = "n",
  cex = .8)

detach(Nightingale)

# use a template to produce Fig. 12-4
# if not already done, must:
# install.packages("latticeExtra", dependencies = T)
library(latticeExtra)
attach(trees)
asTheEconomist(xyplot(Girth ~ Height), xlab = "Height",
  type = "p", with.bg = T)
detach(trees)

# Figure 12-5
install.packages("epade") # if not already installed
library(epade)
attach(trees)
par(mfrow = c(2,3))
scatter.ade(Height, Girth, wall = 1, main = "wall = 1")
scatter.ade(Height, Girth, wall = 2, main = "wall = 2")
scatter.ade(Height, Girth, wall = 3, main = "wall = 3")
scatter.ade(Height, Girth, wall = 4, main = "wall = 4")
scatter.ade(Height, Girth, wall = 5, main = "wall = 5")
scatter.ade(Height, Girth, wall = 6, main = "wall = 6")
detach(trees)

# Figure 12-6
library(car)
attach(trees)
sp(Height, Girth)  # note the abbreviation "sp"
detach(trees)

# Figure 12-7
library(epade)
attach(Puromycin)
scatter.ade(conc, rate, group=state,
  col = c("royalblue3", "sienna1"),
  legendon = "topleft", wall = 6,
  main = "Puromycin dataset")
detach(Puromycin)

# Figure 12-8
library(lattice)
attach(Puromycin)
xyplot(rate ~ conc | state)
detach(Puromycin)
