load("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/Nimrod.rda")

attach(Nimrod)
par(bg = "white", mfrow = c(2,2))

# graph 1
x = table(Medium)
barplot(x, horiz = T,
  main = "Number of ensembles of each medium",
  names = c("Brass band", "Concert band", "Organ","Orchestra"),
  las = 1, cex.names = .8, col = "turquoise", space = 1.5)

# graph 2
cols = "cadetblue4"
boxplot(Time ~ Medium,
  col = c("goldenrod","firebrick"),
  ylab = "Time",  xlab = "Medium",
  varwidth = T,
  main = "Performance times by medium",
  col.main = cols,
  col.axis = cols,
  las = 1, col.lab = cols,
  names = c("","","",""))
mtext(text = c("Brass band", "Concert band",
  "Organ", "Orchestra"),
  side = 1, cex = .6,
  at = c(1,2,3,4), line = 1)

# graph 3
pro = subset(Nimrod, Level == "p")
am = subset(Nimrod, Level == "a")
plot(density(pro$Time), ylim = c(0,.028),
  main = "Professional vs. amateur groups",
  xlab = "Time in seconds",
  col = "navy", lwd = 2,
  bty = "n", xlim = c(100,350),
  family = "HersheyScript",
  cex.main = 1.4, cex.lab = 1.3)
lines(density(am$Time), lty = "dotted",
  col = "lightblue4", lwd = 2)
legend("topright", c("Amateur","Professional"),
  cex = .8, text.col = c("lightblue4","navy"),
  bty = "n")

# graph 4
data2 = Nimrod[order(Nimrod$Time),]
dotchart(data2$Time,
  labels = data2$Performer, cex = .34,
  main = "Performance Time by Performer",
  xlab = "Performance time", pch = 19,
  col = c("violetred1", "violetred4"),
  lcolor = "gray90",
  cex.main = 1.9, col.main = "violetred4",
  cex.lab = 1.4,
  family = "HersheySerif")
detach(Nimrod)
