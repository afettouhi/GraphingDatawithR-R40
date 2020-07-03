library(Hmisc)
library(car)
attach(Burt)
histbackback(IQbio, IQfoster)
detach(Burt)

attach(Salaries)
m = subset(Salaries, sex == "Male") # contains only male data
f = subset(Salaries, sex == "Female") # contains female data
histbackback(m$salary, f$salary)
detach(Salaries)
