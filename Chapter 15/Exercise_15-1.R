library(reshape2)
library(car)
attach(tips)
tips$ratio = 100*(tip/total_bill)
attach(tips)
qqnorm(ratio)
qqline(ratio)

qq(time ~ ratio)

qq(smoker ~ ratio)
