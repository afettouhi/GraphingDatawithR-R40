# a user-written function, called "update"
update <- function (fn){
library(gmodels)
library (XLConnect)
Nimrod2<-readWorksheetFromFile(fn,sheet=1,header=TRUE)
attach(Nimrod2)
CrossTable(Medium,Level,
  prop.r=FALSE,
  prop.c=FALSE,
  prop.t=FALSE,
  prop.chisq=FALSE)
 # print table with counts in each cell, but no percents
perf_time = summary(Time)  # save summary output
title  = "Summary of performance times:"
cat(title,"\n", "\n")   # print title and 2 linefeeds
print(perf_time)
detach(Nimrod2)
}

update("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/myfile.xls")  # filename in quotes because myfile.xls
                        # is the value of a character variable
