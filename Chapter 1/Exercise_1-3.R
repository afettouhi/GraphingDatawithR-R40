Nimrod <- read.csv("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/Nimrod.Tempo.csv",header=TRUE)

install.packages("XLConnect")
library(XLConnect)
Nimrod2 <-readWorksheetFromFile("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/Nimrod.xls",
  sheet = 1, header = TRUE)

Nimrod <-read.table("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/Nimrod.Tempo.txt", sep = "",
  header=TRUE)

Nimrod # types out complete dataset

head(Nimrod) # types out first 6 rows

fix(Nimrod)  # opens Nimrod data in editor

mean(Nimrod$time)

table(Nimrod$medium)

summary(Nimrod)

save(Nimrod,file="/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/Nimrod.rda")

load("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/Nimrod.rda")
