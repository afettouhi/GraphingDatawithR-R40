install.packages("plotrix", dependencies=TRUE)
library(plotrix)
attach(trees)
dotplot.mtb(Volume)

dotplot.mtb(Volume, pch = 20) # or
dotplot.mtb(Volume, pch = ".") # too small!
dotplot.mtb(Volume, pch = "/")  # Hmm...
detach(trees)
