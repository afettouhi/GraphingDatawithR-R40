library(Sleuth2)
attach(case0302)
par(mfrow = c(2,2)) # show 4 graphs on one page
hist(Dioxin)
hist(Dioxin, breaks = 20)
hist(Dioxin, breaks = 30)
hist(Dioxin, breaks = 40)
par(mfrow = c(1,1)) # reset to one graph/page
