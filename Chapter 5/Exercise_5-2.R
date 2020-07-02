par(mfrow = c(1,2)) # show 2 graphs side-by-side
attach(mtcars)
boxplot(mpg ~ cyl)
library(plotrix)
ehplot(mpg, cyl)
detach(mtcars)
par(mfrow=c(1,1)) # reset to one graph/page
