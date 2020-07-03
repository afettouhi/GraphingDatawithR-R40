library(multcomp)
eq2 = density(sbp$sbp, bw = 4) # Figure 8-1c
hist(sbp$sbp,
  main="c. Histogram + Kernel Density, bw = 4",
  col = "maroon", las = 1, cex.axis = .8,
  freq = F) #freq=F: prob. densities
lines(eq2,lwd = 2) # Plot density curve on existing histogram

eq2 = density(sbp$sbp, bw = 2) # Figure 8-1-c
hist(sbp$sbp,
  main="c. Histogram + Kernel Density, bw = 2",
  col = "maroon", las = 1, cex.axis = .8,
  freq = F) #freq=F: prob. densities
lines(eq2,lwd = 2) # Plot density curve on existing histogram

eq2 = density(sbp$sbp, bw = 20) # Figure 8-1c
hist(sbp$sbp,
  main="c. Histogram + Kernel Density, bw = 20",
  col = "maroon", las = 1, cex.axis = .8,
  freq = F) #freq=F: prob. densities
lines(eq2,lwd = 2) # Plot density curve on existing histogram
