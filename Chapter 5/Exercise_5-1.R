# print results to screen
library(nlme)
attach(MathAchieve)
boxplot(SES ~ Minority * Sex)

# graph to file
pdf("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/SES.pdf") # opens a device
library(nlme)
attach(MathAchieve)
boxplot(SES ~ Minority * Sex)
dev.off() # closes and saves file

