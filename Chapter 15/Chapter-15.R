library(reshape2)
attach(tips)
head(tips)

# Figure 15-1a
library(reshape2)
attach(tips)
par(mfrow = c(3,2))
plot(density(tip),
  main = "a. Density(tip)",
  col = "blue",
  lwd = 2)

# Figure 15-1b
ran = rnorm(1000000)  # a million random obs from a normal dist.
plot(density(ran),
  main = "b. Density(tip) vs. Normal Distribution",
  xlim = c(-4,10))
polygon(density(ran), col = "burlywood")
lines(density(tip),
  col = "blue",
  lwd = 2)

mean(tip)

sd(tip)

newtip = (tip-2.998)/1.384 # transform tip to have
# mean = 0 and sd = 1

# Figure 15-1c
newtip = (tip-2.998)/1.384 # transform tip to have
# mean=0 and sd=1
plot(density(ran),
  ylim = c(0,.48),
  main = "c. Density(newtip) vs. Normal Distribution",
  xlim = c(-4,8))
polygon(density(ran),
  col = "burlywood")
lines(density(newtip),
  col = "blue",
  lwd = 2)

summary(tip)

qtip = quantile(tip, seq(0,1,.1))
qtip

# Figure 15-1d
qtip2 = quantile(tip, seq(0,1,.005))
qqplot(ran, qtip2,
  main = "d. QQ plot(qtip2)",
  xlim = c(-3,3),
  col = "skyblue2")
qqline(qtip2,
  col = "burlywood",
  lwd = 2)
grid(lty = "dotted",
  col = "gray75")
# required calculation of ran and qtip2 first

# Figure 15-1e
qqnorm(tip,
  main = "e. Easier way to get QQ plot",
  col = "blue",
  ylab = "tip quantiles")
qqline(tip,
  col = "burlywood",
  lwd = 2)
grid(lty = "dotted",
  col = "gray75")

# Figure 15-1f
logtip = log10(tip)
qqnorm(logtip,
  main = "f. QQ plot of log10(tip)",
  col = "blue4")
qqline(logtip,
  col = "burlywood3",
  lwd = 2)

# Figure 15-2,left
library(lattice)
qq(sex ~ tip,
  main = "Tips given by men and women")

summary(tip[sex == "Male"])  # subset containing only males

summary(tip[sex == "Female"]) # subset containing only females

# Figure 15-2, right
tips$ratio = 100*(tip/total_bill)
qq(sex ~ tips$ratio,
  main = "Tips as percent of total bill, for men and women")
