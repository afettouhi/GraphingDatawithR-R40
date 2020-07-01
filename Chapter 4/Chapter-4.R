attach(USArrests)
head(USArrests) #shows first 6 rows, can get all with: USArrests

dotchart(Murder)

# Figure 4-2
dotchart(Murder, labels = row.names(USArrests), cex = .5)

data2 = USArrests[order(USArrests$Murder),]

dotchart(data2$Murder, labels = row.names(data2),
    cex = .5, main = "Murder arrests by state, 1973",
    xlab = "Murder arrests per 100,000 population")

demo(colors)

colors()

dotchart(data2$Murder, labels = row.names(data2),
    cex = .6, main = "Murder arrests by state, 1973",
    xlab = "Murder arrests per 100,000 population",
    pch = 19, col = c("darkblue","dodgerblue"),
    lcolor = "gray90",
    cex.main = 2, cex.lab = 1.5)
