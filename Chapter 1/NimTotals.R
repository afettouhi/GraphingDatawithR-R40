installed.packages()

install.packages("gmodels")
install.packages("XLConnect")


# The following group of commands is a script
library(gmodels)  # required to use the CrossTable command
library(XLConnect) # must have installed XLConnect
Nimrod2 <- readWorksheetFromFile("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/Nimrod.xls",sheet=1,
  header=TRUE)
attach(Nimrod2)
CrossTable(Medium,Level,
  prop.r=FALSE,
  prop.c=FALSE,
  prop.t=FALSE,
  prop.chisq=FALSE)
# above command prints table with counts in each cell,
# but no percents
perf_time <- summary(Time)     # save summary output
title = "Summary of performance times:"
cat(title,"\n", "\n")          # print title and 2 linefeeds
print(perf_time)               # print results of summary(time)
detach(Nimrod2)

