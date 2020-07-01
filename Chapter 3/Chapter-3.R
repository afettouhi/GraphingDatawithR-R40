?trees

attach(trees)
Volume

stripchart(Volume)

stripchart(Volume, method = "jitter")

?stripchart

stripchart(Volume, method = "jitter", pch = 20,
  xlab = "Volume in cubic feet")

?points

pch = "."

?par

par(bty = "n")  # Figure 3-5
stripchart(Volume, method = "jitter", pch = 20,
  xlab = "Volume in cubic feet")

# Figure 3-6
par(bty = "n")
stripchart(Volume,
  method = "jitter", jitter = .3,
  pch = 20,
  xlab = "Volume in cubic feet",
  col = "dodgerblue4",
  ylim = c(0,8),
  xlim = c(10,80)) # xlim forces x between 10 & 80
  # and ylim closer to x-axis

demo(colors)

axis(1, col = "dodgerblue4", at = c(10,20,30,40,50,60,70,80))

mtext("Data source: Minitab Student Handbook",
side = 1, line = 4, adj = 1, col = "dodgerblue4", cex = .7)

detach(trees)
