load("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/Nimrod.rda") # .rda shows it was saved as an R data frame
dotchart(Nimrod$Time)

dotchart(Nimrod$Time, labels = Nimrod$performer, cex = .5)

Nimrod2 = Nimrod[order(Nimrod$Time),]
dotchart(Nimrod2$Time, labels = Nimrod2$Performer, cex = .5)
