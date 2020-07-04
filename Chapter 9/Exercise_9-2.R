library(car)
attach(Salaries)
library(epiDisplay)
salK=salary/10000
pyramid(salK,sex, binwidth = 1,
  col = "seagreen",
  main = "Salaries in 10,000s of Dollars",
  cex.bar.value =.4, cex.axis = .8)
