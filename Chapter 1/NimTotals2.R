# a user-written function, called "update"
update <- function (fn){
library(gmodels)
library (XLConnect)
Nimrod2<-readWorksheetFromFile(fn,sheet=1,header=TRUE)
attach(Nimrod2)
CrossTable(medium,level,
  prop.r=FALSE,
  prop.c=FALSE,
  prop.t=FALSE,
  prop.chisq=FALSE)
 # print table with counts in each cell, but no percents
perf_time = summary(time)  # save summary output
title  = "Summary of performance times:"
cat(title,"\n", "\n")   # print title and 2 linefeeds
print(perf_time)
detach(Nimrod2)
}

update("myfile.xls")  # filename in quotes because myfile.xls
                        # is the value of a character variable
