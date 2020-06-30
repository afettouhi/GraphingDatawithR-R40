mydata = read.csv("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/simple1.csv",header=TRUE)
mydata

mydata= read.csv("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/simple1.csv",header=TRUE,nrows=4)
mydata

mydata

mydata= read.csv("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/simple1a.csv",header=TRUE,skip=1, nrows=4)
mydata

mydata$X = NULL
mydata

newdata = read.table("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/simple2.txt",sep="",header=TRUE)
newdata
