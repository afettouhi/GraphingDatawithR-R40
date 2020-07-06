library(nlme)
attach(MathAchieve)
plot(SES, MathAch)

library(nlme)
attach(MathAchieve)
sunflowerplot(SES, MathAch)

library(nlme)
attach(MathAchieve)
library(hexbin)
plot(hexbin(SES, MathAch), colramp = heat.ob)

detach(MathAchieve)
