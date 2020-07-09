# Figure 18-1
library(car)
attach(States)
plot(dollars,SATM,
 pch = 16,
 col = "maroon")
grid(lty = "solid")

# Figure 18-2
library(car)
attach(States)
coplot(SATM ~ dollars | percent,
 pch = 16,
 col = "royalblue",
 bar.bg = c(num = "goldenrod2"))

# Figure 18-3
library(car)
attach(States)
coplot(SATM ~ dollars | percent,
 pch = 16,
 col = "royalblue",
 bar.bg = c(num = "seagreen"),
 overlap = 0,
 number = 5)

# Figure 18-4
library(car)
attach(States)
mat = matrix(c(0,19.9,20,39.9,40,59.9,60,75),
 byrow = T,
 nrow = 4,
 ncol = 2)
coplot(SATM ~ dollars |percent,
 pch = 16,
 col = "royalblue",
 bar.bg = c(num = "maroon"),
 given.values = mat)
