library(car)
attach(Vocab)
head(Vocab)

# Figure 13-1
library(car)
attach(Vocab)
plot(education, vocabulary)
detach(Vocab)

# Figure 13-2
library(car)
attach(Vocab)
sp(education, vocabulary, jitter = list(x = 2, y = 2),
   smoother = F, spread = F, reg.line = F)

# Figure 13-3
library(car)
attach(Vocab)
sunflowerplot(education, vocabulary,
   main = "Sunflower Plot",
   col.main = "deepskyblue3",
   family = "HersheySerif",
   font.lab = 3)   # x and y labels are in italic
detach(Vocab)

# Figure 13-4
library(car)
attach(Vocab)
smoothScatter(education, vocabulary,
  las = 1,
  family = "HersheyGothicGerman",
  main = "Smooth Scatter Plot", font=3)
# las = 1 rotates numbers on y-axis
detach(Vocab)

# Figure 13-5 - hexbinning
install.packages("hexbin", dependencies = T)
library(car)
library(hexbin)
plot(hexbin(Vocab$education, Vocab$vocabulary, xbins = 10),
  xlab = "Education", ylab = "Vocabulary", colramp = BTC)