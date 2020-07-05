load("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/Nimrod.rda")
den = density(Nimrod$Time)
plot(den)
rug(Nimrod$Time)

library(nlme)
boxplot(MathAchieve$SES,main="Socioeconomic Status", ylab="SES 
  score")
rug(MathAchieve$SES)
