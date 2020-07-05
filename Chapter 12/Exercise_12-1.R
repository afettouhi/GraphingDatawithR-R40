load("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/emiss.rda")

Year = 2004:2010
Europe = c(7.9, 7.9, 7.9, 7.8, 7.7, 7.1, 7.2)
Eurasia = c(8.5, 8.5, 8.7, 8.6, 8.9, 8, 8.4)

plot(Year, Europe, type = "l",
  col = "maroon", ylim = c(7,9),
  ylab = "Emissions", lwd = 2)
# ylim makes graph big enough for Eurasia with values > 7.9

lines(Year, Eurasia,
  lty = "dashed",
  col = "steelblue", lwd = 2)
legend("topleft", c("Eurasia", "Europe"),
  text.col = c("steelblue","maroon"),
  lty = c("dashed","solid"))
