library(car)
attach(Ginzberg)
head(Ginzberg)
pairs(~ simplicity + fatalism + depression)

scatterplotMatrix(~ simplicity + fatalism + depression)

library(corrplot)
corrplot(y)

library(GGally)
ggscatmat(Ginzberg, columns = 1:3)
