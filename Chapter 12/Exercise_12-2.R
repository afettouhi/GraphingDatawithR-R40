library(Sleuth2)
library(epade)
attach(case0701)
plot(Velocity, Distance)

scatter.ade(Velocity, Distance, wall = 3,
  main = "The Big Bang", col="red")
