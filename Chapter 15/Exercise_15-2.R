library(reshape2)
library(car)
attach(Vocab)
qqnorm(vocabulary)
qqline(vocabulary)

qqnorm(education)
qqline(education)

qq(sex ~ vocabulary)
