install.packages("aplpack", dependencies = T)
library(aplpack)
attach(trees)
stem.leaf.backback(Height, Volume)
detach(trees)

library(car)
attach(Baumann)
stem.leaf.backback(pretest.1, post.test.1)
